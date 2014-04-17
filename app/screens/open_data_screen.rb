class OpenDataScreen < PM::WebScreen
  title ""

#when present things modally. Think about how close it
  def on_load
    set_nav_bar_button :left, title: "Back", action: :close_help_screen
  end

  def content
    NSURL.URLWithString('http://equanimity.herokuapp.com')
  end

#let webscreen know what it should do when the load fails
  def load_failed
    # App.alert("Failed")
    UIAlert.alloc.initWithTitle('Failed to load',
      message: "Sorry, our page is having trouble loading",
      delegate: nil,
      cancelButtonTitle: 'OK',
      otherButtonTitles: nil
      ).show
  end

  def close_help_screen
      close
  end

end
