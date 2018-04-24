#language:pt

Funcionalidade: Cadastro
Como administrador do sistema
Posso realizar o cadastro de pessoas

@auth @cadastro
Esquema do Cenario: Cadastrar Pessoas

Dado que eu acesse a tela de cadastro de pessoas
Quando eu informar os seus dados
E completo o cadastro com "<UF>" e "<grau>"
Então vejo tela de perguntas com o texto "Questões: Etapa 1"

Exemplos:
      | UF | grau                   |
      | AC | Sem estudos            |
      | AL | Fundamental incompleto |
      | AM | Fundamental completo   |
      | AP | Médio incompleto       |
      | BA | Médio completo         |
      | CE | Superior incompleto    |
      | DF | Superior completo      |
      | ES | Pós Graduado (a)       |