1. create a new repository on your GitHub (dbt_ecommerce for my case).
2. Create a new folder and clone the new repo your local machine with git clone. 
3. CD to the new repo that you just cloned (dbt_ecommerce).
4. Create virtual environment with the following command: python3.8 -m venv my_dbt_env.
5. Make git ignore all the newly created files with the following command: echo 'my_dbt_env/' > .gitignore.
6. Make sure you have the latest versions of pip: Before installing dbt, pip install --upgrade pip wheel setuptools.
7. Create requirements.txt inside dbt_ecommerce repo and list down dbt packages/adapters that you want to install. In my case its dbt-postgres.
8. Run pip install -r requirements.txt to install the packages.
9. Initialize your dbt project with dbt init and complete the setup.
10. Ensure your profile is setup correctly with the following command: dbt debug.
11. If all checks have passed, run: dbt run.
12. For more on installing dbt, please visit this guide: https://docs.getdbt.com/docs/get-started/installation.
13.