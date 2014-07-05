class CreateCasesUsers < ActiveRecord::Migration
  def change
    create_table :cases_users do |t|
      t.belongs_to :user
      t.belongs_to :case

      t.timestamps
    end
  end
end
