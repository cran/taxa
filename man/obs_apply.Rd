% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/taxmap--docs.R
\name{obs_apply}
\alias{obs_apply}
\title{Apply function to observations per taxon}
\arguments{
\item{obj}{The \code{\link[=taxmap]{taxmap()}} object containing taxon information to
be queried.}

\item{data}{Either the name of something in \code{obj$data} that has taxon
information or a an external object with taxon information. For tables,
there must be a column named "taxon_id" and lists/vectors must be named by
taxon ID.}

\item{func}{(\code{function}) The function to apply.}

\item{simplify}{(\code{logical}) If \code{TRUE}, convert lists to vectors.}

\item{value}{What data to give to the function. This is usually the name of
column in a table in \code{obj$data}. Any result of \code{all_names(obj)} can be
used, but it usually only makes sense to use columns in the dataset
specified by the \code{data} option. By default, the indexes of observation in
\code{data} are returned.}

\item{subset}{Taxon IDs, TRUE/FALSE vector, or taxon indexes to use.
Default: All taxa in \code{obj} will be used. Any variable name that appears in
\code{\link[=all_names]{all_names()}} can be used as if it was a vector on its own.}

\item{recursive}{(\code{logical} or \code{numeric}) If \code{FALSE}, only return the
observation assigned to the specified input taxa, not subtaxa. If \code{TRUE},
return all the observations of every subtaxa, etc. Positive numbers
indicate the number of ranks below the each taxon to get observations for
\code{0} is equivalent to \code{FALSE}. Negative numbers are equivalent to \code{TRUE}.}

\item{...}{Extra arguments are passed to the function.}
}
\description{
Apply a function to data for the observations for each taxon. This is similar
to using \code{\link[=obs]{obs()}} with \code{\link[=lapply]{lapply()}} or \code{\link[=sapply]{sapply()}}.
\preformatted{
obj$obs_apply(data, func, simplify = FALSE, value = NULL,
  subset = NULL, recursive = TRUE, ...)
obs_apply(obj, data, func, simplify = FALSE, value = NULL,
  subset = NULL, recursive = TRUE, ...)}
}
\examples{
# Find the average number of legs in each taxon
obs_apply(ex_taxmap, "info", mean, value = "n_legs", simplify = TRUE)

# One way to implement `n_obs` and find the number of observations per taxon
obs_apply(ex_taxmap, "info", length, simplify = TRUE)

}
