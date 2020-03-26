# Slack Applescript Automations

This bundle allows you to automate actions in Slack

## Important note

Please use v1.0.1 and above for Slack ~4.3.3 and above

## To install
---
Clone this repository into `~/Library/Script Libraries` (If this doesn't work try putting it in `~/Library/Scripting Libraries`)

Change the folder name to `Slack.scptd`

The scripts are now accessible globally. Documentation can be found in the script Library.


## To use
---

all of the commands below can be accessed by nesting them under the script call

```
 tell script "Slack"
   ...
 end tell
```

The library can manage several tasks in v1.0
- Switch workspaces
```
  focus workspace "My Company"
```
- Switch channels
```
  focus channel "general"
```
- Send a message
```
  send message "@here this is an automated message"
  send message "@here this is an automated message" in channel "general"
  send message "@here this is an automated message" in channel "general" in workspace "My Company"
```
- Start a call, with optional name
```
  start call
  start call "Company update"
  start call "Company update" in channel "general"
  start call "Company update" in channel "general" in workspace "My Company"
```
- Set a status
```
set status "on lunch"
set status "on lunch" with icon ":knife_fork_plate:"
clear status # clears status 
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



