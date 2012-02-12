class ChangeTypeColumnName < ActiveRecord::Migration
  def change
    rename_column(:agenda_types, :type, :typestring)
  end
end
