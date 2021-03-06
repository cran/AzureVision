% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/endpoint.R
\name{computervision_endpoint}
\alias{computervision_endpoint}
\alias{customvision_training_endpoint}
\alias{customvision_prediction_endpoint}
\title{Endpoint objects for computer vision services}
\usage{
computervision_endpoint(url, key = NULL, aad_token = NULL, ...)

customvision_training_endpoint(url, key = NULL, ...)

customvision_prediction_endpoint(url, key = NULL, ...)
}
\arguments{
\item{url}{The URL of the endpoint.}

\item{key}{A subscription key. Can be single-service or multi-service.}

\item{aad_token}{For the Computer Vision endpoint, an OAuth token object, of class \code{\link[AzureAuth:AzureToken]{AzureAuth::AzureToken}}. You can supply this as an alternative to a subscription key.}

\item{...}{Other arguments to pass to \code{\link[AzureCognitive:cognitive_endpoint]{AzureCognitive::cognitive_endpoint}}.}
}
\value{
An object inheriting from \code{cognitive_endpoint}. The subclass indicates the type of service/endpoint: Computer Vision, Custom Vision training, or Custom Vision prediction.
}
\description{
Endpoint objects for computer vision services
}
\details{
These are functions to create service-specific endpoint objects. Computer Vision supports authentication via either a subscription key or Azure Active Directory (AAD) token; Custom Vision only supports subscription key. Note that there are \emph{two} kinds of Custom Vision endpoint, one for training and the other for prediction.
}
\examples{

computervision_endpoint("https://myaccount.cognitiveservices.azure.com", key="key")

customvision_training_endpoint("https://westus.api.cognitive.microsoft.com", key="key")

customvision_prediction_endpoint("https://westus.api.cognitive.microsoft.com", key="key")

}
\seealso{
\code{\link{cognitive_endpoint}}, \code{\link{call_cognitive_endpoint}}
}
