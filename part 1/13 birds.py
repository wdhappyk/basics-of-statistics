import pandas as pd
import statsmodels.api as sm
from statsmodels.formula.api import ols

df = pd.read_csv("13 birds.csv")

model = ols("var4 ~ hormone + sex + hormone:sex", data=df).fit()
table = sm.stats.anova_lm(model, typ=2)

print(table)
