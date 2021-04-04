
#' @export
build_parlitools <- function(force = FALSE) {
  tictoc::tic()
  message("Building `parlitools`")

  base_files <- paste0("../parlitools/", list.files(
    path = "../parlitools",
    recursive = TRUE
  ))

  base_files <- base_files[!grepl("docs", base_files)]
  base_files <- base_files[!grepl("data-raw", base_files)]
  base_files <- base_files[!grepl("tests", base_files)]

  x <- lapply(base_files, file.info)

  base_modified <- purrr::map(x, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct() %>%
    round("hour")

  web_files <- paste0("parlitools/", list.files(
    path = "parlitools",
    recursive = TRUE
  ))

  y <- lapply(web_files, file.info)

  web_modified <- purrr::map(y, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct() %>%
    round("hour")

  if (max(web_modified) < max(base_modified) || force == TRUE) {
    pkgdown::build_site(
      pkg = "../parlitools",
      preview = FALSE
    )

    parlitools_doc_files <- list.files(
      "../parlitools/docs",
      all.files = TRUE, full.names = TRUE,
      recursive = FALSE, ignore.case = TRUE,
      include.dirs = TRUE, no.. = TRUE
    )

    unlink("parlitools", recursive = TRUE)
    dir.create("parlitools")

    file.copy(parlitools_doc_files,
      "../docs/parlitools",
      recursive = TRUE
    )
  } else {
    message("Up to date!")
  }

  tictoc::toc()
  message(emo::ji("map"))
}
