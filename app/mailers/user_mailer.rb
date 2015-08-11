class UserMailer < ApplicationMailer
  default :from => "from@example.com"

  def welcome(user_id)
    @user = User.find(user_id)
    mail(to: @user.email, subject: 'Welcome to Photo App!')
  end
end
