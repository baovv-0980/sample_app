class User < ApplicationRecord
  VALID_EMAIL_REGEX = Settings.regex_valid_email
  before_save{email.downcase!}
  validates :name, presence: true,
                   length: {maximum: Settings.users.your_name.maximum}
  validates :email, presence: true,
                    length: {maximum: Settings.users.email.maximum},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true,
                       length: {minimum: Settings.users.password.minimum}
end
