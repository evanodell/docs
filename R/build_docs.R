
#' build_docs
#' 
#' Build documentation for R packages for for docs.evanodell.com
#' @export
build_docs <- function(){
  
### Build `hansard`  -----------------
  
  docs::build_hansard()
  
### Build `hansard-ropengov` -----------------
  
  docs::build_hansard_opengov()
  
### Build `mnis` -----------------
  
  docs::build_mnis()
  
### Build `parlitools` -----------------  
  
  docs::build_parlitools()
  
### Build `emisc`  -----------------
  
  docs::build_emisc()
  
### Build `nomisr`  -----------------
  
  docs::build_nomisr()
  

  ### Build `fixerapi`  -----------------
  
  docs::build_fixerapi()
  
### Building homepage -----------
  
  docs::build_docs_home()
  
  message(paste(strrep(clisymbols::symbol$star, 5), 
                "DOC BUILDING COMPLETE", 
                strrep(clisymbols::symbol$star, 5)))

}



#' other_docs
#' 
#' Function to build documentation for other R packages not listed in 
#' \code{\link{build_docs}}.
#' @param pkg Location of files for input
#' @param other The name of another R packages to build documentation for.
#' @export
other_docs <- function(pkg = "/Users/evanodell/Documents/GitHub/", 
                       other = NULL){
  
    pkgdown::build_site(pkg = paste0(pkg, other))
  
}



#' build_docs_home
#'
#' Build the homepage of docs.evanodell.com
#'
#' @export
build_docs_home <- function(){
  pkgdown::build_site(preview = FALSE)
  
  doc_files <- list.files("docs", 
                               all.files = TRUE, full.names = TRUE, 
                               recursive = FALSE, ignore.case = TRUE, 
                               include.dirs = TRUE, no.. = TRUE)
  
  file.copy(doc_files, 
            ".", 
            recursive = TRUE)
  
  emo::ji("graph")
  
}




