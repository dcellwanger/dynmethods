set.seed(1)
data <- dyntoy::generate_dataset(
  unique_id = "scoup_example",
  num_cells = 49,
  num_features = 51,
  model = "tree"
)