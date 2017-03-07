class RemoveBadgeFromSkills < ActiveRecord::Migration[5.0]
  def change
    remove_column :skills, :badge, :text
  end
end
