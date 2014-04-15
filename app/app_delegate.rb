class AppDelegate < PM::Delegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    if App::Persistence['email'].nil?
      showWelcomeController
    else
      open ZoneController.new
    end
    true
  end

  def showWelcomeController
    @welcomeController = WelcomeController.alloc.init
    @welcomeNavigationController = UINavigationController.alloc.init
    @welcomeNavigationController.pushViewController(@welcomeController, animated:false)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    @navigationController = UINavigationController.alloc.init
    @navigationController.pushViewController(TasksListController.controller,
                                             animated:false)

    @window.rootViewController = @navigationController
    @window.makeKeyAndVisible

    TasksListController.controller.presentModalViewController(@welcomeNavigationController,
                                                              animated:true)
  end
end
