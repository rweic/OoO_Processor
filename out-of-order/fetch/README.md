UW ECE477 FSM Sample FreePDK45-Nangate Flow
===========================================

## Setup

Clone repo then fetch submodules

```
git submodule update --init --recursive
```

Source `setenv.csh` or point `ADK_PATH` environmental variable to
`freepdk-45nm`'s fullpath.

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
gtkwave fsm.vcd
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
gtkwave fsm.vcd
```

## Importing Post-APR layout to Virtuoso

### Setup

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

### Importing `fsm.def` as layout

Navigate to CIW->File->Import->DEF

In the window titled `DEF In`, fill the following forms:

- DEFIn File Name: Browse and locate `sapr/apr/results/fsm.def`
- Target Library Name: `cad1`
- Ref. Technology Libraries: `NangateOpenCellLibrary`
- New Library: checked if library does not exist
- Target Cell Name: `fsm`
- Target View Name: `layout`

Press OK at the bottom to import abstract layout. Safely ignore "ROW STD_ROW_*"
errors.

Load and run `postProcessAbstract` script in CIW to update abstract view to
proper layout view:
```
load("postProcessAbstract.il")
postProcessAbstract("cad1", "fsm")
```

Add VDD! and VSS! labels to the power rings in the layout editor.

### Importing `fsm.apr_no_phys_pwr.v` as schematic

Note: `fsm.apr.v` is not used since NangateOpenCellLibrary cells in Virtuoso
lack power pin bindings. Additionally, well taps and tie cells lack
verilog/functional bindings entirely.

Navigate to CIW->File->Import->Verilog

In the window titled `Verilog in`, fill the following forms:

- Import Options tab:
    - Verilog Files to Import: Browse and locate `sapr/apr/results.fsm.apr_no_phys_pwr.v`
    - Target Library Name: `cad1`
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
