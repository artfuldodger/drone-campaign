class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.string :name
      t.string :email
      t.boolean :newsletter

      t.timestamps
    end
  end
end
