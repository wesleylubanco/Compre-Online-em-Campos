# coding: utf-8

require 'spec_helper'

feature 'gerenciar cliente' do

  scenario 'incluir cliente' do # , :js => true  do

    visit new_cliente_path

    preencher_e_verificar_cliente

    

  end

  scenario 'alterar cliente' do #, :js => true  do

    cliente = FactoryGirl.create(:cliente)

    visit edit_cliente_path(cliente)

    preencher_e_verificar_cliente



  end

   scenario 'excluir cliente' do #, :javascript => true  do

       cliente = FactoryGirl.create(:cliente)

        visit clientes_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_cliente

      fill_in 'Nome',  :with => "Wesley"
      fill_in 'Identidade', :with =>"999999999"
      fill_in 'Cpfcnpj', :with =>"1111111111111111111111"
        
 
      click_button 'Salvar'

      page.should have_content 'Nome: Wesley'
      page.should have_content 'Identidade: 999999999'
      page.should have_content 'Cpfcnpj: 1111111111111111111111'

   end
end
