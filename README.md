## Bankruptcy Forecasting of Italian Companies using Survival Analysis Models

This repository contains the code and documentation for a project completed as part of the master course in Models and Technology for the Financial Industry, within the Master's Degree in Data Analytics for Business and Society at Ca' Foscari University of Venice.

The project focuses on predicting the likelihood of bankruptcy for Italian companies using survival analysis models, specifically targeting the time-to-default prediction. Various models, including Cox proportional hazards, Cox with penalized models (elasticnet), survival trees, and survival random forest, were employed to perform the forecasting.


### Data Source

The data utilized in this project were sourced from the AIDA database, which houses comprehensive information on Italian companies. Companies were filtered based on financial ratios from the years 2014 and 2015, ensuring relevance and reliability. All companies included in the study were active in 2015.


### Description

The time frame for the study spans from 2016 to 2020. The assumption of default is based on the year following the publication of the last balance sheet, with companies classified as default if their actual status is failed. If a company's actual status remains active but its last balance sheet falls within the study period, it is considered censored and excluded from further analysis.


### Repository Contents:

Code: Contains Python scripts implementing survival analysis models and data preprocessing steps. Notebooks are numbered sequentially to guide users through the process (e.g., 1-preparation.ipynb, 2-descriptive.ipynb).

Data: Includes datasets extracted from the AIDA database, cleaned and formatted for analysis.

Results: Outputs, including model predictions, evaluation metrics, and visualizations.

Dependencies: Lists required libraries and dependencies for replicating the environment. Users are advised to install dependencies using requirements.txt before running the notebooks.


### Usage

- Clone or download the repository.

- Install necessary dependencies using ´pip install -r requirements.txt´.

- Run the Jupyter notebooks in sequential order to execute data preprocessing, model training, and evaluation. Start with preparation for data cleaning, followed by descriptive analysis, and proceed accordingly.

- Refer to the documentation for detailed insights into methodology, results, and interpretation.