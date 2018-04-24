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

    def cadastrar(nome, email, conf_email, senha, data, uf, sexo, grau)

        input_nome.set nome
        input_email.set email
        input_conf_email.set conf_email
        input_senha.set senha
        input_data.set data
        combo_uf.find('option', text: uf).select_option
        radio_sexo.set sexo
        combo_grau.find('option', text: grau).select_option
        botao_cadastrar.click

    end

end