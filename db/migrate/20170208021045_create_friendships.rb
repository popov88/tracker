class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.timestamps
      t.belongs_to :user
      t.belongs_to :friend, class: 'User'
    end
  end
end
