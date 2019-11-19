class CreateGenusNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :genus_notes do |t|
      t.references :genus, null: false, foreign_key: true
      t.string :user_avatar_filename
      t.text :note

      t.timestamps
    end
  end
end
