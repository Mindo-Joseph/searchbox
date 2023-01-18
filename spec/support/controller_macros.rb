module ControllerMacros
  def login
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = User.new(email:'test@mail.com', password:'test')
      sign_in user
    end
  end
end
