# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pedido do
    datapedido "MyString"
    quantidadeproduto "MyString"
    valordacompra "MyString"
    formaenvio "MyString"
    formapagamento "MyString"
    cliente nil
    vendedor nil
    moderador nil
    produto nil
  end
end
