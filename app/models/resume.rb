class Resume < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader
end
