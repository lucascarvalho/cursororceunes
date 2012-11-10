class Funcionario < ActiveRecord::Base
  attr_accessible :admissao, :departamento_id, :nome

  belongs_to :departamento
  
end