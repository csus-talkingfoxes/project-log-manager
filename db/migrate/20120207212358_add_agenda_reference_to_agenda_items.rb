class AddAgendaReferenceToAgendaItems < ActiveRecord::Migration
  def change
    change_table :agenda_items do |t|
      t.belongs_to :agenda
    end
    add_index :agenda_items, :agenda_id
  end
end
