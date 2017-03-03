class Blog < ApplicationRecord
	def self.search(search) 
# Title is for the above case, the OP incorrectly had 'name'
   where("title LIKE ?", "%#{search}%")
    end
 has_many :comments, dependent: :destroy
  mount_uploader :image, AvatarUploader
end
