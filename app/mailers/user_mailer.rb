class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user 
    #メールの文面で使いたいので＠user
    mail to: user.email, subject: "Account activation"
    # => app/views/user_mailer/account_activation.text.erb
    # => app/views/user_mailer/account_activation.html.erb
    # https://hogehoge.com/account_activation/:id/edit
    #id <= @user.activation_token
  end


  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
