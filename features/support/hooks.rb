Before do
  @login_page = LoginPage.new
  @cadastro_page = CadastroPage.new

  page.current_window.resize_to(1920, 1080)
end

Before("@login") do
  @login_page.go
end

After do |scenario|
  screenshot = page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
  embed(screenshot, "image/png", "Screenshot")
end
