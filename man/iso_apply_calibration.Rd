% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calibration.R
\name{iso_apply_calibration}
\alias{iso_apply_calibration}
\title{Apply calibration}
\usage{
iso_apply_calibration(
  dt,
  predict,
  calibration = last_calibration(dt),
  predict_range = NULL,
  calculate_error = FALSE,
  predicted_value = suffix(enexpr(predict), "_pred"),
  predicted_error = suffix(sym(predicted_value), "_se"),
  quiet = default(quiet)
)
}
\arguments{
\item{dt}{nested data table with \code{all_data} and calibration columns (see \link{iso_generate_calibration})}

\item{predict}{which value to calculate, must be the regression's independent variable (regression is applied directly) or one of the independent variables (regression will be automatically inverted).}

\item{calibration}{name of the calibration to apply, must match the name used in \link{iso_generate_calibration} (if any)}

\item{predict_range}{vector of 2 numbers. Only relevant for predicting dependent variables (regression inversion). If provided will be used for finding the solution for the predict variable. By default uses the range observed in the calibration variables. Specifying the \code{predict_range} is usually only necessary if the calibration range must be extrapolated significantely.}

\item{calculate_error}{whether to estimate the standard error from the calibration. Stores the result in the new \code{predict_error} column. If the \code{predict} variable is a dependent variable, will do so using the Wald method (as described in \link[investr]{invest}). Note that error calculation for dependent variables slows this function down a fair bit and is therefore disabled by default.}

\item{predicted_value}{the name of the column for the predicted value. By default the name of the \code{predict} column with suffix \code{_pred}. Only needs to be set if this default is not suitable.}

\item{predicted_error}{the name of the column for the predicted error. By default \code{predicted_value} with suffix \code{_se}, i.e. the name of the \code{predict} column with suffix \code{_pred_se}. Only needs to be set if this default is not suitable.}

\item{quiet}{whether to display (quiet=FALSE) or silence (quiet = TRUE) information messages.}
}
\value{
the data table with the following columns added to the nested \code{all_data} \:
\itemize{
  \item{\code{predicted_value} column, usually \code{predict} column name with suffix \code{_pred}: }{the predicted value from applying the calibration}
  \item{code{predicted_value} column, usually \code{predict} column name with suffix \code{_pred_se}: }{the error of the predicated value propagated from the calibration. Only created if \code{calculate_error = TRUE}.}
}
}
\description{
Apply calibration
}
\seealso{
Other calibration functions: 
\code{\link{iso_add_standards}()},
\code{\link{iso_evaluate_calibration_range}()},
\code{\link{iso_generate_calibration}()},
\code{\link{iso_get_calibration_coefficients}()},
\code{\link{iso_get_calibration_data}()},
\code{\link{iso_get_calibration_range}()},
\code{\link{iso_get_calibration_summary}()},
\code{\link{iso_get_problematic_calibrations}()},
\code{\link{iso_prepare_for_calibration}()},
\code{\link{iso_remove_problematic_calibrations}()}
}
\concept{calibration functions}
