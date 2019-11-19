class CreateGenus < ActiveRecord::Migration[6.0]
  def change
    create_table :genus do |t|
      t.string :name
      t.references :sub_family, null: false, foreign_key: true
      t.integer :species_count
      t.boolean :is_published
      t.date :first_discovered_at
      t.text :fun_fact

      t.timestamps
    end
  end
end
