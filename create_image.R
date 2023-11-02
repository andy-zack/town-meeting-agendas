# Load the magick package
library(magick)
library(here)

# Set Parameters
font <- "Arial"
image_name <- "IMG_1603.JPG"
image_text <- "Carbondale Town Council Meeting Highlights️

New community park proposal
Recycling & waste management upgrades
Local arts & culture festival funding
Thompson Street renovation updates
Climate action target discussions"

# Read the image from the local directory
image_path <- here("data", image_name)
image <- image_read(image_path)

# make right size/ratio for instagram
image <- image %>%
  #image_crop("1:1") %>%     # Crop to 1:1 aspect ratio
  image_resize("1080x1080") # Resize to 1080x1080

# Overlay the text on the image
image_with_text <- image %>%
  image_annotate(
    text = image_text,
    gravity = "center",            # Position of the text
    location = "+0+0",            # Offset from the center
    size = 40,                    # Font size (you can adjust as needed)
    font = "Arial",               # Set to a specific font if needed
    color = "black",              # Font color
    strokecolor = "black",        # Font border color
    boxcolor = "rgba(255, 255, 255, 0.9)"  # Semi-transparent white background box color
  )

# Save the image with overlaid text
image_write(image_with_text, here("output", "annotated_image.jpg"))
