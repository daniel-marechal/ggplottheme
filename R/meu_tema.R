require(ggplot2)

cat <- c("#35618f", "#1c5e39", "#e13224", "#de2b71", "#3444bc", "#8d630a")

low <- "#cde4ff"

high <- "#254364"

single <- c("#35618f",
            "#4c729e",
            "#6184ae",
            "#7697be",
            "#8caace",
            "#a1bdde",
            "#b7d0ee",
            "#cde4ff")[8:1]

div <- c("#35618f",
         "#6882a7",
         "#95a6bf",
         "#c3cad8",
         "#f1f1f1",
         "#35618f",
         "#f1c6c6",
         "#ec9c9d",
         "#e27076",
         "#d43d51")

my_theme <- function(base_size = 12,
                     title_size = base_size + 6,
                     caption_size = base_size - 4,
                     subtitle_size = base_size + 4,
                     facet_text_size = base_size,
                     facet_text_color = "#FEFFFE",
                     facet_fill = "#254364",
                     facet_border = "white") {
  ggplot2::theme_minimal() +
    ggplot2::theme(
      text = element_text(size = base_size, color = "#1A3047"),
      plot.title = element_text(size = title_size, face = "bold", hjust = 0.5),
      plot.caption = element_text(size =caption_size),
      plot.subtitle = element_text(size = subtitle_size, hjust = 0.5),
      legend.position = "bottom",
      strip.text.x = element_text(
        size = facet_text_size, color = facet_text_color,
        face = "bold"),
      strip.text.y = element_text(
        size = facet_text_size, color = facet_text_color,
        face = "bold"),
      strip.background = element_rect(
        color=facet_border, fill=facet_fill, size=2, linetype="solid"))}


scale_fill_categorical <- ggplot2::scale_fill_manual(values = cat)

scale_color_categorical <- ggplot2::scale_color_manual(values = cat)


