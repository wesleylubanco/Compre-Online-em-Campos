require 'spec_helper'

describe "clientes/new" do
  before(:each) do
    assign(:cliente, stub_model(Cliente,
      :nome => "MyString",
      :identidade => "MyString",
      :cpfcnpj => "MyString"
    ).as_new_record)
  end

  it "renders new cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clientes_path, :method => "post" do
      assert_select "input#cliente_nome", :name => "cliente[nome]"
      assert_select "input#cliente_identidade", :name => "cliente[identidade]"
      assert_select "input#cliente_cpfcnpj", :name => "cliente[cpfcnpj]"
    end
  end
end
