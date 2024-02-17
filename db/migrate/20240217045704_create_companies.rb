class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :url
      t.integer :worker
      t.integer :establish
      t.integer :asset

      t.timestamps
    end
  end
end
