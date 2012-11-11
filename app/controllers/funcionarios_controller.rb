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

	    date = params[:funcionario][:admissao]
	    @funcionario.admissao = text_to_date(date)

		if @funcionario.update_attributes(params[:funcionario])
			redirect_to @funcionario, notice: 'Funcionário atualizado com sucesso.'
		else
			render action: "edit"
	    end
	end

	private
		
		def text_to_date(text)
			parts = text.split("/")
			Date.new parts[2].to_i, parts[1].to_i, parts[0].to_i
		end

end
