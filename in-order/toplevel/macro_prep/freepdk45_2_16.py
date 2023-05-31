# Data word size
word_size = 2
# Number of words in the memory
num_words = 16

# Technology to use in $OPENRAM_TECH
tech_name = "freepdk45"

# You can use the technology nominal corner only
nominal_corner_only = True
# Or you can specify particular corners
# Process corners to characterize
# process_corners = ["SS", "TT", "FF"]
process_corners = ["TT"]
# Voltage corners to characterize
# supply_voltages = [ 3.0, 3.3, 3.5 ]
supply_voltages = [ 1.1 ]
# Temperature corners to characterize
# temperatures = [ 0, 25, 100]
temperatures = [ 25 ]

route_supplies = True

# Output directory for the results
output_path = f"sram_{word_size}_{num_words}_{tech_name}"
# Output file base name
output_name = f"sram_{word_size}_{num_words}_{tech_name}"

# Disable analytical models for full characterization (WARNING: slow!)
# analytical_delay = False
