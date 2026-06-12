# ANOVA and Tukey HSD Analysis
# Examining differences in anemia prevalence across population groups.
# ANOVA Test

# Fit ANOVA model
anova_result <- aov(
  FactValueNumeric ~ Dim2,
  data = Nutrition
)

# View ANOVA model summary
anova_result

# ANOVA table
summary(anova_result)

# Tukey HSD post-hoc test
TukeyHSD(anova_result)