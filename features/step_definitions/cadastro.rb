Given("I click on Sign in in home page") do
  @cadastro_page.go
end

When("I enter email in form create an account") do |table|
  table.hashes.each do |item|
    expect(@cadastro_page.with(item["email"]))
  end
end

When("I click in create an account") do
  @cadastro_page.click_page
end

Then("{string} page hould be shown") do |expect_text|
  expect(@cadastro_page.account_created).to eql expect_text
end

Given("I on the screen to enter my data") do
  @cadastro_page.go
  @cadastro_page.email
  @cadastro_page.click_page
end

When("Insert my data in the registration form") do
  @cadastro_page.date
end

When("I click in Register") do
  @cadastro_page.register
end



