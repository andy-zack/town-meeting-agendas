# Load libraries
library(rvest)
library(stringr)

# URL of the page containing the agendas
url <- "https://www.carbondalegov.org/government/board_of_trustees/agendas_minutes_packets.php"

# Base URL to prepend if necessary
base_url <- "https://www.carbondalegov.org/"

# Read the HTML content of the web page
webpage <- read_html(url)

# Extract the second link with the visible text "Packet"
packet_link <- webpage %>%
  html_nodes(xpath = "//a[contains(text(),'Packet')]") %>%
  html_attr("href") %>%
  .[2]  # Select the second link

# Prepend the base URL if it's not already included in the link
packet_link <- ifelse(str_detect(packet_link, "^http"), packet_link, paste0(base_url, packet_link))

# Download the packet
download.file(packet_link, destfile = "packet.pdf", mode = "wb")
