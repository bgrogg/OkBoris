# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  location        :string           not null
#  summary         :text
#  profile_pic_id  :integer
#  image_file_name :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  latitude        :float
#  longitude       :float
#  gender          :string           not null
#  orientation     :string           not null
#  age             :string           not null
#  life            :text
#  skills          :text
#  favorites       :text
#  thinking        :text
#  friday          :text
#  msg_if          :text
#

class User < ActiveRecord::Base
  validates :username, :password_digest, :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :location, length: { is: 5 }
  # validates :age, inclusion: { in: 18..100 }

  attr_reader :password

  after_initialize :ensure_session_token
  before_validation :ensure_session_token_uniqueness
  geocoded_by :location
  after_validation :geocode, if: ->(obj) { obj.location.present? && obj.location_changed? }

  acts_as_mappable default_units: :miles,
                   distance_field_name: :distance,
                   lat_column_name: :latitude,
                   lng_column_name: :longitude


  has_many :responses

  has_many :choices,
    through: :responses,
    source: :choice

  has_many :questions,
    through: :responses,
    source: :question

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

  def find_users_within(miles)
    User.within(miles, origin: self)
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
