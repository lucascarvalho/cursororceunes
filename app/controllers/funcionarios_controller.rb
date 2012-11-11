#encoding: utf-8

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

	def update
	    @funcionario = Funcionario.find(params[:id])

		if @funcionario.update_attributes(params[:funcionario])
			redirect_to @funcionario, notice: 'Funcionário atualizado com sucesso.'
		else
			render action: "edit"
	    end
	end

end
