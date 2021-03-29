# Slack Applescript Automations

This bundle allows you to automate actions in Slack

Please consider buying me a coffee if this has made your work easier

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/C0C31L438)

## Important note

Please use v2 and above for Slack ~4.10 and above. v2 supports the new shortcuts menu in Slack. Please review the commands below to see the scripts that could not be made backwards compatible.

## To install
---
Clone this repository and unzip the Slack.zip archive into your `~/Library/Script Libraries`  (If this doesn't work try putting it in `~/Library/Scripting Libraries`)

The scripts are now accessible globally. Documentation can be found in the script Library.

## Contributing
---
The `src` file contains the source code - please make changes to this code and then export and zip the bundle.

## Applescript tutorial
---

If you need a beginners guide to applescript please look at [my blog post](https://www.samknight.co.uk/2018/12/13/automating-slack-with-applescript.html)

## To use
---

all of the commands below can be accessed by nesting them under the script call

```
 tell script "Slack"
   ...
 end tell
```

The library can manage several tasks in v1.2

- Send a message

Must include either a channel name (#channel-name) or username (@user.name)
```
  # Not backwards compatible with v1 of slack_applescripts
  send message "this is an automated message"
  send message "this is an automated message" in channel "#general"
  send message "this is an automated message" in channel "#general" in workspace "My Company"
```

- Switch workspaces
```
  focus workspace "My Company"
```
- Switch channels
```
  focus channel "general"
```

- Start a call, with optional name
We have not been able to test slack calls in the latest version due to it being a premium Slack feature

```
  # Most scripts are not backwards compatible with v1
  start call
  start call "Company update" in channel "general"
  start call "Company update" in channel "general" in workspace "My Company"
```

- Set a status
```
set status "on lunch"
set status "on lunch" with icon ":knife_fork_plate:"
clear status # clears status 

```
IN BETA: Timed statuses - Known issue if mouse pointer is positioned over status dialog box

Only 24 hour clock seems to be working on my version. This could be my slack settings. Feel free to test 8:31pm in the example below
```
set status "on lunch" with icon ":knife_fork_plate:" until "20:31"
```

- Set do not disturb
```
set do not disturb # Default time period
set do not disturb for "1 hour" # Not backwards compatible with v1
set do not disturb until "5pm" # Not backwards compatible with v1
clear do not disturb # clears do not disturb 
```

- Set yourself as away
```
set as away
```

- Set yourself as active (New in v2)
```
set as active
```

- Set a topic
```
  set topic "New automated topic"
  set topic "New automated topic" in channel "general"
  set topic "New automated topic" in channel "general" in workspace "My Company"
```

- Window management
```
  focus main window
  focus call window
```



