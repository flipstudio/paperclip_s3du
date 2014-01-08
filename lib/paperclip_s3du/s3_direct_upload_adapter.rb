module Paperclip
	module S3DU
		class S3DirectUploadAdapter < Paperclip::AbstractAdapter
		  delegate :path, :original_filename, :content_type, :size, :fingerprint, :to => :@target

		  def initialize(target)
		    @target = target
		  end
		end
	end
end

Paperclip.io_adapters.register Paperclip::S3DU::S3DirectUploadAdapter do |target|
  target.is_a? Paperclip::S3DU::S3DirectUpload
end