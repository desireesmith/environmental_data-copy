
#Desiree Smith
#Lab 10


# Question 1

# number comparison tolerance
digits_check = 5

# Build the reference model using R functions
fit_1 = lm(p.cut ~ rope.type, data=rope)
anova(fit_1)
anova_fit_1 = anova(fit_1)

# Check degrees of freedom
anova_fit_1$Df == c(df_among, df_within)

# Check sums of squares
round(anova_fit_1$`Sum Sq`, digits = digits_check) == round(c(ss_among, ss_within), digits = digits_check)

# Check mean squares
round(anova_fit_1$`Mean Sq`, digits = digits_check) == round(c(ms_among, ms_within), digits = digits_check)

# Check the F-ratio
round(anova_fit_1$`F value`[1], digits = digits_check) == round(f_ratio, digits = digits_check)

# Check the F test statistic p-value
round(anova_fit_1$`Pr(>F)`[1], digits = digits_check) == round(f_pval, digits = digits_check)



# Question 2
Examine the conditional boxplot in the Partitioning Variance: Within-Group section of the walkthrough. Based on the figure, do you think there are equal variances among the groups?
  
  The variances among the groups are not equal. The sizes of the boxplots are different.

# Question 3
Conduct a Bartlett test to assess the homoteneity of variances in the rope type 
groups. Report the p-value.


bartlett.test(agg_resids$x, data = rope)
p-value = 0.00143

### Question 4
Given your graphical assessment (question 2) and the Bartlett test, do you think
an ANOVA-type analysis is appropriate on the raw data? Explain why or why not.

By assessing the graph and Bartlett test I can see that the the variance is not 
equal across all groups.So it may not be appropriate for raw data.


### Question 5
Which rope type is the base case?
  
fit_rope_1 = lm(p.cut ~ rope.type, data = rope)
summary(fit_rope_1)

# BLAZE is the base case

# Question 6
What is the mean percent cut of the base case rope? Show your calculation using 
value(s) from the model coefficient table

The mean percent cut is the intercept which equals 0.36714.

#Question 7
What is the mean percent cut rope type XTC? Show your calculation using value(s)
from the model coefficient table


(0.36714 - 0.10164) 

0.2655


#Walk through

require("here")
rope = rope = read.csv(here("data", "rope.csv"))
rope2 = rope$rope.type = factor(rope$rope.type)


summary(rope$rope.type)

n_obs = nrow(rope)

level = levels(rope$rope.type)
n_groups = length(level)


ss_tot = sum((pcut - mean(pcut))^2)

#1
df_tot = (n_obs - 1)

agg_sq_resids = agg_sq_resids = aggregate(
  x = rope$p.cut,
  by = list(rope$rope.type),
  FUN = function(x) sum((x - mean(x))^2))

ss_within = sum(agg_sq_resids$x)
df_within = n_obs - n_groups
df_within

ss_among = ss_among = ss_tot - ss_within
ss_among
df_among = n_groups - 1

ms_within = ms_within = ss_within / (n_obs - n_groups)
ms_among  = ms_among  =  ss_among / (n_groups - 1)

f_ratio = ms_among/ms_within

f_pval = 1 - pf(f_ratio, df_among, df_within)
f_pval


require("here")
rope = read.csv(here("data", "rope.csv"))
head(rope)

#n_groups
level = levels(rope$rope.type)
length(level)

#pcut
pcut = rope$p.cut
sumpcut = sum(rope$p.cut)
sum((pcut - mean(pcut))^2)

#agg
aggregate(
  x = rope$p.cut,
  by = list(rope$rope.type), 
  FUN = mean)

agg = aggregate(
  x = rope$p.cut,
  by = list(rope$rope.type),
  FUN = function(x) mean(x))

agg_resids = aggregate(
  x = rope$p.cut,
  by = list(rope$rope.type),
  FUN = function(x) x - mean(x))

str(agg_resids)

agg_sq_resids = aggregate(
  x = rope$p.cut,
  by = list(rope$rope.type),
  FUN = function(x) sum((x - mean(x))^2))

str(agg_sq_resids)

levelagg = levels(agg_sq_resids)
length(levelagg)

sum(agg_sq_resids$x)



fit_1 = lm(p.cut ~ rope.type, data=rope)
anova(fit_1)

anova_fit_1 = anova(fit_1)
str(anova_fit_1)

anova_fit_1$"Sum Sq"
