class User < ActiveRecord::Base
  has_attached_file :profile_photo, :styles => { :medium => "300x300", :thumb => "100x100" }
  validates_attachment_content_type :profile_photo, :content_type => /\Aimage\/.*\Z/
  after_create :send_delay_welcome

  private

  def send_welcome_email
    UserMailer.welcome(self.id).deliver!
  end

  def send_delay_welcome
    self.delay.send_welcome_email
  end
end
