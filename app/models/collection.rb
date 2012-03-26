class Collection
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, :type => String
  field :desc, :type => String

  has_many :stats, dependent: :destroy
#  belongs_to :user

end
