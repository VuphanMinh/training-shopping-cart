class UserMailer < ApplicationMailer
  default from: 'phanminhvuit@gmail.com' 
  def registration(user_id)
    @user = User.find_by(id: user_id) 
    mail(to: 'vubingboong0310@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
