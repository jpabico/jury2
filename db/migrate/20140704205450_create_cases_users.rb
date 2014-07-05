class CreateCasesUsers < ActiveRecord::Migration
  def change
    create_table :cases_users do |t|
      t.belongs_to :case
      t.belongs_to :user
      t.string :party

      t.timestamps
    end
  end
end
