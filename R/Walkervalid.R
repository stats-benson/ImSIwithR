#' Walkervalid Dataset
#'
#' An additional 604 individuals that were randomly selected from the 14 clinical trials to be included as a validation dataset. The purpose of this is to preform some cross-verification on the model found for the Walkerdisc dataset, helping to assess overfitting. See Walkerdisc documentation for more information.
#'
#' @format A data frame with 604 rows and 11 variables:
#' \describe{
#'   \item{Firmness}{Force in newtons needed to pierce strawberry exterior. (Quantitative in newtons to tenth newton.)}
#'   \item{Age}{Age of participant.(Quantitative, discrete)}
#'   \item{Sex}{Sex of participant. ("M" or "F")}
#'   \item{Race}{Race of participant. ("White" or "Hispanic" or "Black" or "Aisian" or "Other" )}
#'   \item{BMI}{Body mass index, derived from height and weight. (Quantitative, in kg/m^2)}
#'   \item{Type}{Type of supplement consumed. EE is a concentrated form of Omega-3, where TG is a naturally form of Omega-3 fatty acid, found in fish oil. ("Placebo" or "S_TG" or "S_EE")}
#'   \item{Dose}{Amount of supplemental fatty acids participants consumed each day. (Quantitative in mg/day)}
#'   \item{Duration}{Number of days that the particiapant consumed supplemental fatty acids before follow-up measurement. (Quantitative, discrete)}
#'   \item{pre_O3I}{Pre-supplement Omega-3 Index (Quantitative, proportion of EPA and DHA of total fatty acids in red blood cell membranes. )}
#'   \item{post_O3I}{Post daily supplement intake Omega-3 Index (Quantitative, proportion of EPA and DHA of total fatty acids in red blood cell membranes. )}
#'   \item{chg_O3I}{Change in the proportion of Omega-3 Index, post minus pre. (Quantitative, change in proportion.)}
#' }
#' @source Walker, R.E., Jackson, K.H., Tintle, N.L., Shearer, G.C., Bernasconi, A., Masson, S., Calder, P.C., & Brenna, J.T. (2019). Predicting the effects of supplemental EPA and DHA on the omega-3 index. American Journal of Clinical Nutrition, 110(4), 1034–1040. https://doi.org/10.1093/ajcn/nqz165
"Walkervalid"
