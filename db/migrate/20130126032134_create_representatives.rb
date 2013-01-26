class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :name
      t.string :title
      t.boolean :leader
      t.references :state
      t.string :district
      t.string :url

      t.timestamps
    end
    add_index :representatives, :state_id
  end
end
