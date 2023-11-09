# Outage in the schedule feature

## Duration

The schedule feature went MIA on November 9th, deciding to play hide-and-seek for a whopping 2 hours in Pacific time. Guess it needed a break from the daily grind!

## Impact

Hold your horses, or in this case, your schedules! The website's schedule feature took a spontaneous vacation, leaving 100% of users scratching their heads. No schedules were harmed, just temporarily misplaced.

## Timeline

### Detection Time

At 9:35, our monitoring alerts woke up from their nap, screamed "Houston, we have a problem!".

### Detection Method

Monitoring systems went wild, setting off alarms that screamed, "Hold up, something's fishy!" The error rates skyrocketed, and schedule-related API calls decided to break dance with latency.

### Actions Taken

we sent our team straight to the schedule service crime scene. The mission? Unravel the mystery that left our schedules doing the electric slide into chaos.

## Root Cause

Hold on to your hats: it was a misconfiguration circus! The schedule service, in its excitement to impress, fumbled the latest update without rehearsing the act. Note to self: always practice before the big show.

## Resolution

Cue the drumroll! We fixed the misconfiguration blunder by giving our schedule service a crash course in effective communication with the database. After a thorough rehearsal excuses me"testing" we sent it back to the main stage

## Corrective and Preventative Measures

### Improvements/Fixes

To avoid more unplanned vacations, we're implementing stricter deployment validation checks. No misconfigurations allowed! We want our schedules to be reliable

## Tasks

- Host a "Configurations Carnival" where potential misconfigurations become the stars of a circus act. We'll catch them in the spotlight, no escape tricks allowed!
- Teach our CI pipeline to be the detectives by adding automated tests for configuration files. No errors allowed, or they'll face the laughter of shame.
