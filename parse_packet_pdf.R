# Load the pdftools library
library(pdftools)

# Specify the path to the PDF file
pdf_file <- "packet.pdf"

# Extract text from each page of the PDF
text_per_page <- pdf_text(pdf_file)

# Check if text is extracted
# if(length(text_per_page) > 0 && nchar(text_per_page[1]) > 0) {
#   cat("Text extracted from the first page:", "\n")
#   cat(substr(text_per_page[1], 1, 500), "...", "\n")  # Print the first 500 characters of the first page
# } else {
#   cat("No text extracted from the PDF.", "\n")
# }

# Concatenate the text from all pages into a single string
all_text <- paste(text_per_page, collapse = "\n")

# Return the extracted text as a string
all_text
