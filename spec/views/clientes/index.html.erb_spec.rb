require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :nome => "Nome",
        :identidade => "Identidade",
        :cpfcnpj => "Cpfcnpj"
      ),
      stub_model(Cliente,
        :nome => "Nome",
        :identidade => "Identidade",
        :cpfcnpj => "Cpfcnpj"
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Identidade".to_s, :count => 2
    assert_select "tr>td", :text => "Cpfcnpj".to_s, :count => 2
  end
end
