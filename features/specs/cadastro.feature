#language:pt

Funcionalidade: Cadastro
Como administrador do sistema
Posso realizar o cadastro de pessoas

@auth @cadastro
Cenario: Cadastrar Pessoas

Dado que eu acesse a tela de cadastro de pessoas   
Quando eu informar os seus dados
E quero selecionar um grau de escolaridade
| grau                   |
| Sem estudos            |
| Fundamental incompleto |
| Fundamental completo   |
| Médio incompleto       |
| Médio completo         |
| Superior incompleto    |
| Superior completo      |
| Pós Graduado (a)       |
Então vejo tela de perguntas com o texto "Questões: Etapa 1"

