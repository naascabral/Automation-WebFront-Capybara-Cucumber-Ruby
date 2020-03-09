When("I enter email and password in form login") do
 @login_page.login
end

When("I click in Sign in") do
  @login_page.login_btn
end

When("I enter email and password invalid in form login") do
  @login_page.invalid_login
end

Then("alert {string} hould be shown") do |expect_message|
  expect(@login_page.alert).to eql expect_message
end

When("I enter email and password blank in form login") do
  @login_page.login_empty
end
