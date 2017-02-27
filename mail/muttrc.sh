#!/bin/bash

[[ -f ~/.msmtprc ]] && cat <<!
set sendmail="msmtp"
!

[[ $GPG_AGENT_INFO ]] ||
[[ -S ~/.gnupg/S.gpg-agent ]] ||
[[ -S /run/user/$UID/gnupg/S.gpg-agent ]] && cat <<!
set crypt_use_gpgme
!
# (yes, gnupg more or less hardcodes the /run path)

[[ -f /usr/share/doc/mutt/README.Debian ]] && cat <<!
set xterm_set_titles
!

[[ -d ~/.cache/mutt ]] && cat <<!
set header_cache="~/.cache/mutt"
set message_cachedir="~/.cache/mutt"
!

[[ -f ~/.auth/muttrc ]] && cat ~/.auth/muttrc

[[ -f ~/.muttrc-"$HOSTNAME" ]] && cat ~/.muttrc-"$HOSTNAME"

exit 0
