class Cliente < ActiveRecord::Base
  validates_presence_of :nome

  def cnpj_clear
    cnpj.to_s.delete(".").delete("-")
  end

  def to_s
    nome_fantasia.present? ? nome_fantasia : nome
  end
end
