*1. Create the first .do file, read .csv files

*Load csv files
import delimited "C:\Users\Milto_Sergei\Assignment_coding\data\raw/stock-prices-daily", clear

*Changing a datatype
gen stata_date = date(date, "YMD")
format stata_date %td

* Checking missing values
tab p_msft  if missing()
#sum year, detail

*Filtering and keeping necessary variables (There's no need to tranform them actually)
keep if year >= 2000
sum p_msft, detail
drop if p_msft < `r(p1)'
tostring month, replace
replace month = "January" if month == "1"

*Saving the data
save "data/clean/clean_data.dta", replace