#' Car MPG Dataset
#'
#' A dataset exploring what car features might help explain faster acceleration. Data collection method details limited, other versions of data contain 406 cars, this one only contains the 392 complete records.
#'
#' @format A data frame with 392 rows and 3 variables:
#' \describe{
#'   \item{weight}{Whether or not the car weighs over 2800 kg ("heavy" or "light")}
#'   \item{horsepower}{Type of horsepower ("high" or "low")}
#'   \item{acceleration}{Time in seconds for car to accelerate to 60 mph (Quantitative, rounded to tenths.)}
#' }
#' @source Quinlan, “Combining Instance-based and Model-based Learning,” Proceedings on the Tenth International Conference of Machine Learning, 236–243, 1993; used in the 1983 ASA Data Graphics Exposition
"carmpg"
