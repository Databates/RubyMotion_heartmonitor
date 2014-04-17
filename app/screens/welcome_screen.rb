class WelcomeController < PM::Screen #UIViewController

  def self.controller
    @controller ||= WelcomeController.alloc.initWithNibName(nil, bundle:nil)
  end

  def viewDidLoad
    super

    self.title = "EQUANIMITY"


    @containerView = UIView.alloc.initWithFrame([[80, 250], [self.view.frame.size.width, 100]])

    @welcomeTitleLabel = UILabel.alloc.initWithFrame([[10, 10], [self.view.frame.size.width - 20, 20]])
    @welcomeTitleLabel.font = UIFont.boldSystemFontOfSize(20)
    @welcomeTitleLabel.color = UIColor.whiteColor
    @welcomeTitleLabel.text = "Welcome, Boot."

    @containerView.addSubview(@welcomeTitleLabel)



    @registerButton = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @registerButton.frame = [[10, 65], [(self.view.frame.size.width  / 2) - 15, 40]]
    @registerButton.setTitle('Get Started', forState: UIControlStateNormal)
    @registerButton.addTarget(self,
                              action:'register',
                              forControlEvents:UIControlEventTouchUpInside)

    @containerView.addSubview(@registerButton)

    self.view.addSubview(@containerView)

    view.styleId = 'welcome-view'
  end

  def register
    @registerController = RegisterController.alloc.init
    self.navigationController.pushViewController(@registerController, animated:true)
  end

  def login
    @loginController = LoginController.alloc.init
    self.navigationController.pushViewController(@loginController, animated:true)
  end
end
