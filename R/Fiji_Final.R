#' Fiji_Final Dataset
#'
#'
#' In order to evaluate the impact of water filters on health and economics over time, researchers went back to households with barcodes 2−8 weeks later. Due to many of the initial data collection problems (e.g., drop out of surveyors and lack of coordination and staffing), many observations were only available from when the filters were initially installed. Ultimately, 533 households have data before and after the filtration system was installed.
#' Only difference is to include the variable of if the house spent money on bottled water in the initial survey.
#'
#'
#' @format A data frame with 530 rows and 10 variables:
#' \describe{
#'   \item{Barcode_ID}{Indicates the barcode of the filter that was installed in the house and allows for tracking of the filters over time. (ID)}
#'   \item{Water_Source}{Where water is usually obtained from for the household. ("Bore Hole" or "Catchment" or "River/Creek" or "Tap(Treated)" or "Tap(Untreated)" or "Well")
#'   \item{HouseholdSize}{Response to how many adults (18 years or older) live in your home at least two weeks per month. (Quantitative discrete)}
#'   \item{TwoWkDiarr_initial}{Indicates the number of days out of the last two weeks which anyone had diarrhea, as recorded in the initial survey. (Quantitative, discrete)}
#'   \item{Month_water_cost_initial}{Amount of money spent on bottled water in the last month, as recorded in the initial survey. (Quantitative, in Fijian Dollars)}
#'   \item{Children}{Number of children under 17 in the household. (Quantitative, Discrete)}
#'   \item{TwoWkDiarr_followup}{Indicates the number of days out of the last two weeks which anyone had diarrhea, as recorded in the followup survey. (Quantitative, discrete)}
#'   \item{Month_water_cost_followup}{Amount of money spent on bottled water in the last month, as recorded in the followup survey. (Quantitative, in Fijian Dollars)}
#'   \item{watersource}{Indicates if the water source is a borehole or not. ("BoreHole" or "other")}
#'   \item{spentonbottledwater}{Indicates if the household spent money on bottled water in the initial survey. ("no" or "yes")}
#' }
#' @source Tintle, N., Chance, B., Cobb, G., Rossman, A., Roy, S., & VanderStoep, J. (2019). Intermediate Statistical Investigations. John Wiley & Sons. Household Water Use dataset.
"Fiji_Final"
