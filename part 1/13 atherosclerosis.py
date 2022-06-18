import pandas as pd
import statsmodels.api as sm
from statsmodels.formula.api import ols

df = pd.read_csv("13 atherosclerosis.csv")

model = ols("expr ~ age + dose", data=df).fit()
table = sm.stats.anova_lm(model, typ=2)

print(table)
