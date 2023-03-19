#' Generate an ABSQL Runner
#'
#' @param extra_constructors Name list of functions that can be used as YAML constructors.
#' @param replace_only TRUE if only text replace should be used when rendering text or files.
#' @param file_context_from Set to a key name in file frontmatter that should be "promoted" to top-level access
#' @param partial_kwargs A vector a keyword arguments that should be partialized in functions when rendering text or files.
#' @param ... Named arguments for additional context which can be used when rendering text or files. 
#' @importFrom reticulate import
#' @return ABSQL Runner object
#' @export
generate_absql_runner <- function(extra_constructors=NULL, replace_only=FALSE, file_context_from=NULL, partial_kwargs=NULL, ...){
  absql <- reticulate::import("absql")
  absql$Runner(
    extra_constructors=extra_constructors,
    replace_only=replace_only,
    file_context_from=file_context_from,
    partial_kwargs=partial_kwargs,
    ...)
}