



#' Title
#'
#' @return
#' @export
#'
#' @examples
build_docs <- function(other=NULL){

### Build `hansard`
pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/hansard", path= "/Users/evanodell/Documents/GitHub/docs/hansard")

### Build `mnis`
pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/mnis", path= "/Users/evanodell/Documents/GitHub/docs/mnis")

### Build `parlitools`
pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/parlitools", path= "/Users/evanodell/Documents/GitHub/docs/parlitools")

### If other packages to build for:



pkgdown::build_site(path = ".")

}



#' Title
#'
#' @param other The name of another R packages to build documentation for. Can only accept one package at a time. Must be a character vector, and equal to the folder name of the repository in the local GitHub folder.
#'
#' @return
#' @export
#'
#' @examples

other_docs <- function(other=NULL){
  
    pkgdown::build_site(pkg = paste0("/Users/evanodell/Documents/GitHub/", other), path= paste0("/Users/evanodell/Documents/GitHub/docs/", other))
}



