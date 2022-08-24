# count operator

##### Description

The `count` operator counts the number of data points present in each cell of the input projection.

##### Usage

Input projection|.
---|---
`y-axis`                 | observations to be counted per cell
`row, column (optional)` | stratifying factors

Output relations|.
---|---
`count`          | numeric, count of the input values

##### Details

The operator takes all the values of a cell and counts them. There is one value calculated and returned for each of the input cells.

##### See Also

[proportion](https://github.com/tercen/proportion_operator)
