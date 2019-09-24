#' @export
build_guardianapi <- function() {
  message("Building `guardianapi`")
  
  base_files <- paste0("/Users/evanodell/Documents/Code/packages/guardianapi/",
                       list.files(path = "/Users/evanodell/Documents/Code/packages/guardianapi",
                                  recursive = TRUE))
  
  base_files <- base_files[ !grepl("docs", base_files) ]
  
  x <- lapply(base_files, file.info)
  
  base_modified <- purrr::map(x, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct()
  
  web_files <- paste0("guardianapi/", list.files(path = "guardianapi", recursive = TRUE))
  
  y <- lapply(web_files, file.info)
  
  web_modified <- purrr::map(y, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct() 
  
  if (max(web_modified) <= max(base_modified)) {
    pkgdown::build_site(
      pkg = "/Users/evanodell/Documents/Code/packages/guardianapi",
      preview = FALSE
    )
    
    guardianapi_doc_files <- list.files(
      "/Users/evanodell/Documents/Code/packages/guardianapi/docs",
      all.files = TRUE, full.names = TRUE,
      recursive = FALSE, ignore.case = TRUE,
      include.dirs = TRUE, no.. = TRUE
    )
    
    unlink("guardianapi", recursive = TRUE)
    dir.create("guardianapi")
    
    file.copy(guardianapi_doc_files,
              "/Users/evanodell/Documents/Code/packages/docs/guardianapi",
              recursive = TRUE
    )
  } else {
    message("Up to date!")
  }
  emo::ji("newspaper")
}