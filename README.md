# Software e Configuração:
	Estou usando a verszão 2.5.3 do ruby(Mas na 2.3.3 funciona tranquilamente)
	Uso o arquivo Gemfile de configuração do Bundler para instalar as seguintes Gem's:
		capybara, chromedriver-helper, cucumber, rspec, selenium-webdriver, site_prism, faker, cpf_faker.
	
	No arquivo "cucumber.yml" configuro as execuções ex:
		Formato em que ele será visualizado: Pretty ou Progress(Para que ele seja executado em algum CI)
		Cenario que esta sendo stanciado no teste: @EfetivarCompra

		Em que hambiente o teste esta cendo executado, pois posso ter mas de 1 hambiente para a execução do mesmo.
		Browser que ele será executado, pois posso executar ele em varios navegadores diferentes.
		E por fim um relatorio do staus do meu teste com screenshot.
# Execução:
	Acessar a pasta do arquivo atraves do Prompt de Comando
	Executar o comando: bundler install (para instalar as dependencias necessarias)
	Depois que as dependencias forem instaladas execute o comando: cucumber