
#' @export
build_nomisr <- function(){
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/nomisr", 
                      preview = FALSE)
  
  nomisr_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/nomisr/docs",
    all.files = TRUE, full.names = TRUE, recursive = FALSE, 
    ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE)
  
  unlink("nomisr", recursive = TRUE)
  dir.create("nomisr")
  
  file.copy(nomisr_doc_files, 
            "/Users/evanodell/Documents/GitHub/docs/nomisr", 
            recursive = TRUE)
  
}

#' @export
build_hansard <- function(){
  
  message("Building `hansard`")
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/hansard", 
                      path = "/Users/evanodell/Documents/GitHub/docs/hansard",
                      preview = FALSE)
  
  unlink("hansard", recursive = TRUE)
  
  dir.create("hansard")
  
  hansard_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/hansard/docs", 
    all.files = TRUE, full.names = TRUE, 
    recursive = FALSE, ignore.case = TRUE, 
    include.dirs = TRUE, no.. = TRUE)
  
  file.copy(hansard_doc_files, "hansard", recursive = TRUE)
  
}

#' @export
build_hansard_opengov <- function(){
  
  message("Building `hansard-ropengov`")
  
  ropengov_doc_files <- list.files("/Users/evanodell/Documents/GitHub/hansard", 
                                   all.files = TRUE, full.names = TRUE, 
                                   recursive = FALSE, ignore.case = TRUE, 
                                   include.dirs = FALSE, no.. = TRUE)
  
  ropengov_doc_files <- ropengov_doc_files[ !grepl("_pkgdown.yml", ropengov_doc_files)]
  
  ropengov_doc_files <- ropengov_doc_files[ !grepl(".DS_Store", ropengov_doc_files) ]
  
  ropengov_doc_files <- ropengov_doc_files[ !grepl("hansard.Rproj", ropengov_doc_files) ]
  
  file.copy(ropengov_doc_files, "/Users/evanodell/Documents/GitHub/hansard-rOpenGov", 
            overwrite = TRUE)
  
  file.copy("/Users/evanodell/Documents/GitHub/hansard/tests", 
            "/Users/evanodell/Documents/GitHub/hansard-rOpenGov", 
            overwrite = TRUE, recursive = TRUE)
  
  file.copy("/Users/evanodell/Documents/GitHub/hansard/R/", 
            "/Users/evanodell/Documents/GitHub/hansard-rOpenGov", 
            overwrite = TRUE, recursive = TRUE)
  
  file.copy("/Users/evanodell/Documents/GitHub/hansard/man", 
            "/Users/evanodell/Documents/GitHub/hansard-rOpenGov", 
            overwrite = TRUE, recursive = TRUE)
  
  file.copy("/Users/evanodell/Documents/GitHub/hansard/inst", 
            "/Users/evanodell/Documents/GitHub/hansard-rOpenGov", 
            overwrite = TRUE, recursive = TRUE)
  
  file.copy("/Users/evanodell/Documents/GitHub/hansard/vignettes",
            "/Users/evanodell/Documents/GitHub/hansard-rOpenGov", 
            overwrite = TRUE, recursive = TRUE)
  
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/hansard-rOpenGov", 
                      path = "/Users/evanodell/Documents/GitHub/hansard-rOpenGov/docs", 
                      preview = FALSE)
  
}


#' @export
build_parlitools <- function(){
  
  message("Building `parlitools`")
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/parlitools", 
                      preview = FALSE)
  
  parlitools_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/parlitools/docs", 
    all.files = TRUE, full.names = TRUE, 
    recursive = FALSE, ignore.case = TRUE, 
    include.dirs = TRUE, no.. = TRUE)
  
  unlink("parlitools", recursive = TRUE)
  dir.create("parlitools")
  
  file.copy(parlitools_doc_files, 
            "/Users/evanodell/Documents/GitHub/docs/parlitools", 
            recursive = TRUE)
  
  
}


#' @export
build_emisc <- function(){
  
  message("Building `emisc`")
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/emisc", 
                      path = "/Users/evanodell/Documents/GitHub/docs/emisc", 
                      preview = FALSE)
  
  emisc_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/emisc/docs",
    all.files = TRUE, full.names = TRUE, recursive = FALSE, 
    ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE)
  
  unlink("emisc", recursive = TRUE)
  dir.create("emisc")
  
  file.copy(emisc_doc_files, 
            "/Users/evanodell/Documents/GitHub/docs/emisc", 
            recursive = TRUE)
  
}

#' @export
build_mnis <- function(){
  
  message("Building `mnis`")
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/mnis", 
                      preview = FALSE)
  
  mnis_doc_files <- list.files("/Users/evanodell/Documents/GitHub/mnis/docs", 
                               all.files = TRUE, full.names = TRUE, 
                               recursive = FALSE, ignore.case = TRUE, 
                               include.dirs = TRUE, no.. = TRUE)
  
  unlink("mnis", recursive = TRUE)
  dir.create("mnis")
  
  file.copy(mnis_doc_files, 
            "/Users/evanodell/Documents/GitHub/docs/mnis", 
            recursive = TRUE)
  
}