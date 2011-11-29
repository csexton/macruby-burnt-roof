$teaTimeSeconds = 3

class AppDelegate
  def applicationDidFinishLaunching(notification)
    NSApp.hide nil
    NSTimer.scheduledTimerWithTimeInterval $teaTimeSeconds,
      target:self,
      selector:'teaReady:',
      userInfo:nil,
      repeats:false
    end

  def teaReady(theTimer)
    NSApp.activateIgnoringOtherApps true

    NSAlert.alertWithMessageText(
      '☕ Tea is ready',
      defaultButton:nil,
      alternateButton:nil,
      otherButton:nil,
      informativeTextWithFormat:'Tea is ready!'
    ).runModal
    NSApp.terminate nil
  end
end
