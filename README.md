
# textMoodR

`textMoodR` is a tiny R package that classifies short texts as positive,
neutral, or negative and visualizes the sentiment distribution. It’s
useful for quick sentiment analysis of tweets, reviews, or survey
responses.

## Installation

To install the package from GitHub:

``` r
remotes::install_github("ANiedenzu/textMoodR")
```

## Example

``` r
library(textMoodR)

texts <- c("I love this!", "This is terrible.", "meh")

moods <- detect_mood(texts)

print(moods)

plot_mood_distribution(moods)
```

This will output:

    [1] "positive" "negative" "neutral"

And show a bar chart of the mood distribution.
