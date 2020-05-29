
#' @export
build_hansard <- function(force = FALSE) {
  tictoc::tic()
message("Building `hansard`")

  base_files <- paste0("/Users/evanodell/Documents/Code/packages/hansard/", list.files(
    path = "/Users/evanodell/Documents/Code/packages/hansard",
    recursive = TRUE
  ))

  base_files <- base_files[ !grepl("docs", base_files) ]
  base_files <- base_files[ !grepl("data-raw", base_files) ]
  base_files <- base_files[ !grepl("tests", base_files) ]

  x <- lapply(base_files, file.info)

  base_modified <- purrr::map(x, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct()

  web_files <- paste0("hansard/", list.files(
    path = "hansard",
    recursive = TRUE
  ))

  y <- lapply(web_files, file.info)

  web_modified <- purrr::map(y, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct()

  if (max(web_modified) <= max(base_modified) || force == TRUE) {
    pkgdown::build_site(
      pkg = "/Users/evanodell/Documents/Code/packages/hansard",
      preview = FALSE
    )

    unlink("hansard", recursive = TRUE)

    dir.create("hansard")

    hansard_doc_files <- list.files(
      "/Users/evanodell/Documents/Code/packages/hansard/docs",
      all.files = TRUE, full.names = TRUE,
      recursive = FALSE, ignore.case = TRUE,
      include.dirs = TRUE, no.. = TRUE
    )

    file.copy(hansard_doc_files, "hansard", recursive = TRUE)
  } else {
    message("Up to date!")
  }

  tictoc::toc()
emo::ji("document")
}
