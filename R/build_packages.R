
#' @export
build_nomisr <- function() {
  if (Sys.info()[[4]] == "DRUK-LAPTOP-09") {
    if (file.exists("C:\\Users\\eodell\\Documents\\Code\\nomisr")) {
      pkgdown::build_site(
        pkg = "C:\\Users\\eodell\\Documents\\Code\\nomisr",
        preview = FALSE
      )

      nomisr_doc_files <- list.files(
        "C:\\Users\\eodell\\Documents\\Code\\nomisr\\docs",
        all.files = TRUE, full.names = TRUE, recursive = FALSE,
        ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
      )

      unlink("nomisr", recursive = TRUE)
      dir.create("nomisr")

      file.copy(nomisr_doc_files,
        "C:\\Users\\eodell\\Documents\\Code\\docs\\nomisr",
        recursive = TRUE
      )
    }
  } else {
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
  }

  emo::ji("map")
}

#' @export
build_hansard <- function() {
  message("Building `hansard`")

  if (Sys.info()[[4]] == "DRUK-LAPTOP-09") {
    if (file.exists("C:\\Users\\eodell\\Documents\\Code\\hansard")) {
      pkgdown::build_site(
        pkg = "C:\\Users\\eodell\\Documents\\Code\\hansard",
        preview = FALSE
      )

      hansard_doc_files <- list.files(
        "C:\\Users\\eodell\\Documents\\Code\\hansard\\docs",
        all.files = TRUE, full.names = TRUE, recursive = FALSE,
        ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
      )

      unlink("hansard", recursive = TRUE)
      dir.create("hansard")

      file.copy(parlitools_doc_files,
        "C:\\Users\\eodell\\Documents\\Code\\docs\\hansard",
        recursive = TRUE
      )
    }
  } else {
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
  }

  emo::ji("document")
}


#' @export
build_parlitools <- function() {
  message("Building `parlitools`")

  if (Sys.info()[[4]] == "DRUK-LAPTOP-09") {
    if (file.exists("C:\\Users\\eodell\\Documents\\Code\\parlitools")) {
      pkgdown::build_site(
        pkg = "C:\\Users\\eodell\\Documents\\Code\\parlitools",
        preview = FALSE
      )

      parlitools_doc_files <- list.files(
        "C:\\Users\\eodell\\Documents\\Code\\parlitools\\docs",
        all.files = TRUE, full.names = TRUE, recursive = FALSE,
        ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
      )

      unlink("parlitools", recursive = TRUE)
      dir.create("parlitools")

      file.copy(parlitools_doc_files,
        "C:\\Users\\eodell\\Documents\\Code\\docs\\parlitools",
        recursive = TRUE
      )
    }
  } else {
    pkgdown::build_site(
      pkg = "/Users/evanodell/Documents/Code/packages/parlitools",
      preview = FALSE
    )

    parlitools_doc_files <- list.files(
      "/Users/evanodell/Documents/Code/packages/parlitools/docs",
      all.files = TRUE, full.names = TRUE,
      recursive = FALSE, ignore.case = TRUE,
      include.dirs = TRUE, no.. = TRUE
    )

    unlink("parlitools", recursive = TRUE)
    dir.create("parlitools")

    file.copy(parlitools_doc_files,
      "/Users/evanodell/Documents/Code/packages/docs/parlitools",
      recursive = TRUE
    )
  }

  emo::ji("map")
}


#' @export
build_emisc <- function() {
  message("Building `emisc`")

  if (Sys.info()[[4]] == "DRUK-LAPTOP-09") {
    if (file.exists("C:\\Users\\eodell\\Documents\\Code\\emisc")) {
      pkgdown::build_site(
        pkg = "C:\\Users\\eodell\\Documents\\Code\\emisc",
        preview = FALSE
      )

      emisc_doc_files <- list.files(
        "C:\\Users\\eodell\\Documents\\Code\\emisc\\docs",
        all.files = TRUE, full.names = TRUE, recursive = FALSE,
        ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
      )

      unlink("emisc", recursive = TRUE)
      dir.create("emisc")

      file.copy(emisc_doc_files,
        "C:\\Users\\eodell\\Documents\\Code\\docs\\emisc",
        recursive = TRUE
      )
    }
  } else {
    pkgdown::build_site(
      pkg = "/Users/evanodell/Documents/Code/packages/emisc",
      preview = FALSE
    )

    emisc_doc_files <- list.files(
      "/Users/evanodell/Documents/Code/packages/emisc/docs",
      all.files = TRUE, full.names = TRUE, recursive = FALSE,
      ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
    )

    unlink("emisc", recursive = TRUE)
    dir.create("emisc")

    file.copy(emisc_doc_files,
      "/Users/evanodell/Documents/Code/packages/docs/emisc",
      recursive = TRUE
    )
  }

  emo::ji("owl")
}

#' @export
build_mnis <- function() {
  message("Building `mnis`")

  if (Sys.info()[[4]] == "DRUK-LAPTOP-09") {
    if (file.exists("C:\\Users\\eodell\\Documents\\Code\\mnis")) {
      pkgdown::build_site(
        pkg = "C:\\Users\\eodell\\Documents\\Code\\mnis",
        preview = FALSE
      )

      mnis_doc_files <- list.files(
        "C:\\Users\\eodell\\Documents\\Code\\mnis\\docs",
        all.files = TRUE, full.names = TRUE, recursive = FALSE,
        ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
      )

      unlink("mnis", recursive = TRUE)
      dir.create("mnis")

      file.copy(emisc_doc_files,
        "C:\\Users\\eodell\\Documents\\Code\\docs\\mnis",
        recursive = TRUE
      )
    }
  } else {
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
  }

  emo::ji("british")
}


#' @export
build_fixerapi <- function() {
  message("Building `fixerapi`")

  if (Sys.info()[[4]] == "DRUK-LAPTOP-09") {
    if (file.exists("C:\\Users\\eodell\\Documents\\Code\\fixerapi")) {
      pkgdown::build_site(
        pkg = "C:\\Users\\eodell\\Documents\\Code\\fixerapi",
        preview = FALSE
      )

      fixerapi_doc_files <- list.files(
        "C:\\Users\\eodell\\Documents\\Code\\fixerapi\\docs",
        all.files = TRUE, full.names = TRUE, recursive = FALSE,
        ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
      )

      unlink("fixerapi", recursive = TRUE)
      dir.create("fixerapi")

      file.copy(fixerapi_doc_files,
        "C:\\Users\\eodell\\Documents\\Code\\docs\\fixerapi",
        recursive = TRUE
      )
    }
  } else {
    pkgdown::build_site(
      pkg = "/Users/evanodell/Documents/Code/packages/fixerapi",
      preview = FALSE
    )

    fixerapi_doc_files <- list.files(
      "/Users/evanodell/Documents/Code/packages/fixerapi/docs",
      all.files = TRUE, full.names = TRUE,
      recursive = FALSE, ignore.case = TRUE,
      include.dirs = TRUE, no.. = TRUE
    )

    unlink("fixerapi", recursive = TRUE)
    dir.create("fixerapi")

    file.copy(fixerapi_doc_files,
      "/Users/evanodell/Documents/Code/packages/docs/fixerapi",
      recursive = TRUE
    )
  }
  emo::ji("currency")
}


#' @export
build_refuge <- function() {
  message("Building `refuge`")

  if (Sys.info()[[4]] == "DRUK-LAPTOP-09") {
    if (file.exists("C:\\Users\\eodell\\Documents\\Code\\refuge")) {
      pkgdown::build_site(
        pkg = "C:\\Users\\eodell\\Documents\\Code\\refuge",
        preview = FALSE
      )

      refuge_doc_files <- list.files(
        "C:\\Users\\eodell\\Documents\\Code\\refuge\\docs",
        all.files = TRUE, full.names = TRUE, recursive = FALSE,
        ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
      )

      unlink("refuge", recursive = TRUE)
      dir.create("refuge")

      file.copy(refuge_doc_files,
        "C:\\Users\\eodell\\Documents\\Code\\docs\\refuge",
        recursive = TRUE
      )
    }
  } else {
    pkgdown::build_site(
      pkg = "/Users/evanodell/Documents/Code/packages/refuge",
      preview = FALSE
    )

    refuge_doc_files <- list.files(
      "/Users/evanodell/Documents/Code/packages/refuge/docs",
      all.files = TRUE, full.names = TRUE,
      recursive = FALSE, ignore.case = TRUE,
      include.dirs = TRUE, no.. = TRUE
    )

    unlink("refuge", recursive = TRUE)
    dir.create("refuge")

    file.copy(refuge_doc_files,
      "/Users/evanodell/Documents/Code/packages/docs/refuge",
      recursive = TRUE
    )
  }
  emo::ji("toilet")
}


#' @export
build_guardianapi <- function() {
  message("Building `guardianapi`")
  
  if (Sys.info()[[4]] == "DRUK-LAPTOP-09") {
    if (file.exists("C:\\Users\\eodell\\Documents\\Code\\guardianapi")) {
      pkgdown::build_site(
        pkg = "C:\\Users\\eodell\\Documents\\Code\\guardianapi",
        preview = FALSE
      )
      
      guardianapi_doc_files <- list.files(
        "C:\\Users\\eodell\\Documents\\Code\\guardianapi\\docs",
        all.files = TRUE, full.names = TRUE, recursive = FALSE,
        ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
      )
      
      unlink("guardianapi", recursive = TRUE)
      dir.create("guardianapi")
      
      file.copy(guardianapi_doc_files,
                "C:\\Users\\eodell\\Documents\\Code\\docs\\guardianapi",
                recursive = TRUE
      )
    }
  } else {
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
  }
  emo::ji("newspaper")
}


#' @export
build_ukpolice <- function() {
  message("Building `ukpolice`")
  
  if (Sys.info()[[4]] == "DRUK-LAPTOP-09") {
    if (file.exists("C:\\Users\\eodell\\Documents\\Code\\ukpolice")) {
      pkgdown::build_site(
        pkg = "C:\\Users\\eodell\\Documents\\Code\\ukpolice",
        preview = FALSE
      )
      
      ukpolice_doc_files <- list.files(
        "C:\\Users\\eodell\\Documents\\Code\\ukpolice\\docs",
        all.files = TRUE, full.names = TRUE, recursive = FALSE,
        ignore.case = TRUE, include.dirs = TRUE, no.. = TRUE
      )
      
      unlink("ukpolice", recursive = TRUE)
      dir.create("ukpolice")
      
      file.copy(ukpolice_doc_files,
                "C:\\Users\\eodell\\Documents\\Code\\docs\\ukpolice",
                recursive = TRUE
      )
    }
  } else {
    pkgdown::build_site(
      pkg = "/Users/evanodell/Documents/Code/packages/ukpolice",
      preview = FALSE
    )
    
    ukpolice_doc_files <- list.files(
      "/Users/evanodell/Documents/Code/packages/ukpolice/docs",
      all.files = TRUE, full.names = TRUE,
      recursive = FALSE, ignore.case = TRUE,
      include.dirs = TRUE, no.. = TRUE
    )
    
    unlink("ukpolice", recursive = TRUE)
    dir.create("ukpolice")
    
    file.copy(ukpolice_doc_files,
              "/Users/evanodell/Documents/Code/packages/docs/ukpolice",
              recursive = TRUE
    )
  }
  emo::ji("police")
}
