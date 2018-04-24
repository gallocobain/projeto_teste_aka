class DashboardPage < SitePrism::Page
    element :titulo_pagina, '#topo h1'
    element :sair, 'a[href="/login/sair/"]'

    def fazer_logout
        sair.click
    end
    
end