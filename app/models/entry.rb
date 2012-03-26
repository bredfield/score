class Entry
  include Mongoid::Document
  include Mongoid::Timestamps
  field :quant, :type => Integer

  embedded_in :stat
  
end
