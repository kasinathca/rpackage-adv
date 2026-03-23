# List all available bundled DA scripts.
list_scripts <- function() {
  scripts_dir <- system.file("scripts", package = "mypackage")
  if (scripts_dir == "") {
    stop("Could not locate scripts directory in installed package.", call. = FALSE)
  }
  files <- list.files(scripts_dir, pattern = "\\.R$", full.names = FALSE)
  sort(files)
}

# Run a bundled DA script by file name (with or without .R extension).
run_script <- function(script_name) {
  scripts_dir <- system.file("scripts", package = "mypackage")
  if (scripts_dir == "") {
    stop("Could not locate scripts directory in installed package.", call. = FALSE)
  }

  nm <- as.character(script_name)[1]
  if (!grepl("\\.R$", nm, ignore.case = TRUE)) {
    nm <- paste0(nm, ".R")
  }

  script_path <- file.path(scripts_dir, nm)
  if (!file.exists(script_path)) {
    available <- paste(list_scripts(), collapse = ", ")
    stop(sprintf("Script '%s' not found. Available scripts: %s", nm, available), call. = FALSE)
  }

  source(script_path, local = globalenv(), echo = TRUE)
  invisible(script_path)
}

# Open a bundled DA script in editor (or print to console if no editor is available).
view_script <- function(script_name, print_only = FALSE) {
  scripts_dir <- system.file("scripts", package = "mypackage")
  if (scripts_dir == "") {
    stop("Could not locate scripts directory in installed package.", call. = FALSE)
  }

  nm <- as.character(script_name)[1]
  if (!grepl("\\.R$", nm, ignore.case = TRUE)) {
    nm <- paste0(nm, ".R")
  }

  script_path <- file.path(scripts_dir, nm)
  if (!file.exists(script_path)) {
    available <- paste(list_scripts(), collapse = ", ")
    stop(
      sprintf("Script '%s' not found. Available scripts: %s", nm, available),
      call. = FALSE
    )
  }

  if (isTRUE(print_only)) {
    cat(readLines(script_path), sep = "\n")
  } else {
    file.edit(script_path)
  }

  invisible(script_path)
}
