class ZoneController < PM::Screen



  self.title "Equanimity"

  def on_load
      set_nav_bar_button :left, title: "", action: :open_data_screen
      set_nav_bar_button :right, title: "", action: :right_data_screen

      # set_nav_bar_button :left, title: "Results", action: :open_data_screen

      # set_nav_bar_button :right, title: "About Us", action: :open_aboutus_screen
  end

  def open_data_screen
    # open OpenDataScreen.new(nav_bar: true)
  end

  def right_data_screen
  end

  def open_aboutus_screen
  end

  #open modal with
  def will_appear
    # update_table_data

    set_attributes self.view, {
      background_color: hex_color("#FFFFFF")
    }
  end

  # ProMotion::Logger: [ERROR] Missing table_data method in TableScreen ZoneController.

  def table_data
  end


#   def open_help_screen
#       # open_modal HelpScreen.new(nav_bar: true)
#       open HelpScreen.new(nav_bar: true)

#   end

# #zaggle unique information

#   def add_zaggle_form
#     open AddZaggleForm.new(nav_bar: true)
#   end

  # def open_add_zaggle_form
  #   # open_modal AddZaggleForm.new(nav_bar: true)
  #   open UserInputForm.new(nav_bar: true)
  # end

  # def open_zaggle(args)
  #   open ZaggleScreen.new(zaggle_id: args[:zaggle_id])
  # end

  # def table_data
  #   [{
  #     cells: app_delegate.zaggles.map do [zaggle]
  #       {
  #         title: zaggle[:title],
  #         subtitle: zaggle[:content],
  #         action: :open_zaggle,
  #         editing_style: :delete,
  #         arguments: {zaggle_id: app_delegate.zaggles.index(zaggle) }
  #       }
  #     end
  #     }]
  # end


  def on_refresh
    end_refreshing
  end


  def viewDidLoad
    super
    # right_button = UIBarButtonItem.alloc.initWithTitle("About Us", style: UIBarButtonItemStyleBordered, target:self, action:'push')
    # self.navigationItem.rightBarButtonItem = right_button


    # scrollView = UIScrollView.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    # scrollView.scrollEnabled = true

    #panic button
    @panicButton = UIButton.alloc.initWithFrame(CGRectMake(20, 70, 280, 50))
    @panicButton.setTitle("Panic Zone", forState:UIControlStateNormal)
    # @panicButton.backgroundColor = UIColor.redColor
    @panicButton.addTarget(self, action:"panic_tapped", forControlEvents:UIControlEventTouchUpInside)
    @panicButton.styleId = "panic"
    self.view.addSubview(@panicButton)

    #panic_edge button
    @panicEdgeButton = UIButton.alloc.initWithFrame(CGRectMake(20, 145, 280, 50))
    @panicEdgeButton.setTitle("Panic Edge Zone", forState:UIControlStateNormal)
    # @panicEdgeButton.backgroundColor = UIColor.orangeColor
    @panicEdgeButton.addTarget(self, action:"panic_edge_tapped", forControlEvents:UIControlEventTouchUpInside)
    @panicEdgeButton.styleId = "panic_edge"
    self.view.addSubview(@panicEdgeButton)

    #learning button
    @learningButton = UIButton.alloc.initWithFrame(CGRectMake(20, 220, 280, 50))
    @learningButton.setTitle("Learning Zone", forState:UIControlStateNormal)
    # @learningButton.backgroundColor = UIColor.greenColor
    @learningButton.addTarget(self, action:"learning_tapped", forControlEvents:UIControlEventTouchUpInside)
    @learningButton.styleId = "learning"
    self.view.addSubview(@learningButton)

    #comfort edge button
    @comfortEdgeButton = UIButton.alloc.initWithFrame(CGRectMake(20, 295, 280, 50))
    @comfortEdgeButton.setTitle("Comfort Edge", forState:UIControlStateNormal)
    # @comfortEdgeButton.backgroundColor = UIColor.orangeColor
    @comfortEdgeButton.addTarget(self, action:"comfort_edge_tapped", forControlEvents:UIControlEventTouchUpInside)
    @comfortEdgeButton.styleId = "comfort_edge"
    self.view.addSubview(@comfortEdgeButton)

    #comfort button
    @comfortButton = UIButton.alloc.initWithFrame(CGRectMake(20, 370, 280, 50))
    @comfortButton.setTitle("Comfort", forState:UIControlStateNormal)
    # @comfortButton.backgroundColor = UIColor.redColor
    @comfortButton.addTarget(self, action:"comfort_tapped", forControlEvents:UIControlEventTouchUpInside)
    @comfortButton.styleId = "comfort"
    self.view.addSubview(@comfortButton)

    view.styleId = 'basics-view'

end
  # def push
  #   new_controller = ZoneController.alloc.initWithNibName(nil, bundle: nil)
  #   self.navigationController.pushViewController(new_controller, animated: true)
  # end

  def panic_tapped

    data = {answer: 1, email: App::Persistence['email'], cohort: App::Persistence['cohort']}

    BubbleWrap::HTTP.post("http://equanimity.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|

      puts data
      # puts "response = #{response}"
      # puts "response.body = #{response.body.to_str rescue ''}"
      # puts "response.error_message = #{response.error_message}"
      # puts "response.status_code = #{response.status_code.to_s rescue ''}"
      # puts "response ok = #{response.ok?}"

      if response.ok?

        App.alert("Thanks!")
      else
         App.alert("Something went wrong...")
      end
    end
  end


    def panic_edge_tapped
    data = {answer: 2, email: App::Persistence['email'], cohort: App::Persistence['cohort']}
    BubbleWrap::HTTP.post("http://equanimity.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|
      if response.ok?
        App.alert("Thanks!")
      else
         App.alert("Something went wrong...")
      end
    end
  end

    def learning_tapped
    data = {answer: 3, email: App::Persistence['email'], cohort: App::Persistence['cohort']}
    BubbleWrap::HTTP.post("http://equanimity.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|
      if response.ok?
        App.alert("Thanks!")
      else
         App.alert("Something went wrong...")
      end
    end
  end



    def comfort_edge_tapped
    data = {answer: 4, email: App::Persistence['email'], cohort: App::Persistence['cohort']}
    BubbleWrap::HTTP.post("http://equanimity.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|
      if response.ok?
        App.alert("Thanks!")
      else
         App.alert("Something went wrong...")
      end
    end
  end



    def comfort_tapped
    data = {answer: 5, email: App::Persistence['email'], cohort: App::Persistence['cohort']}
    BubbleWrap::HTTP.post("http://equanimity.herokuapp.com/users/m/:id/responses", {payload: data}) do |response|
      if response.ok?
        App.alert("Thanks!")
      else
         App.alert("Something went wrong...")
      end
    end
  end



end














