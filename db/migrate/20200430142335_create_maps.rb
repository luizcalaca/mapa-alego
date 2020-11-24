class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.string :nome_trecho
      t.string :numero_lei
      t.decimal :latitude_inicial
      t.decimal :longitude_inicial
      t.decimal :latitude_final
      t.decimal :longitude_final

      t.timestamps
    end
  end
end
