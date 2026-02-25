# Replication Archive for: Aggarwal, Minali, Jennifer Allen, Alex Coppock, 
# Dan Frankowski, Sol Messing, Kelly Zhang, James Barnes, Andrew Beasley, 
# Harry Hantman, and Sylvan Zheng: The impact of digital campaign advertising 
# during the 2020 US presidential election: evidence from survey experiments, 
# field experiments, and a campaign-level experiment. 
# Nature Human Behavior, forthcoming.


add_parens <- function(x, digits = 3) {
  x <- as.numeric(x)
  return(paste0("(", sprintf(paste0("%.", digits, "f"), x), ")"))
}

format_num <- function(x, digits = 3) {
  x <- as.numeric(x)
  return(paste0(sprintf(paste0("%.", digits, "f"), x)))
}

make_se_entry <- function(est, se, digits = 2){
  paste0(format_num(est, digits = digits)," ", add_parens(se, digits = digits))
}

make_interval_entry <-
  function(conf.low, conf.high, digits = 2) {
    paste0(
      "[",
      format_num(conf.low, digits = digits),
      ", ",
      format_num(conf.high, digits = digits),
      "]"
    )
  }