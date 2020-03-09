require 'faker'

class CadastroPage < BasePage
  def go
    visit "/"
    find(".login").click
  end
  
  def with(email)
    find("#email_create").set email
    
  end
  def click_page
    find("#SubmitCreate > span").click
  end

  def account_created
    find(".navigation_page").text
  end
  def date
  find("#id_gender2").click
  @name = find("#customer_firstname").set Faker::Name.first_name
  @last_name = find("#customer_lastname").set Faker::Name.last_name
  find("#passwd").set "Test123"
  find("#address1").set Faker::Address.street_name
  find("#city").set Faker::Address.city
  find("#id_state option[value='5']").click
  find('#postcode').set '97209'
  find('#phone_mobile').set Faker::PhoneNumber.cell_phone
  end
  def email
    @email= find("#email_create").set Faker::Internet.email
  end
  def register
    find('#submitAccount').click
  end
end
