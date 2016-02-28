json.array!(@conta) do |conta|
  json.extract! conta, :id, :nome, :agencia, :conta_corrente, :boleto_carteira, :boleto_nome_cedente, :boleto_documento_cedente
  json.url conta_url(conta, format: :json)
end
