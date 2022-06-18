import pandas as pd
import scipy.stats as stats
import statsmodels.api as sm
from statsmodels.formula.api import ols

data = pd.read_csv("11 genetherapy.csv")

grouped = data.groupby("Therapy")

keys = grouped.groups.keys()
means = grouped.mean()["expr"]
counts = grouped.count()["expr"]

xs = data["expr"]
N = xs.count()
m = len(keys)

mean_all = xs.mean()

SST = sum([(n - mean_all) ** 2 for n in xs])
df = xs.count() - 1

SSW = sum([(n - means[g])**2 for g in keys for n in grouped.get_group(g)["expr"]])
df_wg = N - m

SSB = sum([grouped.get_group(g)["expr"].count() * (means[g] - mean_all)**2 for g in keys])
df_bg = m - 1

F = (SSB / df_bg) / (SSW / df_wg)

p = stats.f.sf(F, df_bg, df_wg)

print(F, p)

# or use scipy.stats.f_oneway
print('----------------------------------')
print(stats.f_oneway(*grouped["expr"].apply(list)))

# or use statsmodels
print('----------------------------------')
lm = ols("expr ~ Therapy", data=data).fit()
table = sm.stats.anova_lm(lm)
print(table)

