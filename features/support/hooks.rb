# Arquivo usado para configurar os momentos do ciclo de teste. Antes do test, depois do teste etc...
Before do
    @app = App.new
end

After do |scenario|
    if scenario.failed?
        page.save_screenshot("screenshots/#{scenario.name}#{Time.now}_screenshot.png")
    end
end
