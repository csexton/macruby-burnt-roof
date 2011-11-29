#!/usr/bin/env macruby
framework 'AppKit'

class AppDelegate
  def windowWillClose(notification)
  end

  def say_hello(sender)
  end
end

# Grab a reference to the shared application

# Assign the delegate to our class

# Create a window
window = NSWindow.alloc.initWithContentRect([200, 300, 300, 100],
    styleMask:NSTitledWindowMask|NSClosableWindowMask,
    backing:NSBackingStoreBuffered,
    defer:false)

# Assign the window's delegate to our app

# Create a button

# Wire it up

# Add it to the window

# Show the window

# Run the app
