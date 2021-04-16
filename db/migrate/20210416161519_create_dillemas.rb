class CreateDillemas < ActiveRecord::Migration[6.0]
  def change
    create_table :dillemas do |t|
      t.string :title
      t.integer :user_id
      t.text :content
      t.string :tags
      t.date :date
      t.string :sentiment
      t.string :emotion

      t.timestamps
    end
  end
end
