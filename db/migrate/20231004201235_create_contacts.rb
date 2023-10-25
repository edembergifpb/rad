class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :tipo, null: false
      t.string :valor, null: false
      t.references :person, null: false, foreign_key: true
      t.index [:person, :valor], unique: true
      t.timestamps
    end
  end
end
