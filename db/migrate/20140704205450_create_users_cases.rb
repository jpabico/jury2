class CreateUsersCases < ActiveRecord::Migration
  def change
    create_table :users_cases do |t|
      t.belongs_to :user
      t.belongs_to :case

      t.timestamps
    end
  end
end
