# Exploratory-Analysis-for-origin-of-wine


##  Wine Origin Analysis – Exploratory Data Insights & Feature Selection

This repository presents an **exploratory data analysis (EDA)** of a classical wine dataset to identify key chemical features for predicting wine cultivar origins. Conducted as part of MIE 621 – *Descriptive Analytics* at the University of Massachusetts Amherst, the study uses visual and statistical methods to evaluate the predictive potential of variables such as **alcohol concentration**, **magnesium levels**, and **color intensity** across three wine types.



### Objective

To identify the most relevant chemical indicators for determining the **origin of wine cultivars** and lay the foundation for further **machine learning-based classification**.


###  Tools & Techniques Used

- **Language:** Python / R (if applicable in future extensions)
- **Statistical Analysis:** Pearson Correlation Coefficient (`r`)
- **Visualization Techniques:**  
  - Histograms for distribution overlap  
  - Scatter plots for variable relationships
- **EDA Framework:**
  - Univariate distribution analysis  
  - Bivariate correlation matrix  
  - Visual confirmation via plots



###  Key Findings

- **Alcohol concentration** is the strongest standalone predictor:
  - High correlation with color intensity (r ≈ 0.55)
  - Minimal histogram overlap across wine classes
- **Color intensity** is moderately predictive and supports alcohol as a secondary predictor.
- **Magnesium** showed low predictive power:
  - Weak correlations (r < 0.3)
  - High class distribution overlap

These findings guide feature selection for potential supervised learning models in future work.


###  Applications & Next Steps

- Use alcohol and color intensity in **classification models** (e.g., Logistic Regression, KNN, SVM)
- Expand analysis with dimensionality reduction (PCA, LDA)
- Apply **multivariate feature selection** for optimal classifier performance

