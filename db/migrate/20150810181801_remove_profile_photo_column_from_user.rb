class RemoveProfilePhotoColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :profile_photo, :binary
  end
end
