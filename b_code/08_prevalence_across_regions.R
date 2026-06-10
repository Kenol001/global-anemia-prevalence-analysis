ggplot(
  region_summary,
  aes(
    x = ParentLocation,
    y = avg_anaemia,
    fill = Dim2
  )
) +
  geom_col(position = "dodge") +
  labs(
    title = "Anaemia Prevalence Across WHO Regions",
    x = "WHO Region",
    y = "Average Anaemia Prevalence"
  ) +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 75, hjust = 1))