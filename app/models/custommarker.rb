class Custommarker < ActiveRecord::Base
    belongs_to :user
    mount_uploader :markerimage, NewpicUploader
end
