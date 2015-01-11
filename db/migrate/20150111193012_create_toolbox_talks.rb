class CreateToolboxTalks < ActiveRecord::Migration
  def change
    create_table :toolbox_talks do |t|
      t.references :user, index: true
      t.date :invoice_date
      t.string :attendees
      t.string :topics
      t.text :comments
      t.string :inspections
      t.text :inspection_comments
      t.boolean :confirm

      t.timestamps
    end
  end
end
