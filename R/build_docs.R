



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
#' @param pkg Location of files for input
#' @param path Output location, defaults to this folder.
#' @param other The name of another R packages to build documentation for.
#' @export
other_docs <- function(pkg="/Users/evanodell/Documents/GitHub/", path="/Users/evanodell/Documents/GitHub/docs/", other=NULL){
  
    pkgdown::build_site(pkg = paste0(pkg, other), path= paste0(path, other))
}



#' build_docs_home
#'
#' @export
build_docs_home <- function(){
  pkgdown::build_site(path=".")
}
