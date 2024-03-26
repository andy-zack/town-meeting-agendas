# Town Meeting Agendas

## Overview

This repository contains a collection of scripts and tools for downloading, extracting, and analyzing town meeting agendas. The primary focus is on the agendas from the Carbondale town government website, but the tools can potentially be adapted for use with other similar websites.

## Project Structure

- `get_meeting_packet.R`: An R script for downloading the most recent agenda from the Carbondale town government website.
- `parse_packet_pdf.R`: An R script for extracting text from a downloaded PDF agenda.
- `post_to_instagram.R`: An R script for posting to instagram.
- `create_image.R`: An R script that takes an image, formats it for Instagram, and overlays text on top of it.
- (more coming soon!)


##  Required R Packages

```r
install.packages("rvest")
install.packages("pdftools")
install.packages("stringr")
install.packages("here")
install.packages("magick")
```
