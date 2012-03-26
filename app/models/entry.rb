class Entry
  include Mongoid::Document
  include Mongoid::Timestamps
  field :quant, :type => Integer # Quantity #
  field :s_time, type: Time # Start Time
  field :e_time, type: Time # End Time (For Timer)
  field :s_loc, type: Array # Lat, Long  /  Start Location
  field :e_loc, type: Array # End Location

  embedded_in :stat

  def duration
  	d = e_time - s_time
  end
  
end
