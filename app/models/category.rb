class Category < ActiveRecord::Base

  has_attached_file :avatar,
    styles: {medium: "640x360>", thumb: "100x100>"},
    default_url: "/images/category/:style/missing_category.png"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
