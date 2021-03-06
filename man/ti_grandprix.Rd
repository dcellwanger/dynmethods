% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ti_grandprix.R
\name{ti_grandprix}
\alias{ti_grandprix}
\title{Inferring a trajectory inference using GrandPrix}
\usage{
ti_grandprix(n_latent_dims = 2L, n_inducing_points = 40L,
  latent_prior_var = 0.1, latent_var = 0.028, run_environment = NULL)
}
\arguments{
\item{n_latent_dims}{integer; (default: \code{2L}; range: from \code{1L} to \code{10L})}

\item{n_inducing_points}{integer; (default: \code{40L}; range: from \code{10L} to \code{500L})}

\item{latent_prior_var}{numeric; (default: \code{0.1}; range: from \code{NULL} to \code{NULL})}

\item{latent_var}{numeric; (default: \code{0.028}; range: from \code{NULL} to \code{NULL})}

\item{run_environment}{In which environment to run the method, can be \code{"docker"} or \code{"singularity"}.}
}
\value{
A TI method wrapper to be used together with
\code{\link[dynwrap:infer_trajectories]{infer_trajectory}}
}
\description{
Will generate a trajectory using \href{https://doi.org/10.1101/227843}{GrandPrix}.

This method was wrapped inside a
\href{https://github.com/dynverse/dynmethods/tree/master/containers/grandprix}{container}.
The original code of this method is available
\href{https://github.com/ManchesterBioinference/GrandPrix}{here}.
}
\references{
Ahmed, S., Rattray, M., Boukouvalas, A., 2017. GrandPrix: Scaling
up the Bayesian GPLVM for single-cell data.
}
