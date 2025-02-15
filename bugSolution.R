```R
# Improved code that handles missing columns more robustly.

df <- data.frame(A = 1:3, B = 4:6)
cols_to_select <- c("A", "C", "D")

# Find the intersection of the columns to select and the columns in the data frame.
cols_to_select <- intersect(cols_to_select, names(df))

# Check if any columns were dropped.
if (length(cols_to_select) < length(c("A", "C", "D"))) {
  warning("Some columns were not found in the data frame and were dropped.")
}

# Subset the data frame using the common columns.
subset_df <- df[, cols_to_select]
```