# A simple `{targets}` workflow


This is a demo of a simple targets workflow using the Palmer Penguins
dataset (Horst, Hill, and Gorman 2020). This workflow supports my blog
post on [how to use a targets
workflow](https://chitra-ms.com/code-collection/2024-04-11-understanding-a-targets-workflow/).

We implement a targets workflow with the following objects:

1.  `file` loads the raw csv data
2.  `data` reads in the csv file
3.  `xvar`, `yvar`, and `groupvar` specifies which variables are of
    interest in the analysis
4.  `table` provides a table of statistical summary for each variable of
    interest
5.  `model` fits a simple linear model
6.  `plot` generates a scatter plot of the data with a line of the model
    running through it.

## Supporting files

Supporting files not usually part of the targets workflow:

- `/scripts/initialise.R` shows you how to set up and how the csv files
  were generated.

- `/scripts/interim.R` shows you …

## References

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-palmerpenguins" class="csl-entry">

Horst, Allison Marie, Alison Presmanes Hill, and Kristen B Gorman. 2020.
*Palmerpenguins: Palmer Archipelago (Antarctica) Penguin Data*.
<https://doi.org/10.5281/zenodo.3960218>.

</div>

</div>
