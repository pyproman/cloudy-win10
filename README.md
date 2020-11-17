# cloudy-win10
Shows weather in Windows 10 clock panel
## How to use
`cloudy ClockId [City [Prefix]]`
- ClockId: clock number, either 1 or 2
- City: any location supportable by [wttr.in](http://wttr.in/:help#:~:text=Supported%20location%20types:)
- Prefix - any prefix, length must be less or equal to 6 to prevent display errors
<details><summary>Why 6?</summary>
Maximum clock name length is 15. Weather takes from 7 to 8 characters. This script also uses a space after prefix, so the maximum prefix length is 6</details>

## Installation
Make a scheduled task that runs the script with arguments mentioned above every hour/every day.

## Credits
- [wttr.in](github.com/chubin/wttr.in) for its weather service
