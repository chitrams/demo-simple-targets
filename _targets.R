# Set-up ------------------------------

library(targets)
library(tarchetypes)

# Load packages needed for this project
tar_option_set(
  packages = c("tidyverse",
               "purrr",
               "palmerpenguins",
               "gtsummary",
               "rlang")
)

# Set up a workspace when our code errors
tar_option_set(workspace_on_error = TRUE)

# Load functions to be used in our project
source("R/functions.R")

# Target objects ------------------------------

tar_assign({
  
  file <- tar_target(
    "./data/raw_data_2024-08-24.csv",
    format = "file")
  
  data <- read_csv(file) |>
    tar_target()
  
  table <- penguin_table(
    data = data,
    island,
    bill_length_mm,
    bill_depth_mm,
    body_mass_g,
    groupvar = "island"
  ) |>
    tar_target()
  
  model <- fit_model(
    data = data,
    xvar = body_mass_g,
    yvar = bill_length_mm
  ) |>
    tar_target()
  
  plot <- plot_model(
    model = model,
    data = data,
    xvar = body_mass_g,
    yvar = bill_length_mm,
    groupvar = "island"
  )
  
})
