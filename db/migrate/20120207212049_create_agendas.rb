class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.datetime :start
      t.datetime :end
      t.belongs_to :user

      t.timestamps
    end
    add_index :agendas, :user_id
  end
end
