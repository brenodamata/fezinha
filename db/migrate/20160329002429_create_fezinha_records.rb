class CreateFezinhaRecords < ActiveRecord::Migration
  def change
    create_table :fezinha_records do |t|
      t.references :user, index: true, foreign_key: true
      t.string :numbers

      t.timestamps null: false
    end
  end
end
