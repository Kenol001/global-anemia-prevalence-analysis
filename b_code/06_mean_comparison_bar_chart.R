Nutrition %>%
  filter(
    Dim2ValueCode %in% c(
      "PREGNANCYSTATUS_PREGNANT",
      "PREGNANCYSTATUS_NONPREGNANT"
    )
  ) %>%
  mutate(
    pregnancy_status = case_when(
      Dim2ValueCode == "PREGNANCYSTATUS_PREGNANT" ~ "Pregnant",
      Dim2ValueCode == "PREGNANCYSTATUS_NONPREGNANT" ~ "Non-pregnant"
    )
  ) %>%
  group_by(pregnancy_status) %>%
  summarise(mean_value = mean(FactValueNumeric)) %>%
  ggplot(
    aes(
      x = pregnancy_status,
      y = mean_value,
      fill = pregnancy_status
    )
  ) +
  geom_col() +
  labs(
    title = "Average Anaemia Prevalence by Pregnancy Status",
    x = "Pregnancy Status",
    y = "Average Prevalence"
  ) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 75, hjust = 1))