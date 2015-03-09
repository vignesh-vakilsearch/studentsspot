class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :name
      t.string :sex
      t.string :college
      t.string :preexam
      t.attachment :image

      t.timestamps null: false
    end
  end
end
