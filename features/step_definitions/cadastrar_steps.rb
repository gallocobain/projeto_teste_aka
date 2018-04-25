#encoding: utf-8

Dado("que eu acesse a tela de cadastro de pessoas") do
  @login.acessar_cliente
end

Quando("eu informar os seus dados") do
  @usuario = OpenStruct.new
  @usuario.input_nome = Faker::BackToTheFuture.character
  @usuario.input_email = Faker::Internet.free_email
  @usuario.input_senha = Faker::Internet.password(8)
  sleep(2)
  
  @consumidor.cadastrar(@usuario)

end

Quando("quero selecionar um grau de escolaridade") do |table|
  @consumidor = table.hashes
end

Entao("vejo tela de perguntas com o texto {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end