module Paperclip
	module S3DU
	  class Railtie < Rails::Railtie
	    initializer "paperclip_s3du.action_controller" do
		    ActiveSupport.on_load(:action_controller) do
		      def self.paperclip_s3_direct_upload_for object, options = {}
				  	only = options[:only] || [:create, :update]

				  	before_filter :only => only do |controller|
				  		param = options[:param] || :file
				  		property = options[:property] || param

					    if params.has_key? param
					      params[object][property] = Paperclip::S3DU::S3DirectUpload.new params[param]
					    end
					  end
				  end
		    end
		  end
	  end
	end
end