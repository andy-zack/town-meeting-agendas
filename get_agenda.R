# Install the stringr package if not already installed
if (!requireNamespace("stringr", quietly = TRUE)) {
  install.packages("stringr")
}

# Load the stringr package
library(stringr)

# Sample text (replace this with the actual text extracted from the PDF)
text <- "
1. Call to Order
2. Approval of Minutes
3. Public Comments
4. Old Business
5. New Business
   a. Item 5a
   b. Item 5b
6. Adjournment
"

# Extract the agenda using a regular expression
# This regex looks for lines starting with a number followed by a period, capturing until the next such line or the end of the string
agenda_items <- str_extract_all(text, "\\d+\\..*?(?=\\d+\\.|$)", simplify = TRUE)

# Print the extracted agenda items
cat(agenda_items, sep = "\n")
