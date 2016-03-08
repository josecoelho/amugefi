json.array!(@servicos) do |servico|
  json.extract! servico, :id, :descricao, :valor
  json.url servico_url(servico, format: :json)
end
