#Load cleaned data
MedExpenses = read.csv("MedExpenses_Final.csv")

#Data Exploration

#check for any missing values
anyNA(MedExpenses) 

#Counting rows with zeros
count_zeros = sum(MedExpenses[["Annual_Income_Dollars"]] == 0)
print(count_zeros) 

#View the data
View(MedExpenses) 

#Summarize the data
summary(MedExpenses)

table(MedExpenses[["Gender"]])
table(MedExpenses[["Education"]])
table(MedExpenses[["Currently_Married"]])
table(MedExpenses[["Race"]])

# 1. Under 18 (Children/Minors)
under_18 = MedExpenses[MedExpenses[, "Age"] < 18, ]
print(nrow(under_18))

# 2. 18 to 64 (Working Age)
adults = MedExpenses[MedExpenses[, "Age"] >= 18 & MedExpenses[, "Age"] <= 64, ]
print(nrow(adults))

# 3. 65 and Above (Seniors)
seniors = MedExpenses[MedExpenses[, "Age"] >= 65, ]
print(nrow(seniors))

#Summarize the numerical variables only
summary(MedExpenses[, c("Age", "Annual_Income_Dollars", "Total_MedExpenses_Dollars", "Number_of_Doctor_Visits", "Number_of_ER_Visits", "Number_of_Nights_in_Hospital")])
 
# 1. Define the columns you want to summarize
cols = c("Age", "Annual_Income_Dollars", "Total_MedExpenses_Dollars", "Number_of_Doctor_Visits", "Number_of_ER_Visits", "Number_of_Nights_in_Hospital")

# 2. Create the table including SD (Standard Deviation)
# This adds a 5th row to your summary
stats_table = sapply(MedExpenses[, cols], function(x) {c(Min = min(x), Max = max(x), Median = median(x), Mean = mean(x), SD = sd(x))})

# 3. Round the entire table to 2 decimal places
stats_table = round(stats_table, 2)
final_table = t(stats_table)

# 4. View the final result
print(final_table)


cor(MedExpenses[["Annual_Income_Dollars"]], MedExpenses[["Total_MedExpenses_Dollars"]])

#Group 2 - independent variable is Annual_Income_Dollars and dependent variable is Total_MedExpenses_Dollars


MedExpenses = read.csv("MedExpenses_Final.csv")
View(MedExpenses) 

#Estimate simple linear regression using the lm() function
#Function syntax: output_name = lm(y ~ x, data = dataset_name )
reg_results = lm(Total_MedExpenses_Dollars ~ Annual_Income_Dollars, data = MedExpenses)
summary(reg_results)

MedExpenses1 = read.csv("MedExpenses_Final.csv")
View(MedExpenses1) 

MedExpenses1[["Gender"]] = factor(MedExpenses1[["Gender"]])
MedExpenses1[["Race"]] = factor(MedExpenses1[["Race"]])
MedExpenses1[["Education"]] = factor(MedExpenses1[["Education"]])
MedExpenses1[["Has_Health_Insurance"]] = factor(MedExpenses1[["Has_Health_Insurance"]])
MedExpenses1[["Currently_Married"]] = factor(MedExpenses1[["Currently_Married"]])



reg_results1 = lm(Total_MedExpenses_Dollars ~ Annual_Income_Dollars + Annual_Income_Dollars*Number_of_Doctor_Visits + Age + Currently_Married  + Education + Gender + Has_Health_Insurance + Race , data = MedExpenses1)
summary(reg_results1)

MedExpenses1 = read.csv("MedExpenses_Final.csv")
View(MedExpenses1) 

MedExpenses1[["Gender"]] = factor(MedExpenses1[["Gender"]])
MedExpenses1[["Race"]] = factor(MedExpenses1[["Race"]])
MedExpenses1[["Education"]] = factor(MedExpenses1[["Education"]])
MedExpenses1[["Has_Health_Insurance"]] = factor(MedExpenses1[["Has_Health_Insurance"]])
MedExpenses1[["Currently_Married"]] = factor(MedExpenses1[["Currently_Married"]])

baseline_reg = lm(Total_MedExpenses_Dollars ~ Annual_Income_Dollars + Number_of_Doctor_Visits + Age + Currently_Married  + Education + Gender + Has_Health_Insurance + Race , data = MedExpenses1)
summary(baseline_reg)

#RESET TEST 
predicted_values = fitted.values(baseline_reg)
predicted_values_squared = predicted_values^2 
predicted_values_cubed = predicted_values^3 
predicted_values_4 = predicted_values^4

MedExpenses2 = cbind(MedExpenses1, predicted_values_squared, predicted_values_cubed, predicted_values_4)
View(MedExpenses2)

RESET_Test_reg = lm(Total_MedExpenses_Dollars ~ Annual_Income_Dollars + Number_of_Doctor_Visits + Age + Currently_Married  + Education + Gender + Has_Health_Insurance + Race + predicted_values_squared + predicted_values_cubed + predicted_values_4, data = MedExpenses2)
summary(RESET_Test_reg)

anova(RESET_Test_reg, baseline_reg)

#Breusch-Pagan Test
reg_residuals = residuals(baseline_reg)
residuals_squared = reg_residuals^2

MedExpenses3 = cbind(MedExpenses1, reg_residuals, residuals_squared)
View(MedExpenses3)

write.csv(MedExpenses3,"MedExpenses_residuals.csv", row.names=FALSE)

BP_test_reg = lm(residuals_squared ~ Annual_Income_Dollars + Number_of_Doctor_Visits + Age + Currently_Married  + Education + Gender + Has_Health_Insurance + Race , data = MedExpenses3)
summary(BP_test_reg)
