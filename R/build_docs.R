
#' build_docs
#' 
#' Build documentation for R packages for for docs.evanodell.com
#' @export
build_docs <- function(){

  message("Building `hansard`")
  
### Build `hansard`  -----------------
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/hansard", 
                      path = "/Users/evanodell/Documents/GitHub/docs/hansard",
                      preview = FALSE)
  
  hansard_doc_files <- list.files("/Users/evanodell/Documents/GitHub/hansard/docs", 
                              all.files = TRUE, full.names = TRUE, 
                              recursive = TRUE, ignore.case = TRUE, 
                              include.dirs = TRUE, no.. = TRUE)
  
  
  if (!dir.exists("hansard")) {
    dir.create("hansard")
  }
  
  file.copy(hansard_doc_files, 
            "/Users/evanodell/Documents/GitHub/docs/hansard", 
            overwrite = TRUE, recursive = TRUE)
  
  hansard_dupes <- list.files(path = "hansard/", pattern = "*.html")
  hansard_refs <- list.files(path = "hansard/reference", pattern = "*.html")
  
  hansard_refs <- hansard_refs[hansard_refs != "index.html"]
  
  hansard_dupes <- as.list(
    paste0("hansard/", hansard_dupes[hansard_dupes %in% hansard_refs])
    )
  
  hansard_dupes[[length(hansard_dupes)+1]] <- "hansard/introduction.R"
  hansard_dupes[[length(hansard_dupes)+2]] <- "hansard/introduction.html"
  
  do.call(file.remove, hansard_dupes)
  
  
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
  
  message("Building `hansard-ropengov`")
  
### Build `hansard-ropengov` -----------------
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/hansard-rOpenGov", 
                      path = "/Users/evanodell/Documents/GitHub/hansard-rOpenGov/docs", 
                      preview = FALSE)

  message("Building `mnis`")
  
### Build `mnis` -----------------
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/mnis", 
                      preview = FALSE)
  
  
  mnis_doc_files <- list.files("/Users/evanodell/Documents/GitHub/mnis/docs", 
                                  all.files = TRUE, full.names = TRUE, 
                                  recursive = TRUE, ignore.case = TRUE, 
                                  include.dirs = TRUE, no.. = TRUE)
  
  if (!dir.exists("mnis")) {
    dir.create("mnis")
  }
  
  file.copy(mnis_doc_files, 
            "/Users/evanodell/Documents/GitHub/docs/mnis", 
            recursive = TRUE)
  
  mnis_dupes <- list.files(path = "mnis/", pattern = "*.html")
  mnis_refs <- list.files(path = "mnis/reference", pattern = "mnis_.*.html")
  
  mnis_dupes <- as.list(paste0("mnis/", mnis_dupes[mnis_dupes %in% mnis_refs]))
  
  mnis_dupes[[length(mnis_dupes)+1]] <- "mnis/introduction.R"
  mnis_dupes[[length(mnis_dupes)+2]] <- "mnis/introduction.html"
  
  do.call(file.remove, mnis_dupes)
  
  message("Building `parlitools`")
  
### Build `parlitools` -----------------
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/parlitools", 
                      path = "/Users/evanodell/Documents/GitHub/docs/parlitools", 
                      preview = FALSE)
  
  parlitools_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/parlitools/docs",
    all.files = TRUE, full.names = TRUE, recursive = TRUE, 
    ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE)
  
  if (!dir.exists("parlitools")) {
    dir.create("parlitools")
  }
  
  file.copy(parlitools_doc_files, 
            "/Users/evanodell/Documents/GitHub/docs/parlitools", 
            overwrite = TRUE, recursive = TRUE)
  
  parlitools_dupes <- list.files(path = "parlitools/", pattern = "*.html")
  parlitools_refs <- list.files(path = "parlitools/reference", pattern = "*.html")
  
  parlitools_refs <- parlitools_refs[parlitools_refs != "index.html"]
  
  parlitools_dupes_list <- as.list(
    paste0("parlitools/", 
           parlitools_dupes[parlitools_dupes %in% parlitools_refs])
  )
  
  parlitools_arts <- list.files(path = "parlitools/articles", pattern = "*.html")
  
  parlitools_arts <- parlitools_arts[parlitools_arts != "index.html"]
  
  # parlitools_arts2 <- list.files(path = "parlitools", pattern = "*_files")
  # 
  # parlitools_arts2 <- parlitools_arts2[parlitools_arts2 != "index_files"]
  
  parlitools_dupes_list2 <- as.list(
    paste0("parlitools/", 
           parlitools_dupes[parlitools_dupes %in% parlitools_arts])
  )
  
  parlitools_dupes <- c(parlitools_dupes_list, parlitools_dupes_list2)
  
  do.call(file.remove, parlitools_dupes)
  
  #unlink(parlitools_arts2, recursive = TRUE)
  
  
  message("Building `emisc`")
  
### Build `emisc`  -----------------
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/emisc", 
                      path = "/Users/evanodell/Documents/GitHub/docs/emisc", 
                      preview = FALSE)
  
  emisc_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/emisc/docs",
    all.files = TRUE, full.names = TRUE, recursive = TRUE, 
    ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE)
  
  if (!dir.exists("emisc")) {
    dir.create("emisc")
  }
  
  file.copy(emisc_doc_files, 
            "/Users/evanodell/Documents/GitHub/docs/emisc", 
            overwrite = TRUE, recursive = TRUE)
  
  
### Build `nomisr`  -----------------
  
  pkgdown::build_site(pkg = "/Users/evanodell/Documents/GitHub/nomisr", 
                      path = "/Users/evanodell/Documents/GitHub/docs/nomisr", 
                      preview = FALSE)
  
  nomisr_doc_files <- list.files(
    "/Users/evanodell/Documents/GitHub/nomisr/docs",
    all.files = TRUE, full.names = TRUE, recursive = TRUE, 
    ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE)
  
  if (!dir.exists("nomisr")) {
    dir.create("nomisr")
  }
  
  file.copy(nomisr_doc_files, 
            "/Users/evanodell/Documents/GitHub/docs/nomisr", 
            recursive = TRUE)
  
  nomisr_dupes <- list.files(path = "nomisr/", pattern = "*.html")
  nomisr_refs <- list.files(path = "nomisr/reference", pattern = "nomis_.*.html")
  
  nomisr_dupes <- as.list(paste0("nomisr/", nomisr_dupes[nomisr_dupes %in% nomisr_refs]))
  
  nomisr_dupes[[length(nomisr_dupes)+1]] <- "nomisr/introduction.R"
  nomisr_dupes[[length(nomisr_dupes)+2]] <- "nomisr/introduction.html"
  
  do.call(file.remove, nomisr_dupes)

  pkgdown::build_site(path= "/", preview = FALSE)
  
  doc_files <- list.files("docs", all.files = TRUE, 
                          full.names = TRUE, recursive = F, 
                          ignore.case = TRUE, include.dirs = TRUE,
                          no.. = TRUE)
  
  file.copy(doc_files, 
            ".", 
            recursive = TRUE)

}



#' other_docs
#' 
#' Function to build documentation for other R packages not listed in 
#' \code{\link{build_docs}}.
#' @param pkg Location of files for input
#' @param path Output location, defaults to this folder.
#' @param other The name of another R packages to build documentation for.
#' @export
other_docs <- function(pkg="/Users/evanodell/Documents/GitHub/", 
                       path="/Users/evanodell/Documents/GitHub/docs/", 
                       other=NULL){
  
    pkgdown::build_site(pkg = paste0(pkg, other), path = paste0(path, other))
  
}



#' build_docs_home
#'
#' Build the homepage of docs.evanodell.com
#'
#' @export
build_docs_home <- function(){
  pkgdown::build_site(path=".", preview = FALSE)
}




