require 'spec_helper'

describe "moderadors/show" do
  before(:each) do
    @moderador = assign(:moderador, stub_model(Moderador,
      :nome => "Nome",
      :identidade => "Identidade",
      :cpf => "Cpf",
      :endereco => "Endereco",
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Identidade/)
    rendered.should match(/Cpf/)
    rendered.should match(/Endereco/)
    rendered.should match(/Telefone/)
  end
end
