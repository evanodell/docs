



#' build_docs
#' Build documentation for docs.evanodell.com
#' @export
build_docs <- function(){

### Build `hansard`
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/hansard", path= "/Users/evanodell/Documents/GitHub/docs/hansard")

### Build `mnis`
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/mnis", path= "/Users/evanodell/Documents/GitHub/docs/mnis")

### Build `parlitools`
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/parlitools", path= "/Users/evanodell/Documents/GitHub/docs/parlitools")

  pkgdown::build_site(path=".")

}



#' other_docs
#' @param other The name of another R packages to build documentation for. Can only accept one package at a time. Must be a character vector, and equal to the folder name of the repository in the local GitHub folder.
#' @export
other_docs <- function(other=NULL){
  
    pkgdown::build_site(pkg = paste0("/Users/evanodell/Documents/GitHub/", other), path= paste0("/Users/evanodell/Documents/GitHub/docs/", other))
}


#' build_home
#'
#' @export
build_home <- function(){
  pkgdown::build_site(path=".")
}
