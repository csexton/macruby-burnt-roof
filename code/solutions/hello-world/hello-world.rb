#!/usr/bin/env macruby
framework 'AppKit'

class AppDelegate
  def windowWillClose(notification)
    puts "Goodbye!"
    exit
  end

  def say_hello(sender)
    puts "Hello World!"
  end
end

# Grab a reference to the shared application
app = NSApplication.sharedApplication

# Assign the delegate to our class
app.delegate = AppDelegate.new

# Create a window
window = NSWindow.alloc.initWithContentRect([200, 300, 300, 100],
    styleMask:NSTitledWindowMask|NSClosableWindowMask,
    backing:NSBackingStoreBuffered,
    defer:false)

# Assign the window's delegate to our app
window.delegate   = app.delegate

# Create a button
button = NSButton.alloc.initWithFrame([80, 40, 120, 30])

# Wire it up
button.title      = 'Hello World!'
button.target     = app.delegate
button.action     = 'say_hello:'

# Add it to the window
window.contentView.addSubview(button)

# Show the window
window.display
window.orderFrontRegardless

# Run the app
app.run
