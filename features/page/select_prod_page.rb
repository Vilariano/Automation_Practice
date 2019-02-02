class SelectProduto < SitePrism::Page
  set_url '/'
  element :produto, 'ul#homefeatured li.ajax_block_product:nth-child(1)'
  element :cart, 'div.shopping_cart span.ajax_cart_quantity'

  def summary
    produto.hover
    find('span', text: 'Add to cart').click
    find('span', text: 'Proceed to checkout').click
    if cart.text.eql?('1')
      click_link 'Proceed to checkout'
      # find('span', text: 'Proceed to checkout').click
    else
      puts 'Deu ruim!'
    end
  end
end
