class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :name
      t.date :completed_date
      t.date :expiry_date
      t.references :user, index: true

      t.timestamps
    end
  end
end
