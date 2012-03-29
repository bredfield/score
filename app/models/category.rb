class Category
  include Mongoid::Document
  include Mongoid::Timestamps
  

  field :name, :type => String
  field :desc, :type => String

  has_many :stats
  belongs_to :user

end
