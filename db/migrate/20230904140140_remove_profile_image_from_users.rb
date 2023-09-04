class RemoveProfileImageFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :profile_image
  end
end
