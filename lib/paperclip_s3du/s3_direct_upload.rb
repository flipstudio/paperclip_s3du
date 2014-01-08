module Paperclip
	module S3DU
		class S3DirectUpload
		  attr_reader :path, :size, :content_type, :fingerprint

		  def initialize hash = {}
		    @path = hash[:file_path]
		    @size = hash[:file_size]
		    @content_type = hash[:content_type]
		    @fingerprint = hash[:fingerprint]
		  end

		  def original_filename
		    File.basename @path
		  end
		end
	end
end