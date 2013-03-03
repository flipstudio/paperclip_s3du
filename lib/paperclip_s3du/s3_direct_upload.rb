module Paperclip
	module S3DU
		class S3DirectUpload
		  attr_reader :path, :size, :content_type

		  def initialize hash = {}
		    @path = hash[:file_path]
		    @size = hash[:file_size]
		    @content_type = hash[:content_type]
		  end

		  def original_filename
		    File.basename @path
		  end
		end
	end
end