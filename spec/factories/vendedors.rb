# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vendedor do
    nome "MyString"
    identidade "MyString"
    cpfcnpj "MyString"
    rua "MyString"
    bairro "MyString"
    cidade "MyString"
    estado "MyString"
    telefone1 "MyString"
    telefone2 "MyString"
  end
end
