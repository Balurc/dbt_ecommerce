<!-- # dbt_ecommerce -->
This repo contains my dbt project using Brazilian ecommerce public dataset by Olist.


# Initial dbt setups
1. create a new repository on your GitHub (dbt_ecommerce for my case).
2. Create a new folder and clone the new repo your local machine with git clone. 
3. CD to the new repo that you just cloned (dbt_ecommerce).
4. Create virtual environment with the following command: python3.8 -m venv my_dbt_env.
   source my_dbt_env/bin/activate -- to activate your env.
   deactivate -- to deactivate your env.
5. Make git ignore all the newly created files with the following command: echo 'my_dbt_env/' > .gitignore.
6. Make sure you have the latest versions of pip: Before installing dbt, pip install --upgrade pip wheel setuptools.
7. Create requirements.txt inside dbt_ecommerce repo and list down dbt packages/adapters that you want to install. In my case its dbt-postgres.
8. Run pip install -r requirements.txt to install the packages.
9. Initialize your dbt project with dbt init and complete the setup.
10. Ensure your profile is setup correctly with the following command: dbt debug.
11. If all checks have passed, run: dbt run.
12. For more on installing dbt, please visit this guide: https://docs.getdbt.com/docs/get-started/installation.
13. git add ., git commit and git push.


# Import datasets
1. Download the datasets for Olist <a href="https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce">commercial operations here</a> and <a href="https://www.kaggle.com/datasets/olistbr/marketing-funnel-olist">marketing funnel here</a>.
2. Create a database named raw_brazilian_ecommerce. This database will store the raw data that you just downloaded.
3. In the raw_brazilian_ecommerce database, create 2 schemas named; commercial and funnel.
4. Import <a href="https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce">the commercial datasets</a> into raw_brazilian_ecommerce database in commercial schema with <a href="https://github.com/Balurc/dbt_ecommerce/blob/main/load_data_sql_query/commercial/commercial.sql">these SQL queries</a>.
5. Import <a href="https://www.kaggle.com/datasets/olistbr/marketing-funnel-olist">the marketing funnel datasets</a> into raw_brazilian_ecommerce database in funnel schema with <a href="https://github.com/Balurc/dbt_ecommerce/blob/main/load_data_sql_query/funnel/funnel.sql">these SQL queries</a>.
6. The above SQL queries will create a table for each dataset/csv that you have downloaded and load/import the csv (data) with the COPY command to each table.
7. Create a database named analytics_brazilian_ecommerce. This database will store the transformed data.
8. In the analytics_brazilian_ecommerce database, create 2 schemas named; staging and marts. 


# Notes
if .gitignore not working:
- git rm -rf --cached .
- git add .
- git commit -m ".gitignore is now working"
- git push
