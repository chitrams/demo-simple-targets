# Set-up ------------------------------

library(targets)
library(tarchetypes)

# Load packages needed for this project
tar_option_set(
  packages = c("tidyverse",
               "purrr",
               "palmerpenguins")
)

# Set up a workspace when our code errors
tar_option_set(workspace_on_error = TRUE)

# Load functions to be used in our project
source("R/functions.R")

# Target objects ------------------------------

summarize_data <- function(dataset) {
  colMeans(dataset)
}

# Set target-specific options such as packages:
# tar_option_set(packages = "utils") # nolint

# End this file with a list of target objects.
list(
  tar_target(data, data.frame(x = sample.int(100), y = sample.int(100))),
  tar_target(data_summary, summarize_data(data)) # Call your custom functions.
)
