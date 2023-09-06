
# Summary -----------------------------------------------------------------
# This is currently just an overall framework for the tool. 
# It does not actually do anything right now.

meeting_packet_pdf <- get_meeting_packet_pdf()

meeting_packet_text <- parse_packet_pdf(pdf)

agenda <- get_agenda(meeting_packet_text)

agenda_summary <- summarize_agenda(agenda)

summary_image <- make_summary_image(agenda_summary)

instagram_post(summary_image)