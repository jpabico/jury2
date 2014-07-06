class CreateBallots < ActiveRecord::Migration
  def change
    create_table :ballots do |t|
      t.belongs_to :user
      t.belongs_to :case
      t.string :role
      t.timestamps
    end
  end
end
