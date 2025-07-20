#' Detect Mood from Text
#'
#' Classifies input text into positive, neutral, or negative based on word matches.
#'
#' @param text A character vector of sentences.
#'
#' @return A character vector of sentiments: "positive", "neutral", or "negative".
#' @export
#' @examples
#' detect_mood(c("I love this!", "This is terrible.", "It's okay."))
detect_mood <- function(text) {
  pos_words <- c("love", "great", "happy", "awesome", "good", "fantastic")
  neg_words <- c("hate", "bad", "terrible", "awful", "worst", "sad")

  classify <- function(t) {
    t <- tolower(t)
    pos <- sum(stringr::str_count(t, pos_words))
    neg <- sum(stringr::str_count(t, neg_words))
    if (pos > neg) return("positive")
    if (neg > pos) return("negative")
    return("neutral")
  }

  vapply(text, classify, character(1))
}
