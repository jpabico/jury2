class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :users_cases
      t.text  :content
      t.references :parent_comment
      t.timestamps
    end
  end
end
