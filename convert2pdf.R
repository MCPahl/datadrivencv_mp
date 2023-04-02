# Knit the HTML version
rmarkdown::render("cv_render.Rmd",
                  params = list(pdf_mode = FALSE),
                  output_file = "matt_pahl_cv.html")

# Knit the PDF version to temporary html location
# use this to replace links with footnotes



pagedown::chrome_print(input = "matt_pahl_cv.html",
                       output = "matt_pahl_cv.pdf",
                       verbose = TRUE
                      )


