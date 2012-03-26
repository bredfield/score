class Stat
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :type => String
  field :desc, :type => String
  field :type, :type => String

  embeds_many :entries
  belongs_to :collection
end
