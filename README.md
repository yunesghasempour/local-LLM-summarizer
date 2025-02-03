# Local LLM Summarization Tool

This project explores the use of local LLMs (Large Language Models) for text summarization, specifically focusing on summarizing PDF documents. Using the powerful open-source model **DeepSeek r1|1.5b** via the **Ollama** platform, this tool demonstrates how LLMs can be run efficiently on a simple local machine without relying on cloud-based services. The project highlights the benefits of running models locally, such as improved privacy, lower latency, and no need for continuous internet access.

## Key Features

- **Local LLM Summarization**: Summarizes PDF text using the DeepSeek r1|1.5b model offline.
- **PDF Processing**: Extracts and summarizes text from PDF files.
- **Open Source**: Built with open-source tools, ensuring accessibility and transparency.
- **Easy Setup**: Simple steps to set up the model on your local machine.

## How It Works

1. **Install Ollama** and the **DeepSeek r1|1.5b** model on your local system.
2. **Extract text** from a PDF file using the `pdftools` library in R.
3. **Generate a summary** of the extracted text using the DeepSeek model running locally.

## Prerequisites

Before running the project, make sure you have the following installed:

- [Ollama](https://ollama.com/) - A platform to run LLMs locally.
- DeepSeek r1|1.5b model (make sure it's available in Ollama).
- [R](https://cran.r-project.org/) and required R packages:
  - `httr`
  - `pdftools`
  - `jsonlite`

## Installation Instructions

1. **Install Ollama**: Download and install the Ollama platform on your local machine. Follow the [installation guide](https://ollama.com/) on their website.

2. **Install Required R Packages**:
   Open R or RStudio and run the following commands:

   ```R
   install.packages("httr")
   install.packages("pdftools")
   install.packages("jsonlite")
