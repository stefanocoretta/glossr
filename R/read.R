#' Read sentence
#'
#' Read sentence file from specified path.
#'
#' @param path The path to the text object as a string.
#' @param sentence The name of the sentence object as a string.
#'
#' @export
read_sentence <- function(path, sentence) {
  yaml::read_yaml(paste0(path, "/", sentence, "_sent.yaml" ))
}
