######################################### DO NOT EDIT! #########################################
#### This file is automatically generated from data-raw/2-generate_r_code_from_containers.R ####
################################################################################################

#' @title Inferring a trajectory inference using Projected GNG
#' 
#' @description
#' Will generate a trajectory using [Projected
#' GNG](https://github.com/rcannood/gng).
#' 
#' This method was wrapped inside a
#' [container](https://github.com/dynverse/dynmethods/tree/master/containers/projected_gng).
#' The original code of this method is available
#' [here](https://github.com/rcannood/gng).
#' 
#' 
#' 
#' @param dimred discrete; Which dimensionality reduction method to use. (default:
#' `"pca"`; values: {`"pca"`, `"mds"`, `"tsne"`, `"ica"`, `"lle"`,
#' `"landmark_mds"`, `"mds_sammon"`, `"mds_isomds"`, `"mds_smacof"`, `"umap"`,
#' `"dm_diffusionMap"`})
#' @param ndim integer; The number of dimensions (default: `5L`; range: from `2L`
#' to `10L`)
#' @param max_iter numeric; The max number of iterations (default: `15000`; range:
#' from `25` to `1e+06`)
#' @param max_nodes integer; The maximum number of nodes (default: `8L`; range:
#' from `2L` to `30L`)
#' @param apply_mst logical; If true, an MST post-processing of the GNG is
#' performed.
#' @inheritParams dynwrap::create_container_ti_method
#' 
#' @return A TI method wrapper to be used together with
#' \code{\link[dynwrap:infer_trajectories]{infer_trajectory}}
#' @export
ti_projected_gng <- function(
    dimred = "pca",
    ndim = 5L,
    max_iter = 15000,
    max_nodes = 8L,
    apply_mst = TRUE,
    run_environment = NULL
) {
  create_container_ti_method(
    docker_repository = "dynverse/projected_gng",
    run_environment = run_environment,
    dimred = dimred,
    ndim = ndim,
    max_iter = max_iter,
    max_nodes = max_nodes,
    apply_mst = apply_mst
  )
}

