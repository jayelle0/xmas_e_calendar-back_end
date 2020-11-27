class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.belongs_to :calendar, null: false, foreign_key: true
      t.integer :date
      t.string :content
      t.string :image_video

      t.timestamps
    end
  end
end
