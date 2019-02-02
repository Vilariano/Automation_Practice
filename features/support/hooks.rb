# Depois de cada scenario ele tira uma screnshot e remove todos os espaços e virgulas
After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
  scenario_name = scenario.name.delete(',', '')
  scenario_name = scenario.name.delete('(', '')
  scenario_name = scenario.name.delete(')', '')
  scenario_name = scenario.name.delete('{', '')
  scenario_name = scenario.name.delete('}', '')
  scenario_name = scenario.name.delete('#', '')

  if scenario.failed?
    # Se meu senario falhar tira um print e salva no caminho que defino em helper.rb
    tira_foto(scenario_name.downcase!, 'falhou')
  else
    # Se meu senario falhar tira um print e salva no caminho que defino em helper.rb
    tira_foto(scenario_name.downcase!, 'passou')
  end
end
