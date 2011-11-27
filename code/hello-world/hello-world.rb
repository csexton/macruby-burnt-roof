#!/usr/bin/env macruby
framework 'AppKit'

class AppDelegate
  def windowWillClose(notification)
    puts "Bye!"
    exit
  end

  def say_hello(sender)
    puts "Hello World!"
  end
end

app = NSApplication.sharedApplication
app.delegate = AppDelegate.new

window = NSWindow.alloc.initWithContentRect([200, 300, 300, 100],
    styleMask:NSTitledWindowMask|NSClosableWindowMask,
    backing:NSBackingStoreBuffered,
    defer:false)

window.delegate   = app.delegate

button = NSButton.alloc.initWithFrame([80, 40, 120, 30])
button.title      = 'Hello World!'
button.target     = app.delegate
button.action     = 'say_hello:'

window.contentView.addSubview(button)

window.display
window.orderFrontRegardless
app.run app.run
