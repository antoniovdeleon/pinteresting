class Pin < ActiveRecord::Base
    belongs_to :user
    has_attached_file :image, 
      :styles => { :medium => "300x300>", 
      :thumb => "100x100>" }, 
      # :storage => :s3,
      # :bucket => ENV['pinterestization.herokuapp'],
      default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end




