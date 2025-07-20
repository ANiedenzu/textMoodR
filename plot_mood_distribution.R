#' Plot Mood Distribution
#'
#' Creates a bar chart of the count of detected sentiments.
#'
#' @param moods A character vector containing "positive", "neutral", or "negative".
#'
#' @return A ggplot2 object.
#' @export
#' @examples
#' moods <- detect_mood(c("I love it", "I hate this", "meh"))
#' plot_mood_distribution(moods)
plot_mood_distribution <- function(moods) {
  df <- data.frame(mood = moods)
  df %>%
    dplyr::count(mood) %>%
    ggplot2::ggplot(ggplot2::aes(x = mood, y = n, fill = mood)) +
    ggplot2::geom_col() +
    ggplot2::theme_minimal() +
    ggplot2::labs(title = "Mood Distribution", y = "Count", x = "Mood")
}
