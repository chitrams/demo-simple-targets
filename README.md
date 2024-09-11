# A simple `{targets}` workflow


This is a demo of a simple targets workflow using the Horst, Hill, and
Gorman (2020) dataset. We implement a targets workflow with the
following objects:

1.  `file` loads the raw csv data
2.  `data` reads in the csv file
3.  `xvar`, `yvar`, and `groupvar` specifies which variables are of
    interest in the analysis
4.  `table` provides a table of statistical summary for each variable of
    interest
5.  `model` fits a simple linear model
6.  `plot` generates a scatter plot of the data with a line of the model
    running through it.

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-palmerpenguins" class="csl-entry">

Horst, Allison Marie, Alison Presmanes Hill, and Kristen B Gorman. 2020.
*Palmerpenguins: Palmer Archipelago (Antarctica) Penguin Data*.
<https://doi.org/10.5281/zenodo.3960218>.

</div>

</div>
