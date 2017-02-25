class Book < ActiveRecord::Base
    validates_presence_of :title ,message: "정보를 입력해주세요"
      mount_uploader :avatar, AvatarUploader
      mount_uploader :image, ImageUploader
end
