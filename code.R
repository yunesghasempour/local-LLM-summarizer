# Load necessary libraries
library(httr)
library(pdftools)
library(jsonlite)

OLLAMA_MODEL <- "deepseek-r1:1.5b"  # Name of the model in Ollama

# Function to extract text from a PDF file
extract_text_from_pdf <- function(pdf_path) {
  text <- pdf_text(pdf_path)
  text_combined <- paste(text, collapse = "\n")
  return(text_combined)
}

# Function to summarize text with Ollama
summarize_text <- function(text) {
  url <- "http://localhost:11434/api/generate"
  headers <- add_headers("Content-Type" = "application/json")
  
  payload <- list(
    model = as.character(OLLAMA_MODEL),
    prompt = paste("Please summarize the following text:\n", text),
    stream = FALSE
  )
  
  response <- POST(url, headers, body = toJSON(payload), encode = "json")
  
  if (status_code(response) == 200) {
    content_response <- content(response, as = "parsed", type = "application/json")
    return(content_response$response)
  } else {
    return(paste("Error in getting response:", content(response, "text")))
  }
}

# Example usage
pdf_path <- "your_file.pdf"
text <- extract_text_from_pdf(pdf_path)
if (nchar(text) > 0) {
  summary <- summarize_text(text)
  cat("### Article Summary ###\n")
  cat(summary)
} else {
  cat("Error in extracting text from the PDF.\n")
}
