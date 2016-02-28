json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :nome_fantasia, :cnpj, :endereco, :email
  json.url cliente_url(cliente, format: :json)
end
