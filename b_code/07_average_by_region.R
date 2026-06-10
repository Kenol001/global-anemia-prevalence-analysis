region_summary <- Nutrition %>%
  group_by(ParentLocation, Dim2) %>%
  summarise(
    avg_anaemia = mean(FactValueNumeric),
    .groups = "drop"
  )