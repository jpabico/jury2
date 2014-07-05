class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :title
      t.integer :user_1_vote_count, default: 0
      t.integer :user_2_vote_count, default: 0
      t.string :status
      t.string :winner

      t.timestamps
    end
  end
end
