class AddErrorStatusToRecords < ActiveRecord::Migration
  def change
    add_column  :fezinha_records, :sent, :boolean, default: true
  end
end
