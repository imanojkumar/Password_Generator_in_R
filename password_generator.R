

LENGTH <- NULL

while (is.null(LENGTH)){
  cat("Minimum Length of password is 5 .\n")
  LENGTH = readline("Enter the Length of Password to be generated (e.g. 5 or 6 or 8 or 15 etc): ")
  LENGTH = as.integer(LENGTH)
}

generate.password <- function(LENGTH){
  punct <- c("!",  "#", "$", "%", "&", "(", ")", "*",  "+", "-", "/", ":", 
             ";", "<", "=", ">", "?", "@", "[", "^", "_", "{", "|", "}", "~")
  nums <- c(0:9)
  chars <- c(letters, LETTERS, punct, nums)
  p <- c(rep(0.0105, 52), rep(0.0102, 25), rep(0.02, 10))
  password <- paste0(sample(chars, LENGTH, TRUE, prob = p), collapse = "")
  return(password)
}

if (LENGTH >= 5){
  print(generate.password(LENGTH))
} else {
  cat("\nPassword length should be minimum 5 . Exiting...\n ")
}

