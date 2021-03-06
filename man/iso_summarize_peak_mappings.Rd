% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/peak_mapping.R
\name{iso_summarize_peak_mappings}
\alias{iso_summarize_peak_mappings}
\alias{iso_summarize_peak_mappings.iso_file_list}
\alias{iso_summarize_peak_mappings.data.frame}
\title{Summarize peaks}
\usage{
iso_summarize_peak_mappings(...)

\method{iso_summarize_peak_mappings}{iso_file_list}(
  iso_files,
  include_file_info = NULL,
  compound = default(compound),
  rt = default(rt)
)

\method{iso_summarize_peak_mappings}{data.frame}(
  peak_table,
  file_id = default(file_id),
  compound = default(compound),
  rt = default(rt)
)
}
\arguments{
\item{...}{S3 method placeholder parameters, see class specific functions for details on parameters}

\item{iso_files}{collection of continuous flow iso_file objects}

\item{include_file_info}{which file information to include (see \code{\link[isoreader]{iso_get_file_info}}). Use \code{c(...)} to select multiple, supports all \link[dplyr]{select} syntax including renaming columns.}

\item{compound}{the column in peak_maps that holds compound information}

\item{rt}{the column in peak_table and colum prefix in peak_maps ("rt:...") that holds retention time information}

\item{peak_table}{data frame with the peak table}

\item{file_id}{the column(s) in peak_table that uniquely identify a file/set of peaks that belong together}
}
\value{
summary data table with one row for each unique combination of the \code{file_id} parameter
\itemize{
\item{\code{mapped}: }{number of peaks that were identified during the mapping process (out of the total number of peaks in each sample)}
\item{\code{ambiguous}: }{number of mapped peaks that were ambiguous (out of all the mapped peaks) because they either have multiple matches or because they overlap with other mapped peaks}
\item{\code{missing}: }{number of peaks that were listed in the peak map but appear to be missing in the sample (out of the total number of peaks listed in the peak map)}
\item{\code{peak_info}: }{concatenated text with all the peaks and their retention times (with \code{'?'} for unknown peak names, retention times or other ambiguities}
}
}
\description{
Summarize peaks after peak mapping. This function is called after \link{iso_map_peaks} and can be used in combination with \link{iso_get_problematic_peaks} to inspect problematic peaks in particular. For the \code{file_id} parameter, make sure to use the same set or a subset of the columns used to identify individual files in the \link{iso_map_peaks} call before.
}
\seealso{
Other peak mapping functions: 
\code{\link{iso_get_problematic_peaks}()},
\code{\link{iso_map_peaks}()},
\code{\link{iso_remove_problematic_peak_mappings}()}
}
\concept{peak mapping functions}
