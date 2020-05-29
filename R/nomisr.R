
#' @export
build_nomisr <- function(force = FALSE) {
  tictoc::tic()
message("Building `nomisr`")

  base_files <- paste0(
    "/Users/evanodell/Documents/Code/packages/nomisr/",
    list.files(
      path = "/Users/evanodell/Documents/Code/packages/nomisr",
      recursive = TRUE
    )
  )

  base_files <- base_files[ !grepl("docs", base_files) ]
  base_files <- base_files[ !grepl("data-raw", base_files) ]
  base_files <- base_files[ !grepl("tests", base_files) ]

  x <- lapply(base_files, file.info)

  base_modified <- purrr::map(x, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct()

  web_files <- paste0("nomisr/", list.files(
    path = "nomisr",
    recursive = TRUE
  ))

  y <- lapply(web_files, file.info)

  web_modified <- purrr::map(y, "mtime") %>%
    purrr::map(as.character) %>%
    unlist() %>%
    as.POSIXct()

  if (max(web_modified) <= max(base_modified) || force == TRUE) {
    pkgdown::build_site(
      pkg = "/Users/evanodell/Documents/Code/packages/nomisr",
      preview = FALSE
    )

    nomisr_doc_files <- list.files(
      "/Users/evanodell/Documents/Code/packages/nomisr/docs",
      all.files = TRUE, full.names = TRUE, recursive = FALSE,
      ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
    )

    unlink("nomisr", recursive = TRUE)
    dir.create("nomisr")

    file.copy(nomisr_doc_files,
      "/Users/evanodell/Documents/Code/packages/docs/nomisr",
      recursive = TRUE
    )
  } else {
    message("Up to date!")
  }

  tictoc::toc()
emo::ji("map")
}
