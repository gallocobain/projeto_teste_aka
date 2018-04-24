
Before do
    @login = LoginPage.new
    @dash = DashboardPage.new
    @consumidor = ConsumidorPage.new

    page.current_window.resize_to(1280, 800)
end

After('@logout') do
    @dash.fazer_logout
end

Before('@auth') do
    @login.load
end