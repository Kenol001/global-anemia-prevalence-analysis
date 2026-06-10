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
  summarise(
    mean_anaemia = mean(FactValueNumeric),
    median_anaemia = median(FactValueNumeric),
    sd_anaemia = sd(FactValueNumeric),
    min_anaemia = min(FactValueNumeric),
    max_anaemia = max(FactValueNumeric),
    count = n()
  )