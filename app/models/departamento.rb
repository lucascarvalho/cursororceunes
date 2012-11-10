class Departamento < ActiveRecord::Base
  attr_accessible :nome

  has_many :funcionarios
end
