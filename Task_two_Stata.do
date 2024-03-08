*Task two.

*Renaming the variable
rename p_msft price_microsoft
rename p_sp500 price_sandp_500

*Correlation and a linear regression (although it doesn't make much sense)

pwcorr price_microsoft price_sandp_500
reg price_microsoft price_sandp_500

*Plotting prices against each other
scatter price_sandp_500 price_microsoft