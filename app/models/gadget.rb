class Gadget
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  include Mongoid::Search

  embeds_many :pictures
  belongs_to :user, inverse_of: :gadgets

  field :description
  field :manufacturer
  field :info, :type => Hash

  search_in :manufacturer, :info => [:manufacturer, :description]

  validates_presence_of :user
end
