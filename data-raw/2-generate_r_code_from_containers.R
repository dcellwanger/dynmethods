library(tidyverse)
library(dynwrap)
library(furrr)

source("data-raw/2a-helper_functions.R")

# here we do some metaprogramming to generate the ti_{method} functions
plan(multiprocess)

# use all the dynmethods containers, but surely containers from other sources could be added as well
containers <- c(
  list.files("containers", pattern = "definition.yml", recursive = TRUE, full.names = TRUE) %>% map_chr(~ yaml::read_yaml(.)$docker_repository)
)

# iterate over the containers and generate R scripts for each of them
future_map(
  containers,
  function(container) {
    definition <- extract_definition_from_docker_image(container)

    file_text <- paste0(
      # header
      "######################################### DO NOT EDIT! #########################################\n",
      "#### This file is automatically generated from data-raw/2-generate_r_code_from_containers.R ####\n",
      "################################################################################################\n",
      "\n",

      # documentation
      generate_documentation_from_definition(definition), "\n",

      # function
      generate_function_from_definition(definition), "\n"
    )

    path <- paste0("R/ti_", definition$id, ".R")

    readr::write_file(file_text, path)

    invisible()
  }
)

# don't forget to regenerate the documentation
devtools::document()