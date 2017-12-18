Developing-Data-Products-Week 4 Project Documentation

A] Background information
The Google Maps Geocode Tool can be used to query latitude and longtitude coordinates of places of interest. 
The tool uses the Google Maps API service for latidue and longtitude coordnate information and the Shiny Package for UI creation.
The main function that queries Google Maps API for latitude and longtitude information is the geoCode function. 
This function takes in the search criteria and returns the latitude, longtitude, type of location and address identified.

B] Advantages and Limitations

    i) Advantages

    - Users don't need to know Google Maps API and R
    - Point locations of places in terms of Latitude and Longtitude coordinates
    - Available for free from Google Maps API
   
    ii) Limitations

    - Only a maximum of 10 addresses can be queried at one time due to limits set 
      for the free version of Google Maps API


C] Using the app
    i) In the "Input box" provide the names/addresses of places to be queried to find the exact geo-location. 
    ii) Add upto 10 names/addresses in any given instance.
    iii) Click on the "Done!" button below the input box.
    iv) View the results of the query in the "Output box".


D] References
This app's work is based on guidance from following sources:

    https://gist.github.com/josecarlosgonz/6417633#file-googlemapsandr-md
    http://www.r-bloggers.com/using-google-maps-api-and-r/

