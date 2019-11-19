class CreateSubFamilies < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_families do |t|
      t.string :name
      t.timestamps
    end
  end
end
