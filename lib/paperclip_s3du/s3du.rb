module Paperclip
  module Storage
    module S3du
      include S3

      def self.extended base
        S3.extended base
      end

      def flush_writes #:nodoc:
        @queued_for_write.each do |style, file|
          if file.is_a? Paperclip::S3DU::S3DirectUploadAdapter
            source = s3_bucket.objects[file.path]
            destiny = s3_object(style)
            source.move_to(destiny) if source.exists?

            @queued_for_write.delete style
          end
        end

        super
      end
    end
  end
end