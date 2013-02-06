class AddSenatorAttributesToRepresentatives < ActiveRecord::Migration
  def change
    add_column :representatives, :lis_id, :string
    add_column :representatives, :senate_class, :string
    add_column :representatives, :state_rank, :string
  end
end
