require 'spec_helper'

describe "pedidos/new" do
  before(:each) do
    assign(:pedido, stub_model(Pedido,
      :datapedido => "MyString",
      :quantidadeproduto => "MyString",
      :valordacompra => "MyString",
      :formaenvio => "MyString",
      :formapagamento => "MyString",
      :cliente => nil,
      :vendedor => nil,
      :moderador => nil,
      :produto => nil
    ).as_new_record)
  end

  it "renders new pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pedidos_path, :method => "post" do
      assert_select "input#pedido_datapedido", :name => "pedido[datapedido]"
      assert_select "input#pedido_quantidadeproduto", :name => "pedido[quantidadeproduto]"
      assert_select "input#pedido_valordacompra", :name => "pedido[valordacompra]"
      assert_select "input#pedido_formaenvio", :name => "pedido[formaenvio]"
      assert_select "input#pedido_formapagamento", :name => "pedido[formapagamento]"
      assert_select "input#pedido_cliente", :name => "pedido[cliente]"
      assert_select "input#pedido_vendedor", :name => "pedido[vendedor]"
      assert_select "input#pedido_moderador", :name => "pedido[moderador]"
      assert_select "input#pedido_produto", :name => "pedido[produto]"
    end
  end
end
