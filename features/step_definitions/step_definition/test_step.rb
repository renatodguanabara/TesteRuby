Given('Eu acesse o site do fleury') do
  #Abre a pagina inicial do fleury
  visit "https://www.fleury.com.br/"
end

When('Eu clico em unidades') do
  #Clica na unidade que eh um dos passo a passo do caso de teste
  link = page.find(:css, 'a[href="/unidades"]').click
end

When('Eu seleciono uma unidade') do
  #Clica no dropbox
  page.find(:id, 'checkoox-select-facilities').click


  #Encontra uma unidade no dropbox
  drop1 = find(:xpath, '/html/body/div[2]/div/div[8]/div[3]/div[3]/div[1]/div[2]/div/div[4]')
  drop1.click


  #Seleciona a primeira unidade
  page.find(:xpath, '//*[@id="anchor-unit-cell-jau"]').click
end

Then('Deve aparecer o nome da unidade selecionada') do
  #Confirma o nome da unidade
  page.has_text?('Alameda Jaú')

end