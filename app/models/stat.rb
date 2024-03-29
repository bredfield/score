class Stat
  include Mongoid::Document
  include Mongoid::Timestamps

  ## Fields
  field :name
  field :desc
  field :type
  field :unit
  field :starred # Favorited
  field :o_goal # Overall Goal
  field :t_reset # Time Period of Reset (If nil/blank setting is off)
  field :t_goal # Time Period of Goal (If nil/blank setting is off)
  field :t_group # Group by time period (If nil/blank setting is off)

  ## Relations
  # embeds_many :entries
  belongs_to :category
  # belongs_to :collection

  def self.types
  	t = %w[distance time count mood scale]
  end

  def self.time_periods
  	p = %w[hour day week month year]
  end

  


end
