# Thunderbird hardening automation for Linux
Automatically update secure settings for Thunderbird, configure them to your needs.

[The Thunderbird hardening user.js](https://github.com/HorlogeSkynet/thunderbird-user.js) is a great template for securing and hardening your Mail program. But it is just a template, and includes some settings that are too strict for most use cases (contact with people you know) and better suits usage over Tor, or anonymized in other ways. 

This script handles a few things:
- update the configurations every day
- enable support for installing Thunderbird Addons
- enable autoconfig when adding a new mail account
- use your normal language, time zone, dictionary etc.
- enable news
- ...

To install the tool, download the script, and place it in your Thunderbird/Betterbird data folder. I dont recommend to use Betterbird, it is likely outdated, but it is supported by this tool.

Traditional installation: `~/.thunderbird/`

Flatpak: `~/.var/app/org.mozilla.Thunderbird/.thunderbird/`

Look it through and if you dont want to apply some changes, comment them out with a `#`. 

Make the script executable and double click it, it should place a .desktop entry in `~/.config/autostart/`, which will run on every login, and take care of updating it.

If you use this tool, make sure to enable notifications for this project, to get notified on updates!
