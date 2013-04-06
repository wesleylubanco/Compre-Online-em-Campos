require 'spec_helper'

describe "produtos/new" do
  before(:each) do
    assign(:produto, stub_model(Produto,
      :nome => "MyString",
      :fabricante => "MyString",
      :datafabricacao => "MyString",
      :preco => "MyString"
    ).as_new_record)
  end

  it "renders new produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => produtos_path, :method => "post" do
      assert_select "input#produto_nome", :name => "produto[nome]"
      assert_select "input#produto_fabricante", :name => "produto[fabricante]"
      assert_select "input#produto_datafabricacao", :name => "produto[datafabricacao]"
      assert_select "input#produto_preco", :name => "produto[preco]"
    end
  end
end
