class LoginPage < SitePrism::Page
   
   set_url '/login'
   
   #variavel do tipo element, com o apelido input_email e o conteúdo após a virgula
   element :input_email, 'input[placeholder="e-mail"]'
   element :input_senha, 'input[placeholder="senha"]'
   element :botao_logar, 'button[type="submit"]'
   element :alerta_mensagem, '.text-error'
   element :botao_criar_cadastro, 'a[href="/usuarios/cadastro/"]'
   
   #Método para realizar login e dentro de parentese os argumentos
   def logar (email, senha)
    input_email.set email
    input_senha.set senha
    botao_logar.click
   end

   def acessar_cliente
    botao_criar_cadastro.click
   end

end
