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
  ggplot(
    aes(
      x = pregnancy_status,
      y = FactValueNumeric,
      fill = pregnancy_status
    )
  ) +
  geom_boxplot() +
  labs(
    title = "Anaemia Prevalence by Pregnancy Status",
    x = "Pregnancy Status",
    y = "Anaemia Prevalence (%)"
  ) +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 75, hjust = 1))