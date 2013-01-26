class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :abbreviation
      t.string :ansi_code
      t.string :statens

      t.timestamps
    end
  end
end
