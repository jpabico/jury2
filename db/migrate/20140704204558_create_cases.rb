class CreateCases < ActiveRecord::Migration
  def change
    create_table :cases do |t|
      t.string :title
      t.string :summary
      t.string :status, default: "pending"
      t.string :winner, default: nil
      t.datetime :active_start, default: nil
      t.datetime :active_end, default: nil      
      t.timestamps
    end
  end
end

