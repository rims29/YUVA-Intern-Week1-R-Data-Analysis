# YUVA Intern – Week 1: Data Cleaning and Preliminary Analysis with R

## 📌 Project Overview

This project was completed as part of the **YUVA Intern Week 1 Task: Data Cleaning and Preliminary Analysis with R**.

The objective is to perform a complete beginner-level data analysis workflow using a publicly available dataset. The project covers data inspection, cleaning, missing-value treatment, outlier detection, normalization, categorical encoding, descriptive statistics, correlation analysis, visualization, and initial insights.

---

## 🎯 Objectives

- Select a publicly available dataset suitable for data analysis.
- Inspect the structure and quality of the dataset.
- Handle missing values.
- Check for duplicate records.
- Detect potential outliers.
- Normalize numerical variables.
- Encode categorical variables.
- Generate descriptive statistics.
- Perform correlation analysis.
- Create meaningful visualizations.
- Document the complete analysis using R.

---

## 📊 Dataset

**Dataset:** Titanic Passenger Dataset

The dataset contains information about passengers who travelled on the Titanic.

### Main variables

| Variable | Description |
|---|---|
| PassengerId | Unique passenger identifier |
| Survived | Survival status: 0 = No, 1 = Yes |
| Pclass | Passenger class |
| Name | Passenger name |
| Sex | Passenger sex |
| Age | Passenger age |
| SibSp | Number of siblings/spouses aboard |
| Parch | Number of parents/children aboard |
| Ticket | Ticket number |
| Fare | Ticket fare |
| Cabin | Cabin information |
| Embarked | Port of embarkation |

The dataset contains **891 passenger records** and includes both numerical and categorical variables.

### Dataset Source

- https://github.com/datasciencedojo/datasets/blob/master/titanic.csv

---

## 🧹 Data Cleaning

The following cleaning steps were performed:

### Missing Values

- Missing `Age` values were replaced with the median age.
- Missing `Embarked` values were replaced with the most frequent category.
- Missing `Cabin` values were replaced with `Unknown`.

### Duplicate Records

The dataset was checked for exact duplicate rows. No duplicate records were found.

### Outlier Detection

The **Interquartile Range (IQR)** method was used to identify potential outliers in the `Fare` variable.

Outliers were flagged instead of being automatically deleted because unusually high fares may represent genuine passenger records.

---

## 🔄 Data Transformation

Additional variables were created for analysis:

- `Age_clean`
- `Embarked_clean`
- `Cabin_clean`
- `FamilySize`
- `IsAlone`
- `Age_scaled`
- `Fare_scaled`
- `Sex_encoded`
- Embarked dummy variables
- `Fare_outlier`

### Feature Engineering

`FamilySize` was calculated as:

```text
FamilySize = SibSp + Parch + 1
```

`IsAlone` identifies passengers travelling without other listed family members.

---

## 📈 Exploratory Data Analysis

The following analyses were performed:

- Overall survival distribution
- Survival rate by sex
- Survival rate by passenger class
- Fare distribution
- Descriptive statistics
- Correlation analysis

### Initial Findings

- The dataset contains 891 passenger records.
- There are no exact duplicate rows.
- `Cabin` contains a large number of missing values.
- `Age` also contains missing observations.
- Fare values contain a right-skewed distribution with high-value observations.
- Survival rates differ across passenger sex and passenger class.
- These findings are descriptive associations and should not be interpreted as causal conclusions.

---

## 📊 Visualizations

The project includes the following visualizations:

1. **Overall Survival Count**
2. **Survival Rate by Sex**
3. **Survival Rate by Passenger Class**
4. **Fare Distribution**

---

## 🛠️ Tools & Technologies

- **R**
- **RStudio**
- **ggplot2**
- **dplyr**
- CSV Dataset
- Data Cleaning
- Exploratory Data Analysis
- Statistical Summary
- Data Visualization

---

## 📁 Project Structure

```text
YUVA-Intern-Week1-R-Data-Analysis/
│
├── README.md
├── week1_titanic_analysis.R
├── titanic_raw.csv
├── titanic_cleaned.csv
├── YUVA_Intern_Week1_Titanic_Report.docx
│
├── 01_survival_count.png
├── 02_survival_by_sex.png
├── 03_survival_by_class.png
└── 04_fare_distribution.png
```

---

## ▶️ How to Run the Project

1. Install **R** and **RStudio**.
2. Download or clone this repository.
3. Open `week1_titanic_analysis.R` in RStudio.
4. Keep the dataset in the same working directory.
5. Install required packages if necessary:

```r
install.packages("ggplot2")
install.packages("dplyr")
```

6. Run the R script from top to bottom.
7. The script performs cleaning, transformation, analysis and visualization.

---

## 📄 Deliverables

The repository contains:

- Complete R analysis code
- Raw dataset
- Cleaned dataset
- Visualizations
- Detailed DOCX report
- Project documentation

---

## 👩‍💻 Internship Task

**Program:** YUVA Intern  
**Task:** Week 1 – Data Cleaning and Preliminary Analysis with R  
**Focus:** Data Cleaning, Preprocessing and Exploratory Data Analysis

