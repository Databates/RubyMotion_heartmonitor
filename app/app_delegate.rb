class AppDelegate < PM::Delegate

  def application(application, didFinishLaunchingWithOptions:launchOptions)
    # notification = UILocalNotification.alloc.init
    # notification.fireDate = NSDate.dateWithTimeIntervalSinceNow(10)
    # notification.alertBody = "My first notification"
    # notification.alertAction = "Yo."
    # notification.applicationIconBadgeNumber = 1
    # application.scheduleLocalNotification(notification)

    if App::Persistence['email'].nil?
      showWelcomeController
    else
      open ZoneController.new

    end
    true
  end

  def applicationDidBecomeActive(application)
    Takeoff::Reminders.reset
  end

  def applicationDidEnterBackground(application)
      Takeoff::Reminders.schedule(
      body: "Testing Reminder.",
      fire_date: 5 #seconds
    )


    Takeoff::Reminders.schedule(
      body: "Please check in with Equanimity.",
      fire_date: 1800 #seconds
    )

    Takeoff::Reminders.schedule(
      body: "Please don't forget to tell us how you're doing!",
      fire_date: 2400 #Time object in the futuxre
    )
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
