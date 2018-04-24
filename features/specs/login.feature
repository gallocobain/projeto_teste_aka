#language:pt

    Funcionalidade: Login
    Para que somente eu possa ver as muitas tarefas
    Sendo um usuário
    Posso logar no sistema com meus dados de acesso previamente cadastrados

    @login @logout   
    Cenário: Login do usuário

    Quando faço login com "cuzito@gmail.com" e "12345678"
    Então vejo a tela principal com a mensagem "TESTE DO CONSUMO CONSCIENTE"
    
    @login_invalido
    Esquema do Cenário: Tentativa de Login

    Quando faço login com "<email>" e "<senha>"
    Então devo ver a mensagem "<alerta>" 

    Exemplos:
      | email             | senha  | alerta                               |
      | cuzito@gmail.com  | 123    | Usuário e/ou senha incorreto(s)      |
      | teste@papito.io   | 123456 | Usuário e/ou senha incorreto(s)      |
      | cuzito@gmail.com  |        | Usuário e/ou senha incorreto(s)      |
      |                   | 123456 | Usuário e/ou senha incorreto(s)      |

    