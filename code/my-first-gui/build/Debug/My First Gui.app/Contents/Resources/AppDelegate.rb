#
#  AppDelegate.rb
#  My First Gui
#
#  Created by Christopher Sexton on 11/27/11.
#  Copyright 2011 __MyCompanyName__. All rights reserved.
#

class AppDelegate
    attr_accessor :window
    attr_accessor :ouch_button
    def applicationDidFinishLaunching(a_notification)
        # Insert code here to initialize your application
    end
    
    def ouch_button_pressed(sender)
        ouch_button.title = "OUCH!"
    end
end

