# coding: utf-8

require 'spec_helper'

feature 'gerenciar vendedor' do

  scenario 'incluir vendedor' do # , :js => true  do

    visit new_vendedor_path

    preencher_e_verificar_vendedor

    

  end

  scenario 'alterar vendedor' do #, :js => true  do

    vendedor = FactoryGirl.create(:vendedor)

    visit edit_vendedor_path(vendedor)

    preencher_e_verificar_vendedor



  end

   scenario 'excluir vendedor' do #, :javascript => true  do

       vendedor = FactoryGirl.create(:vendedor)

        visit vendedors_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_vendedor

      fill_in 'Nome',  :with => "x"
      fill_in 'Identidade', :with => "xx"
      fill_in 'Cpfcnpj', :with => "xxx"
      fill_in 'Rua', :with => "xxxx"
      fill_in 'Bairro', :with => "xxxxx"	
      fill_in 'Cidade', :with => "xxxxxx"  
      fill_in 'Estado', :with => "xxxxxxx"
      fill_in 'Telefone1', :with => "xxxxxxxx"
      fill_in 'Telefone2', :with => "xxxxxxxxx"

      click_button 'Salvar'

      page.should have_content 'Nome: x'
      page.should have_content 'Identidade: xx'
      page.should have_content 'Cpfcnpj: xxx'
      page.should have_content 'Rua: xxxx'
      page.should have_content 'Bairro: xxxxx'	
      page.should have_content 'Cidade: xxxxxx'  
      page.should have_content 'Estado: xxxxxxx'
      page.should have_content 'Telefone1: xxxxxxxx'
      page.should have_content 'Telefone2: xxxxxxxxx'



   end
end
