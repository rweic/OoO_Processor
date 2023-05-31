OpenRAM SAPR Flow Test with FreePDK45
=====================================

## Setup

Clone repo then fetch submodules

```
git submodule update --init --recursive
```

Source `setenv.csh` or point `ADK_PATH` environmental variable to
`freepdk-45nm`'s fullpath.

Clone `nangate_2000` branch of FreePDK45 with Nangate standard cells:
```
git clone -b nangate_2000 git@bitbucket.org:ececadtauw/freepdk45_opencelllibrarypdk45.git
```

Set `PDK_DIR` environmental variable to FreePDK45 directory:
```
# csh/tcsh
setenv PDK_DIR $PWD/freepdk45_opencelllibrarypdk45/FreePDK45
# bash
export PDK_DIR=$PWD/freepdk45_opencelllibrarypdk45/FreePDK45
```

Source `openram_source_me.csh`.

### HYAK VLSI Tools Prep

Add the following to ~/.cshrc:

```
source /gscratch/ece/cshrc/source_me.cshrc
```

Then enter tcsh to access tools.

### ECE Linux Lab Tools Prep

Add the following to ~/.cshrc:

```
setenv EDA_TOOLS_PATH /home/lab.apps/vlsiapps_new
source /home/lab.apps/vlsiapps_new/cshrc/general.cshrc
```

Then enter tcsh to access tools.

### Generating OpenRAM block

Build and install OpenRAM compiler:

```
cd OpenRAM

# Install and activate conda
./install_conda.sh
# csh/tcsh
source miniconda/etc/profile.d/conda.csh
# bash
source miniconda/bin/activate

# Build and install library
make library
```

Generate OpenRAM block with `freepdk45_2_16.py` config script:

```
cd ../macro_prep
python3 $OPENRAM_HOME/../sram_compiler.py freepdk45_2_16
```

Convert liberty file (.lib) to Synopsys database file (.db):

```
# pwd: macro_prep
make convert_lib
```

Create Milkyway reference library with frame (FRAM) view:

```
# pwd: macro_prep
make create_fram
```

## Synthesis with Design Compiler

```
cd sapr/syn
dc_shell -f syn.tcl
```

### Post-Synthesis Simulation

```
cd sim/postsyn
# simulate
make vcs

# Verdi waveform viewer
make verdi
# GTKWave waveform viewer
gtkwave ram_test.vcd
```

## Automated Place and Route (APR) with ICC

```
cd sapr/apr
icc_shell -shared_license -f apr.tcl
```

### Post-APR Simulation

```
cd sim/postapr
# simulate
make vcs

# Verdi waveform viewer
make verdi
# GTKWave waveform viewer
gtkwave ram_test.vcd
```

## Importing Post-APR layout to Virtuoso

### Setup

Setup cadence directory:
```
cd cadence
$PDK_DIR/ncsu_basekit/cdssetup/setup.csh
# ensure cds.lib is writable
chmod u+w cds.lib
```

Launch virtuoso from cadence directory:
```
virtuoso &
```

### Importing `sram_2_16_freepdk45.gds` as layout

Navigate to CIW->File->Import->Stream

In the window titled `XStream In`, fill the following forms:

- Stream File: Browse and locate `macro_prep/sram_2_16_freepdk45/sram_2_16_freepdk45.gds`
- Library: `ram_test_sapr`
- Top Cell: `sram_2_16_freepdk45`
- View: `layout`
- Attach Tech Library: `NangateOpenCellLibrary`
- Layer Map -> File Name: `NCSU_TechLib_FreePDK45.layermap`

Press Translate at the bottom to import layout.

### Importing `sram_2_16_freepdk45.sp` as schematic

Before importing, we will need to process the SPICE file for import.

```
# Replace vdd with VDD!
sed -E -i "s/vdd/VDD!/g" macro_prep/sram_2_16_freepdk45/sram_2_16_freepdk45.sp
# Replace gnd with VSS!
sed -E -i "s/gnd/VSS!/g" macro_prep/sram_2_16_freepdk45/sram_2_16_freepdk45.sp
# Replace nmos_vtg with NMOS_VTG (to bind with models in NCSU_Devices_FreePDK45)
sed -E -i "s/nmos_vtg/NMOS_VTG/g" macro_prep/sram_2_16_freepdk45/sram_2_16_freepdk45.sp
# Replace pmos_vtg with PMOS_VTG (to bind with models in NCSU_Devices_FreePDK45)
sed -E -i "s/pmos_vtg/PMOS_VTG/g" macro_prep/sram_2_16_freepdk45/sram_2_16_freepdk45.sp
# Replace array indexing bracket from [] to <>
sed -E -i "s/\[([0-9]+)\]/<\1>/g" macro_prep/sram_2_16_freepdk45/sram_2_16_freepdk45.sp
```

Navigate to CIW->File->Import->SPICE

In the window titled `Virtuoso Spice In`, fill the following forms:

- Input tab:
    - Netlist File: Browse and locate `macro_prep/sram_2_16_freepdk45/sram_2_16_freepdk45.sp`
    - Netlist Language: select `SPICE`
    - Reference Library List: `NCSU_Devices_FreePDK45`
- Output tab:
    - Output Library: `ram_test_sapr`
    - Output View Type: select `schematic`
    - output VIew Name: `schematic`

Press OK at the bottom to import schematic views.

### Importing `sram_2_16_freepdk45.v` as functional

Navigate to CIW->File->Import->Verilog

In the window titled `Verilog in`, fill the following forms:

- Import Options tab:
    - Verilog Files to Import: Browse and locate `macro_prep/sram_2_16_freepdk45/sram_2_16_freepdk45.v`
    - Target Library Name: `ram_test_sapr`
    - Reference Libraries: clear all entries
- Global Net Options tab:
    - Power Net Name: `VDD!`
    - Ground Net Name: `VSS!`

Press OK at the bottom to import functional view (with symbol).

### Importing `ram_test.def` as layout

Navigate to CIW->File->Import->DEF

In the window titled `DEF In`, fill the following forms:

- DEFIn File Name: Browse and locate `sapr/apr/results/ram_test.def`
- Target Library Name: `ram_test_sapr`
- Ref. Technology Libraries: `NangateOpenCellLibrary`
- New Library: checked if library does not exist
- Target Cell Name: `ram_test`
- Target View Name: `layout`

Press OK at the bottom to import abstract layout. Safely ignore "ROW STD_ROW_*"
errors.

Load and run `postProcessAbstract` script in CIW to update abstract view to
proper layout view:
```
load("postProcessAbstract.il")
postProcessAbstract("ram_test_sapr" "ram_test")
```

Add VDD! and VSS! labels to the power rings in the layout editor.

### Importing `ram_test.apr_no_phys_pwr.v` as schematic

Navigate to CIW->File->Import->Verilog

In the window titled `Verilog in`, fill the following forms:

- Import Options tab:
    - Verilog Files to Import: Browse and locate `sapr/apr/results.ram_test.apr_no_phys_pwr.v`
        - Ensure no other verilog files are passed.
    - Target Library Name: `ram_test_sapr`
    - Reference Libraries: `NangateOpenCellLibrary`
- Global Net Options tab:
    - Power Net Name: `VDD!`
    - Ground Net Name: `VSS!`

Press OK at the bottom to import schematic view. (If instead a functional view
appears, then the import failed.)

## DRC validation with Calibre

Open the layout and navigate to Calibre -> Run nmDRC.

Cancel load runset prompt.

Fill the following forms:

- Rules tab:
    - DRC Rules File: Browse and locate `freepdk-45nm/calibre-drc-block.rule`
    - Optionally set run directory

Run DRC and check for errors.

## LVS validation with Calibre

Open the layout and navigate to Calibre -> Run nmLVS.

Cancel load runset prompt.

Navigate to Setup -> LVS Options and ensure it is checked.

Fill the following forms:

- Rules tab:
    - LVS Rules File: Browse and locate `freepdk-45nm/calibre-lvs.rule`
    - Optionally set run directory
- Inputs tab:
    - Netlist tab:
        - Check `Export from schematic viewer`.
- LVS Options tab:
    - Power tab:
        - Power nets: `VDD!`
        - Ground nets: `VSS!`

Run LVS and check for errors.
