#' @export
build_cqcr <- function(force = FALSE) {
  tictoc::tic()
  message("Building `cqcr`")

  base_files <- paste0(
    "/Users/evanodell/Documents/Code/packages/cqcr/",
    list.files(
      path = "/Users/evanodell/Documents/Code/packages/cqcr",
      recursive = TRUE
    )
  )

  base_files <- base_files[!grepl("docs", base_files)]
  base_files <- base_files[!grepl("data-raw", base_files)]
  base_files <- base_files[!grepl("tests", base_files)]

  x <- lapply(base_files, file.info)

  base_modified <- purrr::map(x, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct()

  web_files <- paste0("cqcr/", list.files(path = "cqcr", recursive = TRUE))

  y <- lapply(web_files, file.info)

  web_modified <- purrr::map(y, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct()

  if (is.na(web_modified) || max(web_modified) <= max(base_modified) || force == TRUE) {
    pkgdown::build_site(
      pkg = "/Users/evanodell/Documents/Code/packages/cqcr",
      preview = FALSE
    )

    cqcr_doc_files <- list.files(
      "/Users/evanodell/Documents/Code/packages/cqcr/docs",
      all.files = TRUE, full.names = TRUE,
      recursive = FALSE, ignore.case = TRUE,
      include.dirs = TRUE, no.. = TRUE
    )

    unlink("cqcr", recursive = TRUE)
    dir.create("cqcr")

    file.copy(cqcr_doc_files,
      "/Users/evanodell/Documents/Code/packages/docs/cqcr",
      recursive = TRUE
    )
  } else {
    message("Up to date!")
  }
  tictoc::toc()
  emo::ji("medicine")
}
