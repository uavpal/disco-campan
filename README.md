<a name="top">![UAVPAL Logo](https://uavpal.com/img/uavpal-logo-cut-461px.png)</a>
# Parrot Disco campan mod

## Introduction
The Parrot Disco allows the pilot to tilt the camera view ("look up/down") via Skycontroller 2. However, **there is also a built-in pan function ("look left/right")**. Unfortunately, it's not available to the user for easy mapping in FreeFlight Pro. This mod allows the pilot to make full use of the camera panning feature besides the existing tilting function.\
The video below shows the feature in action.

[![Disco camera pan in action](https://uavpal.com/img/campan_video_420_animated.gif)](https://www.youtube.com/watch?v=CHgPvLMQGvA&t=120)

## How does it work
- After installing this mod, you can freely move the camera around by using the **Left Trigger L1** in combination with the **Left Joystick J1** (see picture below for reference).

![Skycontroller 2 buttons](https://uavpal.com/img/sc2buttons_small2.png)

- The camera can be centered by doing a **double-click with two fingers** on the FreeFlight Pro screen.
- When moving the camera around, try **not** to release the **Left Trigger L1** before releasing the **Left Joystick J1**.
   - Failure to do so can produce a continuous camera movement event flow and the camera centering will not work properly.
   - Proper operation can be restored by moving the camera again using the correct button sequence as described above.

## Requirements
- [Parrot Disco](https://www.parrot.com/us/drones/parrot-disco) / [Parrot Disco-Pro AG](https://www.parrot.com/business-solutions-us/parrot-professional/parrot-disco-pro-ag) with firmware 1.7.0, 1.7.1
- Skycontroller 2 (silver joysticks) with firmware 1.0.7 - 1.0.9 or\
or
- Skycontroller 2P (black joysticks) with firmware 1.0.3 - 1.0.5

## Software/Installation Steps
You need a PC for the initial setup (to load the mapping file to Skycontroller 2 via Disco's Wi-Fi connection). These instructions should work on the latest OS versions of Windows, macOS and GNU/Linux.

- [Download .zip archive](https://uavpal.com/download-latest-disco-campan) of the latest campan mod
- Unzip contents (the extraction process automatically creates a new folder "disco-campan-master" or "disco-campan-x.y", where by x.y is the release version number)
- Turn on your Disco.
- Turn on Skycontroller 2 and wait until it's connected to the Disco via Wi-Fi (green LED).
- Connect your PC's Wi-Fi to the Disco (e.g. DISCO-123456).
- Use an FTP tool (e.g. [FileZilla](https://filezilla-project.org/download.php?type=client)) to upload the mod to your Disco.
   - Connect via FTP to 192.168.42.1 (no username/password required)
   - You have to set the transfer type to Binary (not ASCII). In FileZilla under Edit &rarr; Settings... &rarr; Transfers &rarr; FTP: File Types &rarr; Default transfer type &rarr; change from Auto to Binary.
   - Transfer the "disco-campan-master" or "disco-campan-x.y" folder to the "/internal_000" folder on the Disco.
- On Disco firmware 1.7.0 and newer: Double press the Disco's power button to enable the telnet server.
- Open a Command Prompt (Windows)/Terminal (macOS/Linux) and Copy/Paste the following commands manually to install the campan mod.
   - `telnet 192.168.42.1` (If you get an error under Windows, make sure the [Telnet Client is installed](https://www.technipages.com/windows-10-enable-telnet))
   - `chmod +x /data/ftp/internal_000/disco-campan-*/campan_install.sh`
   - `/data/ftp/internal_000/disco-campan-*/campan_install.sh`
- That's all! :ghost: your Skycontroller 2 should reconnect and the new mapping should be available immediately.

Also check out our amazing [4G/LTE softmod](https://uavpal.com/disco) if you are interested in flying your Parrot Disco without any range limitation!

## Note
- Kudos to aragon and alexiter @ [rcgroups.com](https://www.rcgroups.com/forums/showthread.php?2728773-Official-Parrot-Disco-%2A%2A%2AOwner-s-Thread%2A%2A%2A)
- Existing custom button mappings for your Disco will be lost by applying this mod. However, you can re-apply them manually afterwards in FreeFlight Pro.
- The default tilt function via the **Left Slider** will not be available anymore after applying this mod. 
- The campan mod is independent of the [4G/LTE softmod](https://uavpal.com/disco), both can be installed at the same time.
- To uninstall, click the controller icon &rarr; BUTTONS MAPPING &rarr; RESET in FreeFlight Pro.

## Community
[![UAVPAL Slack Workspace](https://uavpal.com/img/slack.png)](https://uavpal.com/slack)

Instructions too technical? Having trouble installing the campan mod? Questions about our 4G/LTE softmod? Want to meet the developers? Interested in other mods (batteries, LEDs, etc.)? Interested to meet like-minded people? Having a great idea and want to let us know?\
We have a great and very active community on Slack, come [join us](https://uavpal.com/slack)!
