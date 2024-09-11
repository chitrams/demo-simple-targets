penguin_table <- function(data, ..., groupvar) {
  
  # A function to make a gtsummary style table
  
  vars <- quos(...)
  
  data %>% 
    select(!!!vars) %>% 
    tbl_summary(by = groupvar)
}

fit_model <- function(data, xvar, yvar) {
  lm(yvar ~ xvar, data) %>% 
    coefficients()
}

plot_model <- function(model, data, xvar, yvar) {
  ggplot(data) +
    geom_point(aes(x = xvar, y = yvar)) +
    geom_abline(intercept = model[1], slope = model[2])
}