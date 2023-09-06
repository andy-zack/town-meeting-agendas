# load httr library -------------------------------------------------------
library(httr)

# get access token from Renviron file -------------------------------------
token = Sys.getenv("FACEBOOK_ACCESS_TOKEN")

# Initial API call --------------------------------------------------------
# Define the endpoint
user_id <- "17841461745475217" # instagram business account id
url <- paste0("https://graph.facebook.com/v17.0/", user_id, "/media")

# Define the payload
payload <- list(
  image_url = "https://www.rickcrandall.net/wp-content/uploads/images/40_Mt.-Sopris-Climb-1a.jpg",
  caption = "Your caption here",
  access_token = token
)

# Make the POST request
response <- POST(url, body = payload, encode = "json")

# Check the response
content(response)


# API call to publish post ------------------------------------------------
# If the media object is created successfully, you'll get an ID in the response.
# Use this ID to publish the media object:
media_id <- content(response)$id
publish_url <- paste0("https://graph.facebook.com/v17.0/", user_id, "/media_publish")

publish_payload <- list(
  creation_id = media_id,
  access_token = token
)

publish_response <- POST(publish_url, body = publish_payload, encode = "json")
content(publish_response)
