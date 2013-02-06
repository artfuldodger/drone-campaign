class AddAdditionalFieldsToRepresentatives < ActiveRecord::Migration
  def change
    add_column :representatives, :bioguide_id, :string
    add_column :representatives, :birthday, :string
    add_column :representatives, :chamber, :string
    add_column :representatives, :contact_form, :string
    add_column :representatives, :crp_id, :string
    add_column :representatives, :facebook_id, :string
    add_column :representatives, :fax, :string
    add_column :representatives, :fec_ids, :string
    add_column :representatives, :first_name, :string
    add_column :representatives, :gender, :string
    add_column :representatives, :govtrack_id, :string
    add_column :representatives, :in_office, :string
    add_column :representatives, :last_name, :string
    add_column :representatives, :middle_name, :string
    add_column :representatives, :name_suffix, :string
    add_column :representatives, :nickname, :string
    add_column :representatives, :office, :string
    add_column :representatives, :party, :string
    add_column :representatives, :phone, :string
    add_column :representatives, :thomas_id, :string
    add_column :representatives, :twitter_id, :string
    add_column :representatives, :votesmart_id, :string
    add_column :representatives, :website, :string
    add_column :representatives, :youtube_id, :string
  end
end
