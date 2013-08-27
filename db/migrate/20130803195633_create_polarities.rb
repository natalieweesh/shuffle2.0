class CreatePolarities < ActiveRecord::Migration
  def change
    create_table :polarities do |t|
      t.integer :user_id
      t.integer :song_id
      t.boolean :is_good

      t.timestamps
    end
  end
end
