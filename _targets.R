# Set-up ------------------------------

library(targets)
library(tarchetypes)

# Load packages needed for this project
tar_option_set(
  packages = c(
    "tidyverse",
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
  
  # Specify variables of interest for subsequent analyses
  
  xvar <- "body_mass_g" |>
    tar_target()
  
  yvar <- "flipper_length_mm" |>
    tar_target()
  
  groupvar <- "species" |>
    tar_target()
  
  # Tabulate, model, and plot
  
  table <- penguin_table(
    data = data,
    xvar, yvar, groupvar,
    bill_length_mm,
    bill_depth_mm,
    groupvar = groupvar
  ) |>
    tar_target()
  
  model <- fit_model(
    data = data,
    xvar = xvar,
    yvar = yvar
  ) |>
    tar_target()
  
  plot <- plot_model(
    model = model,
    data = data,
    xvar = xvar,
    yvar = yvar,
    groupvar = groupvar
  ) |>
    tar_target()
  
})
