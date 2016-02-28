class Cliente < ActiveRecord::Base

  validates_presence_of :nome


  def to_s
    nome
  end
end
