class Resource < ActiveRecord::Base
	mount_uploader :document, DocumentUploader
	validates :title, presence: true
end
