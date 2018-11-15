class User < ApplicationRecord
	has_many :posts, dependent: :destroy
	has_many :comments, dependent: :destroy

	before_save { self.email = email.downcase if email.present? }
	before_save { self.role ||= :member }



	validates :name, length: { minimum: 1, maximum: 100}, presence: true
	validates :password, presence: true, length: { minimum: 6}
	validates :password, length: { minumum: 6, maximum: 30 }, allow_blank: true

	validates :email,
		presence: true,
		uniqueness: { case_sensitive: false},
		length: { minimum: 3, maximum: 254 }

	has_secure_password

	enum role: [:member, :admin]

	def avatar_url(size)
		gravatar_id = Digest::MD5::hexdigest(self.email).downcase
		"http://gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
	end

end
