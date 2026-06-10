Nutrition <- Nutrition %>%
  mutate(
    ParentLocation = as.factor(ParentLocation),
    Dim2 = as.factor(Dim2),
    Period = as.numeric(Period),
    FactValueNumeric = as.numeric(FactValueNumeric)
  )
