# Metodo para tirar screenshot e embeda no relatorio html
module Helper
  def tira_foto(file_name, resultado)
    data = Time.now.strftime('%F').to_s
    h_m_s = Time.now.strftime('%H%M%S%p').to_s
    caminho = "results/evidencias/test_#{resultado}/#{data}"
    foto = "#{caminho}/#{h_m_s}.png"
    page.save_screenshot(foto, full: true)
    embed(foto, 'image/png', 'Ver_Evidencia')
  end
end
