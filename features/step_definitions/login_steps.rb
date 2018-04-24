
Quando("faço login com {string} e {string}") do |email, senha|
    @login.load
    @login.logar(email, senha)
end
  
Então("vejo a tela principal com a mensagem {string}") do |mensagem_tela_principal|
  expect(@dash.titulo_pagina.text).to eql mensagem_tela_principal
  sleep(1)
end
  
Então("devo ver a mensagem {string}") do |mensagem_alerta|
    expect(@login.alerta_mensagem.text).to eql mensagem_alerta
end