% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unit_conversion.R
\name{iso_convert_peak_table_units}
\alias{iso_convert_peak_table_units}
\alias{iso_convert_peak_table_units.iso_file_list}
\alias{iso_convert_peak_table_units.data.frame}
\title{Convert peak table column units}
\usage{
iso_convert_peak_table_units(...)

\method{iso_convert_peak_table_units}{iso_file_list}(
  iso_files,
  ...,
  select = everything(),
  quiet = default(quiet)
)

\method{iso_convert_peak_table_units}{data.frame}(
  peak_table,
  ...,
  select = everything(),
  quiet = default(quiet)
)
}
\arguments{
\item{...}{which units to convert. Must be named character arguments - the values are the old units, the names are the new units. Each pair of old and new units must have the same base units and only differ in their SI prefix (e.g. \code{Vs = mVs, V = mV, nA = A, ...)}). For each unit to convert from, finds which columns amongst those found by \code{select} currently have those units.}

\item{iso_files}{collection of continuous flow iso_file objects}

\item{select}{which columns to consider when converting units. Supports all \link[dplyr]{select} syntax. Columns not matching \code{select} will always keep their existing units. By default considers all columns.}

\item{quiet}{whether to display (quiet=FALSE) or silence (quiet = TRUE) information messages.}

\item{peak_table}{a peak table data frame}
}
\description{
This is a convenience function to convert the units of multiple peak table columns that are of type \code{\link{iso_double_with_units}} with the same units to a different SI prefix, e.g. from \code{mVs} to \code{Vs}. Uses \code{\link{iso_scale_double_with_units}} internally.
}
\details{
At this time, this function cannot convert between different units yet (e.g. voltage and current), but this could be implemented using resistors values already available in the \code{iso_files} akin to the implementation in \link{iso_convert_signals} for raw data.
}
