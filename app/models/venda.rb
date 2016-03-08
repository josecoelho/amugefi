class Venda < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :conta

  validates_presence_of :cliente, :valor

  def gerar_boleto
    boleto = Brcobranca::Boleto::BancoBrasil.new

    boleto.cedente = conta.boleto_nome_cedente
    boleto.documento_cedente = conta.boleto_documento_cedente
    boleto.carteira = conta.boleto_carteira
    boleto.variacao = conta.boleto_variacao
    boleto.convenio = conta.boleto_convenio
    boleto.agencia = conta.agencia_sem_digito.to_i
    boleto.conta_corrente = conta.conta_corrente.to_i

    boleto.sacado = "#{cliente.nome}".truncate(30)
    boleto.sacado_documento = cliente.cnpj_clear
    boleto.sacado_endereco = cliente.endereco
    boleto.valor = valor

    #POG: evita compatibilidade com sistema anterior
    boleto.numero_documento = self.id + 1000

    boleto.data_documento = data_faturamento
    boleto.data_vencimento = data_cobranca
    boleto.aceite = "N"
    boleto.instrucao1 = "Não receber após o Vencimento."
    boleto.instrucao2 = conta.boleto_nome_cedente

    boleto.instrucao4 = "Referente a:"
    boleto.instrucao5 = descricao.truncate(120)

    return boleto
  end

  def boleto?
    conta.present?
  end

  def nome_arquivo_boleto
    "#{id}_#{cliente.nome}_#{data_cobranca.strftime('%d-%m-%Y')}.pdf"
  end
end
