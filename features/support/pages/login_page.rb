class LoginPage < BasePage
  def go
    visit "/index.php?controller=authentication&back=my-account"
  end

  def login
    find("#email").set 'natalicabral123@gmail.com'
    find("#passwd").set 'Test123'
  end

  def alert
    find("#center_column > :nth-child(2) > p").text
  end

  def login_btn
  find('#SubmitLogin > span').click
  end

  def invalid_login
    find("#email").set 'chico@chico.io'
    find("#passwd").set 'Test123'
  end

  def login_empty
      find("#email").set ''
      find("#passwd").set ''
  end
end
