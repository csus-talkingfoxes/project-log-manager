class CreateLogUnits < ActiveRecord::Migration
  def change
    create_table :log_units do |t|
      t.datetime :start
      t.datetime :end
      t.belongs_to :user
      t.text :description

      t.timestamps
    end
  end
end
