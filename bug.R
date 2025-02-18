```R
# This code attempts to subset a data frame using a character vector that contains names that don't exist in the data frame.

df <- data.frame(A = 1:3, B = 4:6)
cols_to_select <- c("A", "C", "D")
subset_df <- df[, cols_to_select]
```