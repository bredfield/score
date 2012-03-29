class Category
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, :type => String
  field :desc, :type => String

  has_many :stats
  belongs_to :user

  # def as_json(options={})
  #   attrs = super(options)
  #   attrs["id"] = self.persisted? ? self._id : nil
  #   attrs
  # end
end

module Mongoid
  module Document
    def as_json(options={})
      attrs = super(options)
      attrs["id"] = self.persisted? ? self._id : nil
      attrs
    end
  end
end
