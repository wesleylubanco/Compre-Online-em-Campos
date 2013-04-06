# coding: utf-8

require 'spec_helper'

feature 'gerenciar moderador' do

  scenario 'incluir moderador' do # , :js => true  do

    visit new_moderador_path

    preencher_e_verificar_moderador

    

  end

  scenario 'alterar moderador' do #, :js => true  do

    moderador = FactoryGirl.create(:moderador)

    visit edit_moderador_path(moderador)

    preencher_e_verificar_moderador



  end

   scenario 'excluir moderador' do #, :javascript => true  do

       moderador = FactoryGirl.create(:moderador)

        visit moderadors_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_moderador

      fill_in 'Nome',  :with => "x"
      fill_in 'Identidade', :with =>"xx"
      fill_in 'Cpf', :with =>"xxx"
      fill_in 'Endereco', :with =>"xxxx"
      fill_in 'Telefone', :with =>"xxxxx"
        
 
      click_button 'Salvar'

      page.should have_content 'Nome: x'
      page.should have_content 'Identidade: xx'
      page.should have_content 'Cpf: xxx'
      page.should have_content 'Endereco: xxxx'
      page.should have_content 'Telefone: xxxxx'
   end
end
