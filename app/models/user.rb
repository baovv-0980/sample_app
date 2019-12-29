class User < ApplicationRecord
  VALID_EMAIL_REGEX = Settings.regex_valid_email

  attr_accessor :remember_token

  before_save{email.downcase!}

  validates :name, presence: true,
                  length: {maximum: Settings.users.your_name.maximum},
                  allow_nil: true

  validates :email, presence: true,
                    length: {maximum: Settings.users.email.maximum},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sensitive: false}

  has_secure_password
  validates :password, presence: true,
                       length: {minimum: Settings.users.password.minimum}

  class << self
    def digest string
      cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                    BCrypt::Engine.cost
      BCrypt::Password.create(string, cost: cost)
    end

    def new_token
      SecureRandom.urlsafe_base64
    end
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  def authenticated? remember_token
    return false if remember_digest.nil?

    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  def forget
    update_attribute(:remember_digest, nil)
  end
end
