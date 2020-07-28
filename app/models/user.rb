class User < ActiveRecord::Base
    include ActiveStorageSupport::SupportForBase64

    has_one_base64_attached :image
end

# class User < ApplicationRecord
#     #has_one_base64_attached :image
# end
