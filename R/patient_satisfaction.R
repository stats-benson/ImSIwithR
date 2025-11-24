#' Patient_Satisfaction Dataset
#'
#' A hospital administrator wants to predict patient's satisfaction using their age, severity of illness, and anxiety level. Forty six patients were selected for the study.
#'
#' @format A data frame with 46 rows and 5 variables:
#' \describe{
#'   \item{satisfaction}{Scale from 0-100 of individual patient satisfaction. (Quantitative 0-100, higher value indicates more satisfaction.)}
#'   \item{age}{Age of Patient (Quantitative, in years.)}
#'   \item{severity}{Severity of patient illness. (Quantitative, higher value indicating greater severity.)}
#'   \item{anxiety}{Level of patient anxiety. (Quantitative, higher value indicating more anxiety.)}
#'   \item{AgeGroup}{Grouping of ages into categories. ("younger = 20–34" or "middle = 35–49" or "older = 50–64")}
#' }
#' @source Kutner, M. H., Nachtsheim, C., Neter, J., & Li, W. (2005). Applied linear statistical models (5th ed.). McGraw-Hill Irwin.
"patient_satisfaction"
