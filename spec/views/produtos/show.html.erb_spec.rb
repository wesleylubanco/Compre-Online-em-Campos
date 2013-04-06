require 'spec_helper'

describe "produtos/show" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :nome => "Nome",
      :fabricante => "Fabricante",
      :datafabricacao => "Datafabricacao",
      :preco => "Preco"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Fabricante/)
    rendered.should match(/Datafabricacao/)
    rendered.should match(/Preco/)
  end
end
