

library(shiny)
library(RCurl)
library(RJSONIO)
library(plyr)

url <- function(address, return.call = "json", sensor = "false") {
  root <- "http://maps.google.com/maps/api/geocode/"
  u <- paste(root, return.call, "?address=", address, "&sensor=", sensor, sep = "")
  return(URLencode(u))
}

geoCode <- function(address,verbose=FALSE) {
  if(verbose) cat(address,"\n")
  u <- url(address)
  doc <- getURL(u)
  x <- fromJSON(doc,simplify = FALSE)
  if(x$status=="OK") {
    lat <- x$results[[1]]$geometry$location$lat
    lng <- x$results[[1]]$geometry$location$lng
    location_type <- x$results[[1]]$geometry$location_type
    formatted_address <- x$results[[1]]$formatted_address
    return(c(lat, lng, location_type, formatted_address))
  } else {
    return(c(NA,NA,NA, NA))
  }
}

shinyServer(
  function(input, output) {
    observe({
      input$goButton
      isolate({
        address <- input$address
        addresses <- strsplit(input$addressArea, "\n")
        addresses <- unlist(addresses)
        locations <- ldply(addresses, function(x) geoCode(x))
        locations <- cbind(addresses,locations)
        names(locations) <- c("Address Entered","Latitude","Longtitude","Location Type", "Mapped Address")
        output$locations <- renderTable({locations})
        
          }
        )
      })
      
    })
