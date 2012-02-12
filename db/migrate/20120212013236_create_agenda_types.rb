class CreateAgendaTypes < ActiveRecord::Migration
  def change
    create_table :agenda_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
