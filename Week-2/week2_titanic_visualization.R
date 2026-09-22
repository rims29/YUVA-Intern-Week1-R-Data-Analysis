# YUVA Intern - Week 2: Data Visualization and Insight Communication using R
# Dataset: Titanic passenger dataset

library(ggplot2)
library(dplyr)

titanic <- read.csv("titanic_raw.csv", stringsAsFactors = FALSE)

# Basic overview
dim(titanic)
str(titanic)
summary(titanic)

# 1. Bar chart: survival rate by sex
sex_summary <- titanic %>%
  group_by(Sex) %>%
  summarise(SurvivalRate = mean(Survived, na.rm = TRUE) * 100)

ggplot(sex_summary, aes(x = Sex, y = SurvivalRate)) +
  geom_col() +
  labs(title = "Survival Rate by Sex",
       x = "Sex", y = "Survival Rate (%)")

# 2. Bar chart: survival rate by passenger class
class_summary <- titanic %>%
  group_by(Pclass) %>%
  summarise(SurvivalRate = mean(Survived, na.rm = TRUE) * 100)

ggplot(class_summary, aes(x = factor(Pclass), y = SurvivalRate)) +
  geom_col() +
  labs(title = "Survival Rate by Passenger Class",
       x = "Passenger Class", y = "Survival Rate (%)")

# 3. Histogram: age distribution
ggplot(titanic, aes(x = Age)) +
  geom_histogram(bins = 25, na.rm = TRUE) +
  labs(title = "Age Distribution of Passengers",
       x = "Age", y = "Number of Passengers")

# 4. Scatter plot: age vs fare
ggplot(titanic, aes(x = Age, y = Fare, shape = factor(Survived))) +
  geom_point(alpha = 0.55, na.rm = TRUE) +
  labs(title = "Age vs Fare by Survival Status",
       x = "Age", y = "Fare", shape = "Survived")

# 5. Line chart: survival rate by age group
titanic$AgeGroup <- cut(
  titanic$Age,
  breaks = c(0,10,20,30,40,50,60,70,80),
  right = FALSE
)

age_summary <- titanic %>%
  group_by(AgeGroup) %>%
  summarise(SurvivalRate = mean(Survived, na.rm = TRUE) * 100)

ggplot(age_summary, aes(x = AgeGroup, y = SurvivalRate, group = 1)) +
  geom_line() +
  geom_point() +
  labs(title = "Survival Rate Across Age Groups",
       x = "Age Group", y = "Survival Rate (%)")

# Optional: save the analytical summary
write.csv(sex_summary, "week2_sex_summary.csv", row.names = FALSE)
write.csv(class_summary, "week2_class_summary.csv", row.names = FALSE)
write.csv(age_summary, "week2_age_summary.csv", row.names = FALSE)
