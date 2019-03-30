#!/bin/bash

[[ -f ~/.msmtprc ]] ||
[[ -f ~/.config/msmtp/config ]] && cat <<!
set sendmail="msmtp"
!

[[ -f /usr/share/doc/mutt/README.Debian ]] && cat <<!
set xterm_set_titles
!

[[ -d ~/.cache/mutt ]] && cat <<!
set header_cache="~/.cache/mutt"
set message_cachedir="~/.cache/mutt"
!

if [[ -f ~/.config/mutt/muttrc-"$HOSTNAME" ]]; then
	cat ~/.config/mutt/muttrc-"$HOSTNAME"
elif [[ -f ~/.muttrc-"$HOSTNAME" ]]; then
	cat ~/.muttrc-"$HOSTNAME"
fi

exit 0
