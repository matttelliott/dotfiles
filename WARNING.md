# WARNING

This repo aims to back up as much existing user data as possible, but it is
primarily indended to run on new machines and is potentially destructive.

When running a setup script and entering your password, please be sure that you
understand the risks

## Don't pipe to bash

This probably won't work. 

```bash
curl https://raw.githubusercontent.com/matttelliott/dotfiles/refs/heads/master/setup.mac.sh | bash
```

Instead try

```bash
curl https://raw.githubusercontent.com/matttelliott/dotfiles/refs/heads/master/setup.mac.sh > temp.sh && bash temp.sh
```
