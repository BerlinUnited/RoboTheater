# RoboTheater
## Notes

* simple motions can be executed directly from the StageControl - do we need RUR_Behaviors?

* BasicAwareness

  * need a better way to prevent the robot from moving in RUR - don't disable basic awareness

    * make a dedicated behavior that looks stiff ad leds off

    * pause basic awareness
       [`ALBasicAwarenessProxy::pauseAwareness`](http://doc.aldebaran.com/2-5/naoqi/interaction/autonomousabilities/albasicawareness-api.html#ALBasicAwarenessProxy::pauseAwareness)

      [`ALBasicAwarenessProxy::resumeAwareness`](http://doc.aldebaran.com/2-5/naoqi/interaction/autonomousabilities/albasicawareness-api.html#ALBasicAwarenessProxy::resumeAwareness)

    * disable basic awareness capabilities

* Better attention

  * [`ALBasicAwarenessProxy::triggerStimulus`](http://doc.aldebaran.com/2-5/naoqi/interaction/autonomousabilities/albasicawareness-api.html#ALBasicAwarenessProxy::triggerStimulus__std::vector:float:CR)
  * [`ALTrackerProxy::lookAt`](http://doc.aldebaran.com/2-5/naoqi/trackers/altracker-api.html#ALTrackerProxy::lookAt__std::vector:float:CR.iCR.floatCR.bC)
  * [`ALTrackerProxy::toggleSearch`](http://doc.aldebaran.com/2-5/naoqi/trackers/altracker-api.html#ALTrackerProxy::toggleSearch__bCR)
  * [`ALTrackerProxy::getMode`](http://doc.aldebaran.com/2-5/naoqi/trackers/altracker-api.html#ALTrackerProxy::getMode)

* to keep the robot making active listening movements a dialog runs all the time started in ActiveListening. To start it at the "right time" there is a "wait 60s". How to start a dialog properly without that wait?! The Dialog needs to be started when the robot s completely booted. 

* [`ALListeningMovementProxy::isRunning`](http://doc.aldebaran.com/2-5/naoqi/interaction/autonomousabilities/allisteningmovement-api.html#ALListeningMovementProxy::isRunning)

