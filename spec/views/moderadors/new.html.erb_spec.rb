require 'spec_helper'

describe "moderadors/new" do
  before(:each) do
    assign(:moderador, stub_model(Moderador,
      :nome => "MyString",
      :identidade => "MyString",
      :cpf => "MyString",
      :endereco => "MyString",
      :telefone => "MyString"
    ).as_new_record)
  end

  it "renders new moderador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moderadors_path, :method => "post" do
      assert_select "input#moderador_nome", :name => "moderador[nome]"
      assert_select "input#moderador_identidade", :name => "moderador[identidade]"
      assert_select "input#moderador_cpf", :name => "moderador[cpf]"
      assert_select "input#moderador_endereco", :name => "moderador[endereco]"
      assert_select "input#moderador_telefone", :name => "moderador[telefone]"
    end
  end
end
