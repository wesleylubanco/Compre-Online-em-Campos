require 'spec_helper'

describe "moderadors/edit" do
  before(:each) do
    @moderador = assign(:moderador, stub_model(Moderador,
      :nome => "MyString",
      :identidade => "MyString",
      :cpf => "MyString",
      :endereco => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders the edit moderador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moderadors_path(@moderador), :method => "post" do
      assert_select "input#moderador_nome", :name => "moderador[nome]"
      assert_select "input#moderador_identidade", :name => "moderador[identidade]"
      assert_select "input#moderador_cpf", :name => "moderador[cpf]"
      assert_select "input#moderador_endereco", :name => "moderador[endereco]"
      assert_select "input#moderador_telefone", :name => "moderador[telefone]"
    end
  end
end
