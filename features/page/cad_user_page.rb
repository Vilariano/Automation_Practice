# Classe que efetua o cadastro do usuario
class CadastraUser < SitePrism::Page
  Faker::Config.locale = 'pt-BR'
  element :email, '#email_create'
  element :firstname, '#customer_firstname'
  element :lastname, '#customer_lastname'
  element :password, '#passwd'
  element :address, '#address1'
  element :city, '#city'
  element :zip_code, '#postcode'
  element :phone_mobile, '#phone_mobile'

  def sign_in
    email.set Faker::Internet.email
    click_button 'Create an account'
    choose('id_gender1', allow_label_click: true)
    firstname.set Faker::Name.first_name
    lastname.set Faker::Name.last_name
    password.set '12345678'
    find('#days', visible: false).first(:option, '1').select_option
    find('#months', visible: false).send_keys('May')
    find('#years', visible: false).first(:option, '1980').select_option
    check('newsletter', allow_label_click: true)
    address.set Faker::Address.street_name
    city.set Faker::Address.city
    find('#id_state', visible: false).send_keys('Michigan')
    zip_code.set '00000'
    phone_mobile.set '11972656565'
    click_button 'Register'
  end
end
