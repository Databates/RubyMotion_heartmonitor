class AboutUs < PM::Screen
  
  title ""

#when present things modally. Think about how close it
  def on_load
    set_nav_bar_button :left, title: "Back", action: :close_help_screen
  end

  # def content
  # #   NSURL.URLWithString('http://equanimity.herokuapp.com')
  # end

  def content
  end

  def viewDidLoad


#About Us text: 
    # @blockText = UITextView.alloc.initWithFrame(self.frame)
    # @blockText.editable = false
    # @blockText.text = "Some long string about who we are lorem ipsum and shit. Some long string about who we are lorem ipsum and shit"
    # self.addSubview(@blockText)
  end



  def close_help_screen
      close
  end

end
