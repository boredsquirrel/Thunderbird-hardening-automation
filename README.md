# Thunderbird hardening automation for Linux
Automatically update secure settings for Thunderbird, configure them to your needs.

[The Thunderbird hardening user.js](https://github.com/HorlogeSkynet/thunderbird-user.js) is a great template for securing and hardening your Mail program. But it is just a template, and includes some settings that are too strict for most use cases (contact with people you know) and better suits usage over Tor, or anonymized in other ways. 

This script handles a few things:
- update the configurations every 48 hours
- enable support for installing Thunderbird Addons
- use your normal language, time zone, dictionary etc.
- enable news
- ...

## Set up
Look at the setup script before running anything!

```
curl https://raw.githubusercontent.com/boredsquirrel/Thunderbird-hardening-automation/main/SETUP-tb-ha.sh | bash
```

The script will be placed in `~/.local/bin/thunderbird-hardening-overwrite`.

Look it through and if you dont want to apply some changes, comment them out with a `#`. 

If you use this tool, make sure to enable notifications for this project, to get notified on updates!
