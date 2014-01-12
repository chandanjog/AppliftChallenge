class Picture
  include Mongoid::Document
  include Mongoid::Paperclip

  has_mongoid_attached_file :attachment,
                            :styles =>
                                {
                                :original => ['1920x1680>', :jpg],
                                :small    => ['100x100#',   :jpg],
                                :medium   => ['250x250',    :jpg],
                                :large    => ['500x500>',   :jpg]
                                },
                            :path => ':rails_root/public/system/:class/:attachment/:id_partition/:style/:filename',
                            :url => '/system/:class/:attachment/:id_partition/:style/:filename'

end
