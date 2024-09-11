penguin_table <- function(data, ..., groupvar) {
  
  # A function to make a gtsummary style table
  
  vars <- quos(...)
  
  data %>% 
    select(!!!vars) %>% 
    tbl_summary(by = groupvar)
}

fit_model <- function(data, xvar, yvar) {
  
  # A function to fit a simple linear model
  
  formula <- reformulate(xvar, response = yvar)
  
  lm(formula, data) %>% 
    coefficients()
}

plot_model <- function(model, data, xvar, yvar, groupvar) {
  
  # A function to make a scatter plot with the model fitted
  
  ggplot(data) +
    geom_point(
      aes_string(
        x = xvar, 
        y = yvar, 
        color = groupvar)
      ) +
    geom_abline(
      intercept = model[1], 
      slope = model[2]
      )
}