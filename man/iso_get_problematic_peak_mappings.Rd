% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/peak_mapping.R
\name{iso_get_problematic_peak_mappings}
\alias{iso_get_problematic_peak_mappings}
\alias{iso_get_problematic_peak_mappings.iso_file_list}
\alias{iso_get_problematic_peak_mappings.data.frame}
\title{Fetch problematic peak mappings}
\usage{
iso_get_problematic_peak_mappings(...)

\method{iso_get_problematic_peak_mappings}{iso_file_list}(
  iso_files,
  select = everything(),
  include_file_info = NULL,
  unidentified = TRUE,
  missing = TRUE,
  ambiguous = TRUE,
  quiet = default(quiet)
)

\method{iso_get_problematic_peak_mappings}{data.frame}(
  peak_table,
  select = everything(),
  unidentified = TRUE,
  missing = TRUE,
  ambiguous = TRUE,
  quiet = default(quiet)
)
}
\arguments{
\item{...}{S3 method placeholder parameters, see class specific functions for details on parameters}

\item{iso_files}{collection of continuous flow iso_file objects}

\item{select}{which column to select, by default all}

\item{include_file_info}{which file information to include (see \code{\link[isoreader]{iso_get_file_info}}). Use \code{c(...)} to select multiple, supports all \link[dplyr]{select} syntax including renaming columns.}

\item{unidentified}{whether to include peaks that are problematics because they are unidentified}

\item{missing}{whether to include peaks that are problematics because they are missing}

\item{ambiguous}{whether to include peaks that are problematics because they are ambiguously identified}

\item{quiet}{whether to display (quiet=FALSE) or silence (quiet = TRUE) information messages. Set parameter to overwrite global defaults for this function or set global defaults with calls to \link[isoreader:iso_info_messages]{iso_turn_info_message_on} and \link[isoreader:iso_info_messages]{iso_turn_info_message_off}}

\item{peak_table}{data frame with mapped peaks. Requires the \code{is_identified}, \code{is_missing} and \code{is_ambiguous} columns to be present.}
}
\value{
data table with rows for problematic peaks and the \code{select}-identified columns
}
\description{
Fetch peak mappings that were problematic in any way (from \code{iso_files} or directly from a \code{peak_table}). This function is typically called after \link{iso_map_peaks} to inspect problematic entries. Use the \code{select} parameter to select only the most informative columns (always includes at minimum the \code{peak_info} and \code{problem} columns to identify why the peak is problematic). Note that peaks that are ambiguous because of multiple potential map matches have a data table entry for each potential match.
}
