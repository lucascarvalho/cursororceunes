class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nome, :limit => 60, :null => false

      t.timestamps
    end
  end
end
