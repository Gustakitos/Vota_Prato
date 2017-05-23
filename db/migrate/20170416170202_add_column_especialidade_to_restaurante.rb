class AddColumnEspecialidadeToRestaurante < ActiveRecord::Migration
  def self.up
    add_column :restaurantes,:especialidades,
               :string,:limit => 40
  end

  def self.down
    remove_column :restaurantes,:especialidades
  end
end
