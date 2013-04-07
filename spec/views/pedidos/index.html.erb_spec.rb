require 'spec_helper'

describe "pedidos/index" do
  before(:each) do
    assign(:pedidos, [
      stub_model(Pedido,
        :datapedido => "Datapedido",
        :quantidadeproduto => "Quantidadeproduto",
        :valordacompra => "Valordacompra",
        :formaenvio => "Formaenvio",
        :formapagamento => "Formapagamento",
        :cliente => nil,
        :vendedor => nil,
        :moderador => nil,
        :produto => nil
      ),
      stub_model(Pedido,
        :datapedido => "Datapedido",
        :quantidadeproduto => "Quantidadeproduto",
        :valordacompra => "Valordacompra",
        :formaenvio => "Formaenvio",
        :formapagamento => "Formapagamento",
        :cliente => nil,
        :vendedor => nil,
        :moderador => nil,
        :produto => nil
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Datapedido".to_s, :count => 2
    assert_select "tr>td", :text => "Quantidadeproduto".to_s, :count => 2
    assert_select "tr>td", :text => "Valordacompra".to_s, :count => 2
    assert_select "tr>td", :text => "Formaenvio".to_s, :count => 2
    assert_select "tr>td", :text => "Formapagamento".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
