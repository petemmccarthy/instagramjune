class Post < ActiveRecord::Base
	# styles allow you to do various things such as crop, flip, rotate etc
	# medium: "300x300>" means neither h or w can be >300, but it won't stretch/change aspect ratio
	has_attached_file :picture, 
							styles: { medium: "300x300>" },
					  		:storage => :s3,
# you ste storage to s3 and then pass it 3 bits of info
					  		:s3_credentials => {
					    	:bucket => 'instagramjunepm', # the name of your bucket whcih can be hardcoded
					    	:access_key_id => Rails.application.secrets.s3_access_key_id,
					    	:secret_access_key => Rails.application.secrets.s3_secret_access_key
					  	}
    

    # validatoions will stop ppl uploading malicious content (eg executable code)
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
