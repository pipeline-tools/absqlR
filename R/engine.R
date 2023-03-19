#' Generate SQLAlchemy engine
#'
#' @param uri SQLAlchemy URI from which to create the SQLAlchemy engine.
#' @importFrom reticulate import
#' @return SQLAlchemy engine
#' @export
generate_sqlalchemy_engine <- function(uri){
  absql <- reticulate::import("absql")
  absql$functions$db$create_engine(uri)
}
