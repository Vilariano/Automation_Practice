Dado('que estou no site Automation Practice') do
  select_prod.load
  expect(page).to have_content('Automation Practice Website') 
end

Quando('inicio e efetivo uma compra') do
  select_prod.summary
  cad_user.sign_in
  faz_compra.address_a
  faz_compra.shipping
  faz_compra.payment
end

Então('vejo a seguinte mensagem de sucesso:') do |mensagem|
  expect(page).to have_content(mensagem)
end
