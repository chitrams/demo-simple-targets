# The first step in setting up a targets workflow!
# Load the libraries.

library(targets)
library(tarchetypes)

# Create _targets.R from template.

tar_script()

# For this example: initialise data for us to play with.

library(palmerpenguins)

# Take 99 penguins (33 from each species)
data <- palmerpenguins::penguins %>% 
  group_by(species) %>% 
  slice_sample(n = 33)

write.csv(data, "./data/raw_data_2024-08-24.csv")

# "Updated" data with more data points
data_update <- palmerpenguins::penguins

write.csv(data_update, "./data/raw_data_2024-09-01.csv")
