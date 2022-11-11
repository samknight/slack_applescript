#!/bin/bash

# on
# off
# lunch
#

set -e

COMMAND="$1"
EMOJI="$2"

Help()
{
   # Display Help
   echo "Useful script to change Slack status from command line"
   echo
   echo "Syntax: slack.sh command emoji"
   echo
}

if [ $# -eq 0 ]
  then
    Help
fi

while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
done


case "$COMMAND" in
  "on")
EMOJI=${EMOJI:-'ringed_planet'}
osascript -e 'tell script "Slack"
	set as active
	set status "Working remotely" with icon ":'$EMOJI':"
end tell'
  ;;
  "off")
EMOJI=${EMOJI:-'away_1'}
osascript -e 'tell script "Slack"
	set as away
	set status "Away" with icon ":'$EMOJI':"
end tell'
  ;;
  "lunch")
EMOJI=${EMOJI:-'spaghetti'}
osascript -e 'tell script "Slack"
	set as away
	set status "Lunch" with icon ":'$EMOJI':"
end tell'
  ;;
esac
