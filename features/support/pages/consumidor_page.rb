class ConsumidorPage < SitePrism::Page

    element :input_nome, '#nome'
    element :input_email, '#email'
    element :input_conf_email, '#conf_email'
    element :input_senha, '#senha'
    element :input_data_nasc, '#data_nascimento'
    element :combo_uf, '#uf'
    element :radio_sexo, '#rd-masc'
    element :combo_grau, '#grau_de_escolaridade'
    element :botao_cadastrar, '.btn-success'

    def cadastrar(usuario)

        #self comando para se auto atribuir os valores das variaveis
        self.input_nome.set usuario.input_nome
        self.input_email.set usuario.input_email
        #self.input_conf_email.set usuario.conf_email
        self.input_senha.set usuario.input_senha
        #self.input_data_nasc.set usuario.data
        #self.combo_uf.find.all('option')[rand(27)].select_option usuario.combo_uf
        self.radio_sexo.set usuario.radio_sexo
        self.combo_grau.find('option', text: combo_grau).select_option usuario.combo_grau
        self.botao_cadastrar.click

    end

end