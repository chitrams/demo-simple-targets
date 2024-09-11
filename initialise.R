# The first step in setting up a targets workflow!
# Load the libraries.

library(targets)
library(tarchetypes)

# Create _targets.R from template.

tar_script()

# For this example: initialise data for us to play with.
#   The first 100 data points in palmerpenguins' penguins.

library(palmerpenguins)

data <- palmerpenguins::penguins[1:100,]
write.csv(data, "./data/raw_data_2024-08-24.csv")