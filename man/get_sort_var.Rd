% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/taxmap--parsers.R
\name{get_sort_var}
\alias{get_sort_var}
\title{Get a vector from a vector/list/table to be used in mapping}
\usage{
get_sort_var(data, var)
}
\arguments{
\item{data}{A vector/list/table}

\item{var}{What to get.
\itemize{
\item For tables, the names of columns can be used.
\item \code{"{{index}}"} : This means to use the index of rows/items
\item \code{"{{name}}"}  : This means to use row/item names.
\item \code{"{{value}}"} : This means to use the values in vectors or lists. Lists
}}
}
\description{
Get a vector from a vector/list/table to be used in mapping
}
\keyword{internal}
