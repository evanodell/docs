#' @export
build_mnis <- function(force = FALSE) {
  tictoc::tic()
  message("Building `mnis`")

  base_files <- paste0(
    "/Users/evanodell/Documents/Code/packages/mnis/",
    list.files(
      path = "/Users/evanodell/Documents/Code/packages/mnis",
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

  web_files <- paste0("mnis/", list.files(path = "mnis", recursive = TRUE))

  y <- lapply(web_files, file.info)

  web_modified <- purrr::map(y, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct()

  if (max(web_modified) <= max(base_modified) || force == TRUE) {
    pkgdown::build_site(
      pkg = "/Users/evanodell/Documents/Code/packages/mnis",
      preview = FALSE
    )

    mnis_doc_files <- list.files(
      "/Users/evanodell/Documents/Code/packages/mnis/docs",
      all.files = TRUE, full.names = TRUE,
      recursive = FALSE, ignore.case = TRUE,
      include.dirs = TRUE, no.. = TRUE
    )

    unlink("mnis", recursive = TRUE)
    dir.create("mnis")

    file.copy(mnis_doc_files,
      "/Users/evanodell/Documents/Code/packages/docs/mnis",
      recursive = TRUE
    )
  } else {
    message("Up to date!")
  }
  tictoc::toc()
  emo::ji("british")
}
