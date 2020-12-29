#' Print gloss
#'
#' The function returns the selected sentence as properly formatted html/latex code.
#'
#' @param sent Sentence as a list.
#' @param format Format to print out with (either \code{html} or \code{latex}).
#'
#' @export
print_gloss <- function(sent, format) {

  spell <- sent[[1]]$spell
  parsed <- stringr::str_flatten(sent[[1]]$parsed, collapse = " ")
  gloss <- stringr::str_flatten(sent[[1]]$gloss, collapse = " ")
  tr <- sent[[1]]$tr

  if (format == "latex") {
    glue::glue(
      "```{{=latex}}
      \\ex \\begingl
      \\glpreamble {spell}//
      \\gla {parsed}//
      \\glb {gloss}//
      \\glft {tr}//
      \\endgl \\xe
      ```"
    )
  } else if (format == "html") {
    glue::glue(
      "<div data-gloss>
      <p>{spell}</p>
      <p>{gloss}</p>
      <p>'{tr}'</p>
      </div>"
    )
  }

}

#' Include gloss in Rmd
#'
#' @param sent Sentence as a list.
#'
#' @export
include_gloss <- function(sent) {
  if (knitr::is_latex_output()) {
    print_gloss(sent, "latex")
  } else if (knitr::is_html_output()) {
    print_gloss(sent, "html")
  } else sent # TODO: this needs to be changed to markdown output
}
