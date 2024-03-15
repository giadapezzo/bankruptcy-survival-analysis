## Bankruptcy Forecasting of Italian Companies using Survival Analysis Models

This repository contains the code and documentation for a project completed as part of the master course in Models and Technology for the Financial Industry, within the Master's Degree in Data Analytics for Business and Society at Ca' Foscari University of Venice.

The project focuses on predicting the likelihood of bankruptcy for Italian companies using survival analysis models, specifically targeting the time-to-default prediction. Various models, including Cox proportional hazards, Cox with penalized models (elasticnet), survival trees, and survival random forest, were employed to perform the forecasting.

This project is primarily for visualization purposes. Unfortunately, we cannot publish the dataset due to privacy concerns. If you have any questions or feedback, feel free to reach out to us.

This project was a collaborative effort between myself and my colleague [Giacomo Sarrocco](https://github.com/gsarrco). Contributions and feedback from both contributors were instrumental in its completion.


### Data Source

The data utilized in this project were sourced from the AIDA database, which houses comprehensive information on Italian companies. Companies were filtered based on financial ratios from the years 2014 and 2015, ensuring relevance and reliability. All companies included in the study were active in 2015.


### Description

The time frame for the study spans from 2016 to 2020. The assumption of default is based on the year following the publication of the last balance sheet, with companies classified as default if their actual status is failed. If a company's actual status remains active but its last balance sheet falls within the study period, it is considered censored and excluded from further analysis.


### Repository Contents:

Code: Contains Python scripts implementing survival analysis models and data preprocessing steps. Notebooks are numbered sequentially to guide users through the process (e.g., 1-preparation.ipynb, 2-descriptive.ipynb).

Data: Contains a dataset extracted from the AIDA database, formatted for analysis purposes. Regrettably, due to privacy concerns, we are unable to publish the dataset.

Results: Outputs, including model predictions, evaluation metrics, and visualizations.