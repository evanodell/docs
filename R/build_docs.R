
#' build_docs
#'
#' Build documentation for R packages for for docs.evanodell.com
#' @param force If TRUE, rebuild everything
#' @export
build_docs <- function(force = FALSE) {
  tictoc::tic("total")

  ### Build `hansard`  -----------------

  docs::build_hansard(force = force)

  ### Build `mnis` -----------------

  docs::build_mnis(force = force)

  ### Build `parlitools` -----------------

  docs::build_parlitools(force = force)

  ### Build `emisc`  -----------------

  docs::build_emisc(force = force)

  ### Build `nomisr`  -----------------

  docs::build_nomisr(force = force)

  ### Build `fixerapi`  -----------------

  docs::build_fixerapi(force = force)

  ### Build `refuge`  -----------------

  docs::build_refuge(force = force)

  ### Build `guardianapi`  -----------------

  docs::build_guardianapi(force = force)

  ### Build `ukpolice`  -----------------

  docs::build_ukpolice(force = force)

  ### Build `cqcr`  -----------------

  docs::build_cqcr(force = force)

  ### Build `cqcr`  -----------------

  docs::build_threesixtygiving(force = force)

  ### Building homepage -----------

  docs::build_docs_home()

  message(paste(
    strrep(clisymbols::symbol$star, 5),
    "DOC BUILDING COMPLETE",
    strrep(clisymbols::symbol$star, 5)
  ))

  tictoc::toc()
}



#' other_docs
#'
#' Function to build documentation for other R packages not listed in
#' \code{\link{build_docs}}.
#' @param pkg Location of files for input
#' @param other The name of another R packages to build documentation for.
#' @export
other_docs <- function(pkg = "/Users/evanodell/Documents/GitHub/",
                       other = NULL) {
  pkgdown::build_site(pkg = paste0(pkg, other))
}



#' build_docs_home
#'
#' Build the homepage of docs.evanodell.com
#'
#' @export
build_docs_home <- function() {
  tictoc::tic()
  pkgdown::build_site(preview = FALSE)

  doc_files <- list.files("docs",
    all.files = TRUE, full.names = TRUE,
    recursive = FALSE, ignore.case = TRUE,
    include.dirs = TRUE, no.. = TRUE
  )

  file.copy(doc_files,
    ".",
    recursive = TRUE
  )

  tictoc::toc()
  message(emo::ji("graph"))
}
