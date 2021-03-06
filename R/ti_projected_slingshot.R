######################################### DO NOT EDIT! #########################################
#### This file is automatically generated from data-raw/2-generate_r_code_from_containers.R ####
################################################################################################

#' @title Inferring a trajectory inference using Projected Slingshot
#' 
#' @description
#' Will generate a trajectory using [Projected
#' Slingshot](https://github.com/kstreet13/slingshot).
#' 
#' This method was wrapped inside a
#' [container](https://github.com/dynverse/dynmethods/tree/master/containers/projected_slingshot).
#' The original code of this method is available
#' [here](https://github.com/kstreet13/slingshot).
#' 
#' 
#' 
#' @param shrink numeric; Logical or numeric between 0 and 1, determines whether
#' and how much to shrink branching lineages toward their average prior to the
#' split. (default: `1`; range: from `0` to `1`)
#' @param reweight logical; Logical, whether to allow cells shared between
#' lineages to be reweighted during curve-fitting. If \code{TRUE}, cells shared
#' between lineages will be weighted by: distance to nearest curve / distance to
#' curve.
#' @param reassign logical; Logical, whether to reassign cells to lineages at each
#' iteration. If TRUE, cells will be added to a lineage when their projection
#' distance to the curve is less than the median distance for all cells currently
#' assigned to the lineage. Additionally, shared cells will be removed from a
#' lineage if their projection distance to the curve is above the 90th percentile
#' and their weight along the curve is less than 0.1.
#' @param thresh numeric; Numeric, determines the convergence criterion. Percent
#' change in the total distance from cells to their projections along curves must
#' be less than thresh. Default is 0.001, similar to principal.curve. (default:
#' `0.001`; range: from `1e-05` to `1e+05`)
#' @param maxit integer; Numeric, maximum number of iterations, see
#' principal.curve. (default: `10L`; range: from `0L` to `50L`)
#' @param stretch numeric; Numeric factor by which curves can be extrapolated
#' beyond endpoints. Default is 2, see principal.curve. (default: `2`; range: from
#' `0` to `5`)
#' @param smoother discrete; Choice of scatter plot smoother. Same as
#' principal.curve, but "lowess" option is replaced with "loess" for additional
#' flexibility. (default: `"smooth.spline"`; values: {`"smooth.spline"`,
#' `"loess"`, `"periodic.lowess"`})
#' @param shrink.method discrete; Character denoting how to determine the
#' appropriate amount of shrinkage for a branching lineage. Accepted values are
#' the same as for \code{kernel} in [density()] (default is \code{"cosine"}), as
#' well as \code{"tricube"} and \code{"density"}. See 'Details' for more.
#' (default: `"cosine"`; values: {`"cosine"`, `"tricube"`, `"density"`})
#' @inheritParams dynwrap::create_container_ti_method
#' 
#' @return A TI method wrapper to be used together with
#' \code{\link[dynwrap:infer_trajectories]{infer_trajectory}}
#' @export
ti_projected_slingshot <- function(
    shrink = 1,
    reweight = TRUE,
    reassign = TRUE,
    thresh = 0.001,
    maxit = 10L,
    stretch = 2,
    smoother = "smooth.spline",
    shrink.method = "cosine",
    run_environment = NULL
) {
  create_container_ti_method(
    docker_repository = "dynverse/projected_slingshot",
    run_environment = run_environment,
    shrink = shrink,
    reweight = reweight,
    reassign = reassign,
    thresh = thresh,
    maxit = maxit,
    stretch = stretch,
    smoother = smoother,
    shrink.method = shrink.method
  )
}

