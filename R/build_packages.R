
#' @export
build_nomisr <- function(){
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/packages/nomisr", 
                      preview = FALSE)
  
  nomisr_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/packages/nomisr/docs",
    all.files = TRUE, full.names = TRUE, recursive = FALSE, 
    ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE)
  
  unlink("nomisr", recursive = TRUE)
  dir.create("nomisr")
  
  file.copy(nomisr_doc_files, 
            "/Users/evanodell/Documents/GitHub/packages/docs/nomisr", 
            recursive = TRUE)
  
  emo::ji("map")
  
}

#' @export
build_hansard <- function(){
  
  message("Building `hansard`")
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/packages/hansard", 
                      preview = FALSE)
  
  unlink("hansard", recursive = TRUE)
  
  dir.create("hansard")
  
  hansard_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/packages/hansard/docs", 
    all.files = TRUE, full.names = TRUE, 
    recursive = FALSE, ignore.case = TRUE, 
    include.dirs = TRUE, no.. = TRUE)
  
  file.copy(hansard_doc_files, "hansard", recursive = TRUE)
  
  emo::ji("document")
  
}

# # @export
# build_hansard_opengov <- function(){
#    
#    message("Building `hansard-ropengov`")
#    
#    ropengov_doc_files <- list.files("/Users/evanodell/Documents/GitHub/packages/hansard", 
#                                     all.files = TRUE, full.names = TRUE, 
#                                     recursive = FALSE, ignore.case = TRUE, 
#                                     include.dirs = FALSE, no.. = TRUE)
#    
#    ropengov_doc_files <- ropengov_doc_files[ !grepl("_pkgdown.yml", ropengov_doc_files)]
#    
#    ropengov_doc_files <- ropengov_doc_files[ !grepl(".DS_Store", ropengov_doc_files) ]
#    
#    ropengov_doc_files <- ropengov_doc_files[ !grepl("hansard.Rproj", ropengov_doc_files) ]
#    
#    file.copy(ropengov_doc_files, "/Users/evanodell/Documents/GitHub/packages/hansard-rOpenGov", 
#              overwrite = TRUE)
#    
#    file.copy("/Users/evanodell/Documents/GitHub/packages/hansard/tests", 
#              "/Users/evanodell/Documents/GitHub/packages/hansard-rOpenGov", 
#              overwrite = TRUE, recursive = TRUE)
#    
#    file.copy("/Users/evanodell/Documents/GitHub/packages/hansard/R/", 
#              "/Users/evanodell/Documents/GitHub/packages/hansard-rOpenGov", 
#              overwrite = TRUE, recursive = TRUE)
#    
#    file.copy("/Users/evanodell/Documents/GitHub/packages/hansard/man", 
#              "/Users/evanodell/Documents/GitHub/packages/hansard-rOpenGov", 
#              overwrite = TRUE, recursive = TRUE)
#    
#    file.copy("/Users/evanodell/Documents/GitHub/packages/hansard/inst", 
#              "/Users/evanodell/Documents/GitHub/packages/hansard-rOpenGov", 
#              overwrite = TRUE, recursive = TRUE)
#    
#    file.copy("/Users/evanodell/Documents/GitHub/packages/hansard/vignettes",
#              "/Users/evanodell/Documents/GitHub/packages/hansard-rOpenGov", 
#              overwrite = TRUE, recursive = TRUE)
#    
#    
#    pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/packages/hansard-rOpenGov", 
#                        preview = FALSE)
#    
#    emo::ji("document")
#    
#' }
#' 

#' @export
build_parlitools <- function(){
  
  message("Building `parlitools`")
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/packages/parlitools", 
                      preview = FALSE)
  
  parlitools_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/packages/parlitools/docs", 
    all.files = TRUE, full.names = TRUE, 
    recursive = FALSE, ignore.case = TRUE, 
    include.dirs = TRUE, no.. = TRUE)
  
  unlink("parlitools", recursive = TRUE)
  dir.create("parlitools")
  
  file.copy(parlitools_doc_files, 
            "/Users/evanodell/Documents/GitHub/packages/docs/parlitools", 
            recursive = TRUE)
  
  emo::ji("map")
  
}


#' @export
build_emisc <- function(){
  
  message("Building `emisc`")
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/packages/emisc", 
                      preview = FALSE)
  
  emisc_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/packages/emisc/docs",
    all.files = TRUE, full.names = TRUE, recursive = FALSE, 
    ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE)
  
  unlink("emisc", recursive = TRUE)
  dir.create("emisc")
  
  file.copy(emisc_doc_files, 
            "/Users/evanodell/Documents/GitHub/packages/docs/emisc", 
            recursive = TRUE)
  
  emo::ji("owl")
  
}

#' @export
build_mnis <- function(){
  
  message("Building `mnis`")
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/packages/mnis", 
                      preview = FALSE)
  
  mnis_doc_files <- list.files("/Users/evanodell/Documents/GitHub/packages/mnis/docs", 
                               all.files = TRUE, full.names = TRUE, 
                               recursive = FALSE, ignore.case = TRUE, 
                               include.dirs = TRUE, no.. = TRUE)
  
  unlink("mnis", recursive = TRUE)
  dir.create("mnis")
  
  file.copy(mnis_doc_files, 
            "/Users/evanodell/Documents/GitHub/packages/docs/mnis", 
            recursive = TRUE)
  
  emo::ji("british")
  
}


#' @export
build_fixerapi <- function(){
  
  message("Building `fixerapi`")
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/packages/fixerapi", 
                      preview = FALSE)
  
  fixerapi_doc_files <- list.files("/Users/evanodell/Documents/GitHub/packages/fixerapi/docs", 
                                   all.files = TRUE, full.names = TRUE, 
                                   recursive = FALSE, ignore.case = TRUE, 
                                   include.dirs = TRUE, no.. = TRUE)
  
  unlink("fixerapi", recursive = TRUE)
  dir.create("fixerapi")
  
  file.copy(fixerapi_doc_files, 
            "/Users/evanodell/Documents/GitHub/packages/docs/fixerapi", 
            recursive = TRUE)
  
  emo::ji("currency")
  
}


#' @export
build_refuge <- function(){
  
  message("Building `refuge`")
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/packages/refuge", 
                      preview = FALSE)
  
  refuge_doc_files <- list.files("/Users/evanodell/Documents/GitHub/packages/refuge/docs", 
                                 all.files = TRUE, full.names = TRUE, 
                                 recursive = FALSE, ignore.case = TRUE, 
                                 include.dirs = TRUE, no.. = TRUE)
  
  unlink("refuge", recursive = TRUE)
  dir.create("refuge")
  
  file.copy(refuge_doc_files, 
            "/Users/evanodell/Documents/GitHub/packages/docs/refuge", 
            recursive = TRUE)
  
  emo::ji("toilet")
  
}