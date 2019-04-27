class CreateUserTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :name
      t.timestamps
    end

    create_table :videos do |t|
      t.string :part_number
      t.timestamps
    end

    create_table :users_videos, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :video, index: true
    end
  end
end
