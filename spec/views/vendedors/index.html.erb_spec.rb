require 'spec_helper'

describe "vendedors/index" do
  before(:each) do
    assign(:vendedors, [
      stub_model(Vendedor,
        :nome => "Nome",
        :identidade => "Identidade",
        :cpfcnpj => "Cpfcnpj",
        :rua => "Rua",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :telefone1 => "Telefone1",
        :telefone2 => "Telefone2"
      ),
      stub_model(Vendedor,
        :nome => "Nome",
        :identidade => "Identidade",
        :cpfcnpj => "Cpfcnpj",
        :rua => "Rua",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :estado => "Estado",
        :telefone1 => "Telefone1",
        :telefone2 => "Telefone2"
      )
    ])
  end

  it "renders a list of vendedors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Identidade".to_s, :count => 2
    assert_select "tr>td", :text => "Cpfcnpj".to_s, :count => 2
    assert_select "tr>td", :text => "Rua".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone1".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone2".to_s, :count => 2
  end
end
