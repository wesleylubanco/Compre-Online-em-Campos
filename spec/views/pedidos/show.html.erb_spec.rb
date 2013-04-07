require 'spec_helper'

describe "pedidos/show" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :datapedido => "Datapedido",
      :quantidadeproduto => "Quantidadeproduto",
      :valordacompra => "Valordacompra",
      :formaenvio => "Formaenvio",
      :formapagamento => "Formapagamento",
      :cliente => nil,
      :vendedor => nil,
      :moderador => nil,
      :produto => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Datapedido/)
    rendered.should match(/Quantidadeproduto/)
    rendered.should match(/Valordacompra/)
    rendered.should match(/Formaenvio/)
    rendered.should match(/Formapagamento/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
  end
end
