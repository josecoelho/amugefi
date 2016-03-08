class Conta < ActiveRecord::Base
  self.table_name = "contas"

  def to_s
    nome
  end

  def agencia_sem_digito
    agencia.split('-')[0]
  end
end
