set.seed(1)
data <- dyntoy::generate_dataset(
  id = "specific_example/wanderlust",
  num_cells = 99,
  num_features = 101,
  model = "linear"
)
params <- list()
