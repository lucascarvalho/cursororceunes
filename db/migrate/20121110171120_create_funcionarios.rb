class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nome, :limit => 60
      t.integer :departamento_id
      t.date :admissao

      t.timestamps
    end
  end
end
