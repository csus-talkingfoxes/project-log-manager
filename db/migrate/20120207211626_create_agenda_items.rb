class CreateAgendaItems < ActiveRecord::Migration
  def change
    create_table :agenda_items do |t|
      t.belongs_to :user
      t.string :item

      t.timestamps
    end
    add_index :agenda_items, :user_id
  end
end
