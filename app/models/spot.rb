class Spot < ActiveRecord::Base
    belongs_to :user
    mount_uploader :my_image, NewpicUploader
end
