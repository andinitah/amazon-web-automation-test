# @Sign Up
# Feature: Sign Up

# Scenario: Abnormal - Wrong email format
#     Given Open the web "https://amazon.com"
#     And Go to SignUp page
#     When User fill the email field with "user.testingmail.com"
#     Then Alert error "Enter a valid email address" shown
#     And Take a screenshot "signup-erremail-1.png"

# Scenario: Abnormal - Email field not filled
#     Given Open the web "https://amazon.com"
#     And Go to SignUp page
#     When User fill the email field with " "
#     Then Alert error "Enter your email" shown
#     And Take a screenshot "signup-erremail-2.png"