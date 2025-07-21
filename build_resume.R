# build_resume.R

# Ensure output folder exists
if (!dir.exists("docs")) dir.create("docs")

# Render HTML into docs/
rmarkdown::render(
  "resume.Rmd",
  output_file = "docs/index.html"
)

# Generate PDF version into docs/
pagedown::chrome_print(
  input = "docs/index.html",
  output = "docs/resume.pdf"
)
