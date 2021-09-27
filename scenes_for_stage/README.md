# RoboTheater

* simple motions can be executed directly from the StageControl - do we need RUR_Behaviors?

## BasicAwareness

  * Basic idea: the robot appears as much alive as possible with only a few exceptions in some scenes.
      * **[default]** basic awareness (only head and arms movement) + active listening movements
      * **[speaking - more active]** speaking movements
      * in few scenes: robot stiff + all LEDs off
      * movement on the floor: remote control (except for a few scripted scenes)
  * need a better way to prevent the robot from moving in RUR - don't disable basic awareness
    * make a dedicated behavior that looks stiff ad LEDs off
    * pause basic awareness
      * [`ALBasicAwarenessProxy::pauseAwareness`](http://doc.aldebaran.com/2-5/naoqi/interaction/autonomousabilities/albasicawareness-api.html#ALBasicAwarenessProxy::pauseAwareness)
      * [`ALBasicAwarenessProxy::resumeAwareness`](http://doc.aldebaran.com/2-5/naoqi/interaction/autonomousabilities/albasicawareness-api.html#ALBasicAwarenessProxy::resumeAwareness)
      * [`ALAutonomousLifeProxy::setAutonomousAbilityEnabled`](http://doc.aldebaran.com/2-5/naoqi/interaction/autonomouslife-api.html#ALAutonomousLifeProxy::setAutonomousAbilityEnabled__ssCR.b)
    * disable basic awareness capabilities
* Better attention

  * [`ALBasicAwarenessProxy::triggerStimulus`](http://doc.aldebaran.com/2-5/naoqi/interaction/autonomousabilities/albasicawareness-api.html#ALBasicAwarenessProxy::triggerStimulus__std::vector:float:CR)
  * [`ALTrackerProxy::lookAt`](http://doc.aldebaran.com/2-5/naoqi/trackers/altracker-api.html#ALTrackerProxy::lookAt__std::vector:float:CR.iCR.floatCR.bC)
  * [`ALTrackerProxy::toggleSearch`](http://doc.aldebaran.com/2-5/naoqi/trackers/altracker-api.html#ALTrackerProxy::toggleSearch__bCR)
  * [`ALTrackerProxy::getMode`](http://doc.aldebaran.com/2-5/naoqi/trackers/altracker-api.html#ALTrackerProxy::getMode)
* [**listening movements**] to keep the robot making active **listening movements** a dialog runs all the time started in ActiveListening. To start it at the "right time" there is a "wait 60s". How to start a dialog properly without that wait?! The Dialog needs to be started when the robot s completely booted. 
* [`ALListeningMovementProxy::isRunning`](http://doc.aldebaran.com/2-5/naoqi/interaction/autonomousabilities/allisteningmovement-api.html#ALListeningMovementProxy::isRunning)


## Safety Control

  * Some floors seem to reflect lasers in an unexpected way and report **false obstacles**, the robot then stops movement (especially with the remote).  This effect can be temporarily disabled with those commands:

    * [`ALAutonomousLifeProxy::setSafeguardEnabled`](http://doc.aldebaran.com/2-5/naoqi/interaction/autonomouslife-api.html#ALAutonomousLifeProxy::setSafeguardEnabled__ssCR.bCR)
    * [`ALMotionProxy::setExternalCollisionProtectionEnabled`](http://doc.aldebaran.com/2-5/naoqi/motion/reflexes-external-collision-api.html#ALMotionProxy::setExternalCollisionProtectionEnabled__ssCR.bCR)
  * Some floors seem to reflect lasers in an unexpected way, which makes the robot continuously report senor failure and retreat into the REST state. This effect can be temporarily disabled with those commands: 
    * [`ALMotionProxy::setDiagnosisEffectEnabled`](http://doc.aldebaran.com/2-5/naoqi/motion/reflexes-diagnosis-api.html#ALMotionProxy::setDiagnosisEffectEnabled__bCR)
    * [`ALDiagnosisProxy::setEnableNotification`](http://doc.aldebaran.com/2-5/naoqi/diagnosis/aldiagnosis-api.html#ALDiagnosisProxy::setEnableNotification__b)

    
