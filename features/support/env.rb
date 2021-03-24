#Require das ferramentas utilizadas para fazer os testes automatizados
require 'capybara/cucumber'
require 'selenium/webdriver'
require 'report_builder'


#Iniciando um navegador apara os testes
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome, :driver_path => 'C:\Users\renat\Downloads\chromedriver_win32 (7)\chromedriver.exe')


end

#Config de tempo da PAG.
Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30