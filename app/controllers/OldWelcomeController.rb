# class WelcomeController < PM::Screen #UIViewController

#   def self.controller
#     @controller ||= WelcomeController.alloc.initWithNibName(nil, bundle:nil)
#   end

#   def viewDidLoad
#     super

#     self.title = "EQUANIMITY"
#     # self.view.backgroundColor = UIColor.whiteColor

#     @containerView = UIView.alloc.initWithFrame([[80, 250], [self.view.frame.size.width, 100]])

#     @welcomeTitleLabel = UILabel.alloc.initWithFrame([[10, 10], [self.view.frame.size.width - 20, 20]])
#     @welcomeTitleLabel.font = UIFont.boldSystemFontOfSize(20)
#     @welcomeTitleLabel.color = UIColor.whiteColor
#     @welcomeTitleLabel.text = "Welcome, Boot."

#     @containerView.addSubview(@welcomeTitleLabel)

#     # @welcomeLabel = UILabel.alloc.initWithFrame([[10, 35], [self.view.frame.size.width - 20, 20]])
#     # @welcomeLabel.text = 'Please select an option to start using it!'

#     # @containerView.addSubview(@welcomeLabel)

#     @registerButton = UIButton.buttonWithType(UIButtonTypeRoundedRect)
#     @registerButton.frame = [[10, 65], [(self.view.frame.size.width  / 2) - 15, 40]]
#     @registerButton.setTitle('Get Started', forState: UIControlStateNormal)
#     @registerButton.addTarget(self,
#                               action:'register',
#                               forControlEvents:UIControlEventTouchUpInside)

#     @containerView.addSubview(@registerButton)

#     # @loginButton = UIButton.buttonWithType(UIButtonTypeRoundedRect)
#     # @loginButton.frame = [[(self.view.frame.size.width  / 2) + 5, 65], [(self.view.frame.size.width  / 2) - 15, 40]]
#     # @loginButton.setTitle('Login', forState: UIControlStateNormal)
#     # @loginButton.addTarget(self,
#     #                        action:'login',
#     #                        forControlEvents:UIControlEventTouchUpInside)

#     # @containerView.addSubview(@loginButton)

#     # Finally add the scrollview to the main view
#     self.view.addSubview(@containerView)

#     view.styleId = 'welcome-view'
#   end

#   def register
#     @registerController = RegisterController.alloc.init
#     self.navigationController.pushViewController(@registerController, animated:true)
#   end

#   def login
#     @loginController = LoginController.alloc.init
#     self.navigationController.pushViewController(@loginController, animated:true)
#   end
# end
