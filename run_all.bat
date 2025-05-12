@echo off
setlocal

echo Running all notebooks...

call venv\Scripts\activate

set NOTEBOOKS=^
notebook\Data-Cleaning\All_Product_API_Data_Cleaning.ipynb ^
notebook\Data-Cleaning\Ulta_API_Data_Cleaning.ipynb ^
notebook\Data-Loading\RDS_Setup_and_Load_Data.ipynb ^
notebook\Data-Retrieval\All_Web_SQL_Analysis.ipynb ^
notebook\Data-Retrieval\Ulta_Web_Scrape_SQL_Analysis.ipynb

for %%f in (%NOTEBOOKS%) do (
    echo Executing %%f...
    jupyter nbconvert --to notebook --execute --inplace --ExecutePreprocessor.timeout=-1 "%%f"
)

echo All notebooks executed successfully!

endlocal
