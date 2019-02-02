# Pegando todos os arquivos que estao dentro do caminho a baixo
Dir[File.join(File.dirname(__FILE__), '../page/*.rb')].each { |file| require file }

# Depois que pegar os arquivos com (_page.rb) estancio todos as suas variaveis
module Page
  def cad_user
    @cad_user ||= CadastraUser.new
  end

  def faz_compra
    @faz_compra ||= FazCompra.new
  end

  def select_prod
    @select_prod ||= SelectProduto.new
  end
end
