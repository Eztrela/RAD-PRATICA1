class CreateLojas < ActiveRecord::Migration[7.0]
  def change
    create_table :lojas do |t|
      t.string :nome, null: false, index: {unique: true, name: "unique_name"}

      t.timestamps
    end
  end
end
