class Gadget
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Attributes::Dynamic
  embeds_many :pictures
  belongs_to :user, inverse_of: :gadgets
  validates_presence_of :user
end
