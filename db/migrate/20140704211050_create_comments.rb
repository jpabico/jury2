class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text  :content
      t.references :parent_comment, default: nil
      t.belongs_to :user
      t.belongs_to :case
      t.timestamps
    end
  end
end
