% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/peak_table.R
\name{iso_get_peak_table}
\alias{iso_get_peak_table}
\title{Aggregate peak table}
\usage{
iso_get_peak_table(
  iso_files,
  select = everything(),
  include_file_info = NULL,
  with_explicit_units = FALSE,
  quiet = default(quiet)
)
}
\arguments{
\item{iso_files}{collection of iso_file objects}

\item{select}{which data columns to select - use \code{c(...)} to select multiple, supports all \link[dplyr]{select} syntax. By default, all columns are selected.}

\item{include_file_info}{which file information to include (see \code{\link[isoreader]{iso_get_file_info}}). Use \code{c(...)} to select multiple, supports all \link[dplyr]{select} syntax including renaming columns.}

\item{with_explicit_units}{whether to include units in the column headers of the returned data frame instead of the column data types (see \code{\link[isoreader]{iso_double_with_units}}). Note that any \code{select} conditions have to refer to the column names including the full units.}

\item{quiet}{whether to display (quiet=FALSE) or silence (quiet = TRUE) information messages. Set parameter to overwrite global defaults for this function or set global defaults with calls to \link[isoreader:iso_info_messages]{iso_turn_info_message_on} and \link[isoreader:iso_info_messages]{iso_turn_info_message_off}}
}
\description{
Aggregate peak table from continous flow files. The return peak table has implicit units, to make the units explicit, use \code{\link[isoreader]{iso_make_units_explicit}}.
}
\seealso{
Other peak table functions: 
\code{\link{iso_mutate_peak_table}()},
\code{\link{iso_set_peak_table_from_vendor_data_table}()},
\code{\link{iso_set_peak_table}()}
}
\concept{peak table functions}
