# coding: utf-8

require 'spec_helper'

feature 'gerenciar produto' do

  scenario 'incluir produto' do # , :js => true  do

    visit new_produto_path

    preencher_e_verificar_produto

    

  end

  scenario 'alterar produto' do #, :js => true  do

    produto = FactoryGirl.create(:produto)

    visit edit_produto_path(produto)

    preencher_e_verificar_produto



  end

   scenario 'excluir produto' do #, :javascript => true  do

       produto = FactoryGirl.create(:produto)

        visit produtos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_produto

      fill_in 'Nome',  :with => "x"
      fill_in 'Fabricante', :with =>"xx"
      fill_in 'Datafabricacao', :with =>"xxx"
      fill_in 'Preco', :with =>"xxxx"

        
 
      click_button 'Salvar'

      page.should have_content 'Nome: x'
      page.should have_content 'Fabricante: xx'
      page.should have_content 'Datafabricacao: xxx'
      page.should have_content 'Preco: xxxx'

   end
end
