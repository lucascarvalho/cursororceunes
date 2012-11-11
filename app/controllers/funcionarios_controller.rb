class FuncionariosController < ApplicationController

	def index
		@funcionarios = Funcionario.all
	end

	def show
		@funcionario = Funcionario.find(params[:id])
	end

	def edit
		@funcionario = Funcionario.find(params[:id])
		@departamentos = Departamento.all
	end
end
