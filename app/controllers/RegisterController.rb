# file app/controllers/RegisterController.rb
class RegisterController < PM::FormotionScreen #Formotion::FormController #PM:FormotionScreen


  # def on_load
  #     set_nav_bar_button :left, title: "Cancel", action: :close_screen
  # end

  def init
    form = Formotion::Form.new({
      sections: [{
        rows: [{
          title: "Email",
          key: :email,
          placeholder: "me@mail.com",
          type: :email,
          auto_correction: :no,
          auto_capitalization: :none
        },
        {
          title: "Cohort",
          key: :cohort,
          type: :picker,
          items: ["Otters", "Grasshoppers", "Dragonflies", "Staff"],
          # value: "Cohort",
          placeholder: "Cohort",
          input_accessory: :done
          }],
      }, {
        title: "Calm down, everything is fine.",
        rows: [{
          title: "Continue",
          type: :submit,
        }]
      }]
    })
    form.on_submit do
      self.register
    end
    super.initWithForm(form)
  end


  # def on_submit(form)
  #   data = form.render

  #   close
  # end

  # def close_screen
  #   close
  # end



  def viewDidLoad
    super

    self.title = "Sign In"
    view.styleId = 'myView'
  end

  def register
    headers = { 'Content-Type' => 'application/json' }
    data = BW::JSON.generate({ user: {
                                 email: form.render[:email],
                                 name: form.render[:name],
                                 password: form.render[:password],
                                 password_confirmation: form.render[:password_confirmation]
                                } })

    # if form.render[:email].nil? ||
    #   #  form.render[:name].nil? ||
    #   #  form.render[:password].nil? ||
    #   #  form.render[:password_confirmation].nil?
    #   # App.alert("Please complete all the fields")
    # else
      # if form.render[:password] != form.render[:password_confirmation]
      #   App.alert("Your password doesn't match confirmation, check again")
      # else
        SVProgressHUD.showWithStatus("Registering new account...", maskType:SVProgressHUDMaskTypeGradient)
        App::Persistence['email'] = form.render[:email]
        App::Persistence['cohort'] = form.render[:cohort]
        # App.alert("You did it!")
        puts App::Persistence['email']
        puts App::Persistence['cohort']
        # self.navigationController.dismissModalViewControllerAnimated(true)
        open ZoneController.new(nav_bar: true)
        # alert('hi')
        # BW::HTTP.post(API_REGISTER_ENDPOINT, { headers: headers , payload: data } ) do |response|
        #   if response.status_description.nil?
        #     App.alert(response.error_message)
        #   else
        #     if response.ok?
        #       json = BW::JSON.parse(response.body.to_str)
        #       App::Persistence['authToken'] = json['data']['auth_token']
        #       App.alert(json['info'])
        #       self.navigationController.dismissModalViewControllerAnimated(true)
        #       TasksListController.controller.refresh
        #     elsif response.status_code.to_s =~ /40\d/
        #       App.alert("Registration failed")
        #     else
        #       App.alert(response.to_str)
        #     end
        #   end
          SVProgressHUD.dismiss
        # end
      # end
    # end
  end
end
