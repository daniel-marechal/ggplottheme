require(dplyr)
require(ggplot2)
require(showtext)

add_fonts <- function() {

  font_add("rawline", "rawline-400.ttf")

  font_add("rawline_bold", "rawline-700.ttf")

  showtext_auto()

}


cat <- c("#00D000", "#ffd000", "#183EFF", "#FF0000",
                  "#f8008e", "#bd00d8", "#bf9300",
                  "#ff8700")

low <- "#ede6ff"

high <- "#183eff"

div <- c("#183eff",
                  "#645bfe",
                  "#8b77fc",
                  "#aa95fa",
                  "#c4b3f8",
                  "#dbd1f5",
                  "#f1f1f1",
                  "#fed3c8",
                  "#ffb6a1",
                  "#ff977b",
                  "#ff7656",
                  "#ff5030",
                  "#ff0000")


my_theme <- function(base_size = 12,
                     title_size = base_size + 6,
                     caption_size = base_size - 4,
                     subtitle_size = base_size + 4,
                     facet_text_size = base_size,
                     facet_text_color = "#FFFFFF",
                     facet_fill = "#3C3C3C",
                     facet_border = "#FFFFFF") {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      text = element_text(size = base_size, color = "#3C3C3C"),
      plot.title = element_text(size = title_size, face = "bold", hjust = 0.5,
                                family = "rawline_bold"),
      plot.caption = element_text(size =caption_size,
                                  family = "rawline"),
      plot.subtitle = element_text(size = subtitle_size, hjust = 0.5,
                                   family = "rawline"),
      legend.position = "bottom",
      strip.text.x = element_text(
        size = facet_text_size, color = facet_text_color,
        family = "rawline"),
      strip.text.y = element_text(
        size = facet_text_size, color = facet_text_color,
        family = "rawline"),
      strip.background = element_rect(
        color=facet_border, fill=facet_fill, size=2, linetype="solid"))}

