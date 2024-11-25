# Create the contingency table from your data
cross_tab <- matrix(c(224, 95, 16, 
                      6, 2, 11, 
                      25, 15, 13, 
                      38, 15, 8, 
                      41, 73, 52, 
                      54, 22, 19), 
                    nrow = 6, byrow = TRUE)

# Assign row and column names
rownames(cross_tab) <- c("Normal Weight", "Obese Class 1", "Obese Class 2", 
                         "Obese Class 3", "Overweight", "Underweight")
colnames(cross_tab) <- c("15-30", "31-45", "46-61")

# Verify the matrix structure
print(cross_tab)

# Perform the chi-square test
chi_test <- chisq.test(cross_tab)

# Print the chi-square test results
print(chi_test)

# Print the expected frequencies
print(chi_test$expected)
