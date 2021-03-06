% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ari_narrate.R
\name{ari_narrate}
\alias{ari_narrate}
\title{Create a video from slides and a script}
\usage{
ari_narrate(script, slides, output = "output.mp4", voice,
  capture_method = "vectorized", ...)
}
\arguments{
\item{script}{Either a markdown file where every paragraph will be read over
a corresponding slide, or an \code{.Rmd} file where each HTML comment will
be used for narration.}

\item{slides}{A path or URL for an HTML slideshow created with 
\code{\link[rmarkdown]{rmarkdown}}, \code{xaringan}, or a 
similar package.}

\item{output}{The path to the video file which will be created.}

\item{voice}{The Amazon Polly voice you want to use. See
\code{\link[aws.polly]{list_voices}}.}

\item{capture_method}{Either \code{"vectorized"} or \code{"iterative"}.
The vectorized mode is faster though it can cause screens to repeat. If
making a video from an \code{\link[rmarkdown]{ioslides_presentation}}
you should use \code{"iterative"}.}

\item{...}{Arguments that will be passed to \code{\link[webshot]{webshot}}.}
}
\description{
\code{ari_narrate} creates a video from a script written in markdown and HTML
slides created with \code{\link[rmarkdown]{rmarkdown}} or a similar package.
This function uses \href{https://aws.amazon.com/polly/}{Amazon Polly} 
via \code{\link{ari_spin}}.
}
\examples{
\dontrun{

# 
ari_narrate(system.file("test", "ari_intro_script.md", package = "ari"),
            system.file("test", "ari_intro.html", package = "ari"),
            voice = "Joey")

}
}
