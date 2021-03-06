######################################### DO NOT EDIT! #########################################
#### This file is automatically generated from data-raw/2-generate_r_code_from_containers.R ####
################################################################################################

#' @title Inferring a trajectory inference using GrandPrix
#' 
#' @description
#' Will generate a trajectory using [GrandPrix](https://doi.org/10.1101/227843).
#' 
#' This method was wrapped inside a
#' [container](https://github.com/dynverse/dynmethods/tree/master/containers/grandprix).
#' The original code of this method is available
#' [here](https://github.com/ManchesterBioinference/GrandPrix).
#' 
#' @references Ahmed, S., Rattray, M., Boukouvalas, A., 2017. GrandPrix: Scaling
#' up the Bayesian GPLVM for single-cell data.
#' 
#' @param n_latent_dims integer; (default: `2L`; range: from `1L` to `10L`)
#' @param n_inducing_points integer; (default: `40L`; range: from `10L` to `500L`)
#' @param latent_prior_var numeric; (default: `0.1`; range: from `NULL` to `NULL`)
#' @param latent_var numeric; (default: `0.028`; range: from `NULL` to `NULL`)
#' @inheritParams dynwrap::create_container_ti_method
#' 
#' @return A TI method wrapper to be used together with
#' \code{\link[dynwrap:infer_trajectories]{infer_trajectory}}
#' @export
ti_grandprix <- function(
    n_latent_dims = 2L,
    n_inducing_points = 40L,
    latent_prior_var = 0.1,
    latent_var = 0.028,
    run_environment = NULL
) {
  create_container_ti_method(
    docker_repository = "dynverse/grandprix",
    run_environment = run_environment,
    n_latent_dims = n_latent_dims,
    n_inducing_points = n_inducing_points,
    latent_prior_var = latent_prior_var,
    latent_var = latent_var
  )
}

