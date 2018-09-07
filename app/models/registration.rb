class Registration < ApplicationRecord
  validates :name, :age, :phone_number, :email, :address, :team_name, presence: true
  before_save :ensure_token

  EVENT = "VIII Rajdzie Rowerowym"
  NAME = 'Na jesiennym szlaku'
  DATE = '30 września 2018'

  def ensure_token
    if token.blank?
    self.token = generate_token
    end
  end

  private

  def generate_token
    loop do
      token = SecureRandom.uuid
      break token unless Registration.where(token: token).first
    end
  end
end
