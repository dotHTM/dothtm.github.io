---
title: Profile Setup
layout: miki
permalink: /miki/profile.html
# bullet: ❖
updated: 2020-08-24
---

This is meant to show you how I work, not guidance to anyone.

[MIT licence, no warranty.](https://github.com/dotHTM/bash_hacks/blob/master/LICENSE)

To install the bash profile, run the following command to execute the install script.

This downloads the [bash hacks]() repo, and sets up the [profile]() `rc` and `_profile` links. Please review your configuration after installation, as personal customizations may be overridden or interact in new and unexpected behavior.

My testing and experimentation is very limited. I have only played with this profile outside of Mac in Alpine Linux. Platform specific aliases should be quarantined off behind checks for that platform compatibility (Darwin, Mac, Docker, etc).


## Mac

```
bash -c "$(curl https://raw.githubusercontent.com/dotHTM/bash_hacks/mac_install_test/installers/mac_install.sh)"
```

## Alpine *

```
# wget -O - https://raw.githubusercontent.com/dotHTM/bash_hacks/master/installers/alpine/alpine.ash | ash
```

\* may require aditional configuration (setting bash as your default shell, etc)
