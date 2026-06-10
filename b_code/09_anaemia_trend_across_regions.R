Nutrition %>%
  group_by(ParentLocation, Period) %>%
  summarise(
    mean_anaemia = mean(FactValueNumeric),
    .groups = "drop"
  ) %>%
  ggplot(
    aes(
      x = Period,
      y = mean_anaemia,
      color = ParentLocation
    )
  ) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 2) +
  labs(
    title = "Trend of Anaemia Prevalence Across Regions",
    x = "Year",
    y = "Average Anaemia Prevalence"
  ) +
  theme_minimal()