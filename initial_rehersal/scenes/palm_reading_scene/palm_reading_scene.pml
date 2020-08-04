<?xml version="1.0" encoding="UTF-8" ?>
<Package name="palm_reading_scene" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
        <BehaviorDescription name="behavior" src="reach_out" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="palm_reading" src="palm_reading/palm_reading.dlg" />
    </Dialogs>
    <Resources>
        <File name="palm1" src="html/palm1.jpg" />
        <File name="palm2" src="html/palm2.jpg" />
        <File name="palm" src="html/palm.gif" />
        <File name="scan2" src="html/scan2.gif" />
        <File name="Cad" src="html/Cad.gif" />
        <File name="index" src="html/index.html" />
        <File name="scan_sound_1" src="sound/scan_sound_1.mp3" />
    </Resources>
    <Topics>
        <Topic name="palm_reading_enu" src="palm_reading/palm_reading_enu.top" topicName="palm_reading" language="en_US" />
    </Topics>
    <IgnoredPaths />
</Package>
