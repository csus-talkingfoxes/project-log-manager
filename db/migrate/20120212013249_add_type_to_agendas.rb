class AddTypeToAgendas < ActiveRecord::Migration
  def change
    change_table :agendas do |t|
      t.references :agenda_type
    end
  end
end
