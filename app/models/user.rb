# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  location        :string           not null
#  summary         :text
#  looking_for     :string
#  languages       :string
#  profile_pic_id  :integer
#  image_file_name :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  frameworks      :string
#

class User < ActiveRecord::Base
  validates :username, :password_digest, :session_token, :position, :email, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }

  attr_reader :password

  after_initialize :ensure_session_token
  before_validation :ensure_session_token_uniqueness

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return nil unless user
    user.valid_password?(password) ? user : nil
  end

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
    @password = password
  end

  def valid_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = new_session_token
    ensure_session_token_uniqueness
    self.save
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= new_session_token
  end

  def new_session_token
    SecureRandom.base64
  end

  def ensure_session_token_uniqueness
    while User.find_by(session_token: self.session_token)
      self.session_token = new_session_token
    end
  end
end
