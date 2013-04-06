require 'spec_helper'

describe "vendedors/show" do
  before(:each) do
    @vendedor = assign(:vendedor, stub_model(Vendedor,
      :nome => "Nome",
      :identidade => "Identidade",
      :cpfcnpj => "Cpfcnpj",
      :rua => "Rua",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :estado => "Estado",
      :telefone1 => "Telefone1",
      :telefone2 => "Telefone2"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Identidade/)
    rendered.should match(/Cpfcnpj/)
    rendered.should match(/Rua/)
    rendered.should match(/Bairro/)
    rendered.should match(/Cidade/)
    rendered.should match(/Estado/)
    rendered.should match(/Telefone1/)
    rendered.should match(/Telefone2/)
  end
end
