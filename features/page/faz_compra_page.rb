# Classe que inicia e finaliza uma compra
class FazCompra < SitePrism::Page
  def address_a
    click_button 'Proceed to checkout'
  end

  def shipping
    check('cgv', allow_label_click: true)
    if find('#cgv', visible: false).checked? == true
      click_button 'Proceed to checkout'
    else
      puts 'No checked!'
    end
  end

  def payment
    val_t = find('#total_price')
    if val_t.text.eql?('$18.51')
      click_on 'Pay by bank wire'
    else
      puts 'Valor diferente!'
    end
    click_button 'I confirm my order'
  end
end
