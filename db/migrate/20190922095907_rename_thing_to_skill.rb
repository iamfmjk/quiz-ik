class RenameThingToSkill < ActiveRecord::Migration[5.2]
  def change
    rename_column :things, :thing, :skill
  end
end
