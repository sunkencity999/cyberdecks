class User < ApplicationRecord

	before_save { self.email = email.downcase if email.present? }

	validates :name, length: { minimum: 1, maximum: 100}, presence: true
	validates :password, presence: true, length: { minimum: 6}
	validates :password, length: { minumum: 6, maximum: 30 }, allow_blank: true

	validates :email,
		presence: true,
		uniqueness: { case_sensitive: false},
		length: { minimum: 3, maximum: 254 }

	has_secure_password
end
