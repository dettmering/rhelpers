#' Theme for ggplot 2, modified from theme_bw
#' @export

theme_bw2 <- function(base_size = 12, base_family = "") {
        # Starts with theme_grey and then modify some parts
        theme_grey(base_size = base_size, base_family = base_family) %+replace%
                theme(
                        axis.text         = element_text(size = rel(0.8)),
                        axis.ticks        = element_line(colour = "black"),
                        legend.key        = element_rect(colour = "grey80"),
                        panel.background  = element_rect(fill = "white", colour = NA),
                        panel.border      = element_rect(fill = NA, colour = "black", size = 1),
                        panel.grid.major  = element_blank(),
                        panel.grid.minor  = element_blank(),
                        strip.background  = element_rect(fill = "grey80", colour = "grey50", size = 0.2)
                )
}