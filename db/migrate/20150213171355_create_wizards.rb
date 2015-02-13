class CreateWizards < ActiveRecord::Migration
  def change
    create_table :wizards do |t|
      t.string :name
      t.string :color
      t.integer :height
      t.boolean :is_good

      t.timestamps null: false
    end
  end
end
