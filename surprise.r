.k <- if (interactive()) readline("Password: ") else {cat("Password: "); readLines("stdin", n = 1)}
.d <- "2c2a515f2b001b151a41290c1115030102184a4593fee5e743220300000a4b100d050e174318041011410f00100a45"
.k <- paste0(c(.k, ""), collapse = ""); if (!nzchar(.k)) .k <- " "
.b <-strtoi(substring(.d, seq(1, nchar(.d), 2), seq(2, nchar(.d), 2)), 16L)
.r <- as.raw(bitwXor(.b, rep_len(as.integer(charToRaw(enc2utf8(.k))), length(.b))))
if (length(.r) > 4 && identical(.r[1:4], charToRaw("OK::"))) {
  .m <- rawToChar(.r[-(1:4)]); Encoding(.m) <- "UTF-8"; cat(.m, "\n")
} else cat("Nope, wrong password.\n")
