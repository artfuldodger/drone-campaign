class Representative < ActiveRecord::Base
  belongs_to :state
  validates :name, :state, presence: true

  attr_accessible :district, :leader, :name, :title, :url, :state,
    :bioguide_id, :birthday, :chamber, :contact_form, :crp_id,
    :facebook_id, :fax, :fec_ids, :first_name, :gender, :govtrack_id,
    :in_office, :last_name, :middle_name, :name_suffix, :nickname, :office,
    :party, :phone, :state, :state_name, :thomas_id, :title, :twitter_id,
    :votesmart_id, :website, :youtube_id, :lis_id, :senate_class, :state_rank

  def bioguide_url
    "http://bioguide.congress.gov/scripts/biodisplay.pl?index=#{bioguide_id}"
  end

  def facebook_url
    "http://www.facebook.com/#{facebook_id}"
  end

  def twitter_url
    "http://www.twitter.com/#{twitter_id}"
  end

  def state=(state)
    case state
    when String
      self[:state] = State.find_by_abbreviation(state)
    when State
      self[:state] = state
    else
      raise "Unknown state: #{state.inspect}"
    end
  end
end
