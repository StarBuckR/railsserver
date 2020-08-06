class User < ActiveRecord::Base
    include ActiveStorageSupport::SupportForBase64

    has_one_base64_attached :image
    validates :ip_address, presence: true
    validates :note, presence: true
    validates :machine_name, presence: true
    validates :username, presence: true
end

# class User < ApplicationRecord
#     #has_one_base64_attached :image
# end
