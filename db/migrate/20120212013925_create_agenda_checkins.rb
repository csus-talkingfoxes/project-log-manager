class CreateAgendaCheckins < ActiveRecord::Migration
  def change
    create_table :agenda_checkins do |t|
      t.belongs_to :user
      t.belongs_to :agenda

      t.timestamps
    end
    add_index :agenda_checkins, :user_id
    add_index :agenda_checkins, :agenda_id
  end
end
