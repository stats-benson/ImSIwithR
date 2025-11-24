#' fattyAcid Dataset
#'
#'
#' Researchers wanted to know whether the cyto-sine genetic variation in FADS1 is associated with the metabolism of fatty acids in the blood as measured by the arachidonic acid to di-homo-gamma-linolenic fatty acid ratio. Lower values of this ratio indicate higher amounts of fatty acids in the blood and thus, more efficient use of dietary fatty acids.
#'
#' The Framingham Heart Study is a well-known study of cardiovascular health. In a sample of 100 individuals from the Framingham Heart Study, the researchers determined the cytosine genetic variation in the FADS1 gene, as well as the arachidonic acid to di-homo-gamma-linolenic (AA%:dgLA%) fatty acid ratio in the blood.
#'
#'
#' @format A data frame with 100 rows and 3 variables:
#' \describe{
#'   \item{FattyAcidRatio}{Ratio of arachidonic acid to di-homo-gamma-linolenic fatty acid in blood. {Quantitative}}
#'   \item{Cytosine}{Genetic variant of the FADS1 gene and which parent has the same genetic variant. ("either" or "neither" or "both")}
#'   \item{Copies}{Numer of parents with a copy of the genetic variant, same as Cytosine but quantitative. (Quantitative, discrete, 0-2)}
#' }
#' @source Kalsbeek A, Veenstra J, Westra J, Disselkoen C, Koch K, et al. (2018) A genome-wide association study of red-blood cell fatty acids and ratios incorporating dietary covariates: Framingham Heart Study Offspring Cohort. PLOS ONE 13(4): e0194882. https://doi.org/10.1371/journal.pone.0194882
"fattyAcid"
