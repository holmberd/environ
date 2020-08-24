## Create Backup Ubuntu 18.01
`dconf dump /apps/guake/ > backup_file`

## Restore backup
`dconf reset -f /apps/guake/`
`dconf load /apps/guake/ < backup_file`

## Latest backup
```
[general]
prompt-on-quit=true
window-height=13
mouse-display=true
window-width=100
max-tab-name-length=100
window-losefocus=false
history-size=2000
open-tab-cwd=true
window-tabbar=true
window-halignment=0
quick-open-command-line='gedit %(file_path)s'
compat-delete='delete-sequence'
scroll-keystroke=true
abbreviate-tab-names=false
display-n=0
use-default-font=false
use-trayicon=true
use-scrollbar=true
window-refocus=false
use-popup=true

[keybindings/local]
toggle-fullscreen='<Primary>Return'

[keybindings/global]
show-hide='<Primary>grave'

[style/background]
transparency=96

[style/font]
allow-bold=true
palette='#121212121212:#fafa25257373:#7373d2d21616:#dfdfd4d46060:#0f0f7f7fcfcf:#87870000ffff:#4242a7a7cfcf:#bbbbbbbbbbbb:#555555555555:#f5f566669c9c:#4e4e9a9a0606:#fefef2f26c6c:#0000afafffff:#afaf8787ffff:#5050cdcdfefe:#ffffffffffff:#bbbbbbbbbbbb:#121212121212'
palette-name='Custom'
```
