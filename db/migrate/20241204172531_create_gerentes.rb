class CreateGerentes < ActiveRecord::Migration[7.0]
  def change
    create_table :gerentes do |t|
      t.string :nome, null: false
      t.date :nascimento, null: false
      t.references :loja, null: false, foreign_key: true

      t.timestamps
    end
  end
end
