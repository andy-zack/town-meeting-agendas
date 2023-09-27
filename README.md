# Town Meeting Agendas

## Overview

This repository contains a collection of scripts and tools for downloading, extracting, and analyzing town meeting agendas. The primary focus is on the agendas from the Carbondale town government website, but the tools can potentially be adapted for use with other similar websites.

## Project Structure

- `download_agendas.R`: An R script for downloading the most recent agenda from the Carbondale town government website.
- `extract_text_from_pdf.R`: An R script for extracting text from a downloaded PDF agenda.
- `extract_agenda_items.R`: An R script for extracting individual agenda items from the extracted text (coming soon).
- `analyze_agenda_items.R`: An R script for analyzing and visualizing the extracted agenda items (coming soon).

## Setup

### 1. Clone the Repository

Clone this repository to your local machine using:

```sh
git clone https://github.com/andy-zack/town-meeting-agendas.git
```

### 2. Install R
If you haven't already, install R from [CRAN](https://cran.r-project.org/).

### 3. Install Required R Packages
Open R and install the required packages using the following commands:

```r
install.packages("rvest")
install.packages("pdftools")
install.packages("stringr")
```

### 4. Run the Scripts
 - Run download_agendas.R to download the most recent agenda.
 - Run extract_text_from_pdf.R to extract text from the downloaded PDF.
 - (Additional scripts and instructions will be added as the project progresses.)
