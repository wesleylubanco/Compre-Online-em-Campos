require 'spec_helper'

describe "moderadors/index" do
  before(:each) do
    assign(:moderadors, [
      stub_model(Moderador,
        :nome => "Nome",
        :identidade => "Identidade",
        :cpf => "Cpf",
        :endereco => "Endereco",
        :telefone => "Telefone"
      ),
      stub_model(Moderador,
        :nome => "Nome",
        :identidade => "Identidade",
        :cpf => "Cpf",
        :endereco => "Endereco",
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of moderadors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Identidade".to_s, :count => 2
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
