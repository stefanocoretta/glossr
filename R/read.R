#' Read sentences
#'
#' @export
read_sentences <- function(..., sentence, db = ".") {
  path <- stringr::str_flatten(c(db, unlist(list(...))), collapse = "/")
  sent_path <- paste0(path, "/", sentence, "_sent.yaml")
  yaml::read_yaml(sent_path)
}


