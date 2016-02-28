class Venda < ActiveRecord::Base
  belongs_to :cliente

  validates_presence_of :cliente, :valor

end
