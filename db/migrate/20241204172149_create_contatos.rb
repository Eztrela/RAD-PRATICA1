class CreateContatos < ActiveRecord::Migration[7.0]
  def change
    create_table :contatos do |t|
      t.string :tipo, null: false
      t.decimal :valor, null: false, index:{unique: true, name: "unique_value"}
      t.references :loja, null: false, foreign_key: true

      t.timestamps
    end
  end
end
