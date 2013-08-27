class CreateUserUploadeds < ActiveRecord::Migration
  def change
    create_table :user_uploadeds do |t|
      t.integer :user_id
      t.integer :song_id

      t.timestamps
    end
  end
end
