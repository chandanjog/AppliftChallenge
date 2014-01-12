class Picture
  include Mongoid::Document
  include Mongoid::Paperclip

  embedded_in :user, :inverse_of => :pictures

  has_mongoid_attached_file :attachment,
                            :styles =>
                                {
                                :original => ['1920x1680>', :jpg],
                                :small    => ['100x100#',   :jpg],
                                :medium   => ['250x250',    :jpg],
                                :large    => ['500x500>',   :jpg]
                                }

end