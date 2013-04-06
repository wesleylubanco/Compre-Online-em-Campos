require 'spec_helper'

describe "vendedors/new" do
  before(:each) do
    assign(:vendedor, stub_model(Vendedor,
      :nome => "MyString",
      :identidade => "MyString",
      :cpfcnpj => "MyString",
      :rua => "MyString",
      :bairro => "MyString",
      :cidade => "MyString",
      :estado => "MyString",
      :telefone1 => "MyString",
      :telefone2 => "MyString"
    ).as_new_record)
  end

  it "renders new vendedor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vendedors_path, :method => "post" do
      assert_select "input#vendedor_nome", :name => "vendedor[nome]"
      assert_select "input#vendedor_identidade", :name => "vendedor[identidade]"
      assert_select "input#vendedor_cpfcnpj", :name => "vendedor[cpfcnpj]"
      assert_select "input#vendedor_rua", :name => "vendedor[rua]"
      assert_select "input#vendedor_bairro", :name => "vendedor[bairro]"
      assert_select "input#vendedor_cidade", :name => "vendedor[cidade]"
      assert_select "input#vendedor_estado", :name => "vendedor[estado]"
      assert_select "input#vendedor_telefone1", :name => "vendedor[telefone1]"
      assert_select "input#vendedor_telefone2", :name => "vendedor[telefone2]"
    end
  end
end
