class AppDelegate < PM::Delegate


  def on_load(app, options) 
     if !App::Persistence['email'].nil?
      open WelcomeController.new(nav_bar: true)
    else
      open ZoneController.new(nav_bar: true)
    end
  
  end



  # def application(application, didFinishLaunchingWithOptions:launchOptions)

  #   if !App::Persistence['email'].nil?
  #     # showWelcomeController
  #     open WelcomeController.new(nav_bar: true)
  #   else

  #   # @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  #   # @zone_controller = ZoneController.alloc.initWithNibName(nil, bundle:nil)
  #   # @window.rootViewController = UINavigationController.alloc.initWithRootViewController(@zone_controller)
  #   # @window.makeKeyAndVisible
  #     open ZoneController.new(nav_bar: true)
  #   end
  #   true
  # end

  def applicationDidBecomeActive(application)
    Takeoff::Reminders.reset
  end

  def applicationDidEnterBackground(application)
    Takeoff::Reminders.schedule(
      body: "Please check in with Equanimity.",
      fire_date: 1800 #seconds
    )

    Takeoff::Reminders.schedule(
      body: "Please don't forget to tell us how you're doing!",
      fire_date: 2400 #Time object in the futuxre
    )
  end

  # def showWelcomeController

  #   # @welcomeController = WelcomeController.alloc.init
  #   # @welcomeNavigationController = UINavigationController.alloc.init
  #   # @welcomeNavigationController.pushViewController(@welcomeController, animated:false)

  #   # @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

  #   # @navigationController = UINavigationController.alloc.init
  #   # @navigationController.pushViewController(TasksListController.controller,
  #   #                                          animated:false)

  #   # @window.rootViewController = @navigationController
  #   # @window.makeKeyAndVisible

  #   TasksListController.controller.presentModalViewController(@welcomeNavigationController,
  #                                                             animated:true)
  # end
end
