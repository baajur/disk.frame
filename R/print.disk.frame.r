#' a new print method for disk.frame
#' @export
#' @param df disk.frame
#' @param ... not used
#' @importFrom glue glue
print.disk.frame <- function(x, ...) {
  a = paste(sep = "\n"
             ,glue::glue("path: \"{attr(df,'path')}\"")
             ,glue::glue("nchunks: {disk.frame::nchunks(df)}")
             ,glue::glue("nrow: {disk.frame::nrow(df)}")
             ,glue::glue("ncol: {disk.frame::ncol(df)}")
  )
  cat(a)
}
