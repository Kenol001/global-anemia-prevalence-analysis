Nutrition %>%
  filter(ParentLocation %in% c("Africa", "Europe")) %>%
  group_by(ParentLocation, Period) %>%
  summarise(
    avg_anaemia = mean(FactValueNumeric),
    .groups = "drop"
  ) %>%
  ggplot(
    aes(
      x = Period,
      y = avg_anaemia,
      color = ParentLocation
    )
  ) +
  geom_line(linewidth = 1.5) +
  geom_point(size = 3) +
  labs(
    title = "Africa vs Europe Anaemia Trend",
    x = "Year",
    y = "Average Anaemia Prevalence"
  ) +
  theme_bw()