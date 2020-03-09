# Capybara, Cucumber com Page Objects com Ruby 

Site ultilizado para automação: http://automationpractice.com/index.php

## Gemfile

Abra o arquivo Gemfile e adicione as gems:
```
source "http://rubygems.org"

gem "capybara", "3.22.0"
gem "cucumber", "3.1.2"
gem "os", "1.0.1"
gem "rspec", "3.8.0"
gem "selenium-webdriver", "3.142.3"
gem "httparty", "0.17.0"
gem 'pg'
gem 'faker'
gem 'rubocop-faker'
```
## Execução

Abra o terminal e execute o comando abaixo :
```
bundle install      
```

Execute no chrome: 

```
cucumber -f pretty -f html -o report.html BROWSER=chrome
```
Execute no Firefox: 

```
cucumber -f pretty -f html -o report.html BROWSER=firefox
```
Execucão pelo terminal:

```
bundle exec cucumber -f pretty -f html -o report.html -p ci
```
## Qualquer dúvida 

Linkdin: https://www.linkedin.com/in/natali-cabral
