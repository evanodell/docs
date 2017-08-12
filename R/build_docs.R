



#' build_docs
#' 
#' Build documentation for R packages for for docs.evanodell.com
#' @export
build_docs <- function(){

### Build `hansard`
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/hansard", path= "/Users/evanodell/Documents/GitHub/docs/hansard", preview = FALSE)
  
  ### Build `hansard-ropengov`
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/hansard-rOpenGov", path= "/Users/evanodell/Documents/GitHub/hansard-rOpenGov/docs", preview = FALSE)

### Build `mnis`
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/mnis", path= "/Users/evanodell/Documents/GitHub/docs/mnis", preview = FALSE)

### Build `parlitools`
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/parlitools", path= "/Users/evanodell/Documents/GitHub/docs/parlitools", preview = FALSE)
  
### Build `emisc`
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/emisc", path= "/Users/evanodell/Documents/GitHub/docs/emisc", preview = FALSE)

  pkgdown::build_site(path=".", preview = FALSE)

}



#' other_docs
#' 
#' Function to build documentation for other R packages not listed in \code{\link{build_docs}}.
#' @param pkg Location of files for input
#' @param path Output location, defaults to this folder.
#' @param other The name of another R packages to build documentation for.
#' @export
other_docs <- function(pkg="/Users/evanodell/Documents/GitHub/", path="/Users/evanodell/Documents/GitHub/docs/", other=NULL){
  
    pkgdown::build_site(pkg = paste0(pkg, other), path= paste0(path, other))
  
}



#' build_docs_home
#'
#' Build the homepage of docs.evanodell.com
#'
#' @export
build_docs_home <- function(){
  pkgdown::build_site(path=".", preview = FALSE)
}




