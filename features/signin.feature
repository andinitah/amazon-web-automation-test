# @Sign In
# Feature: Sign In

# Scenario: Abnormal - Unregistered Email
#     Given Open "https://amazon.com"
#     And Go to SignIn page
#     When User fill the field with "user.testing@mail.com"
#     Then Alert error "We cannot find an account with that email address" appears
#     And Take screenshot "signin-erremail.png"

# Scenario: Abnormal - Unregistered Phone number
#     Given Open "https://amazon.com"
#     And Go to SignIn page
#     When User fill the field with "080808080880"
#     Then Alert error "We cannot find an account with that mobile number" appears
#     And Take screenshot "signin-errmobile.png"