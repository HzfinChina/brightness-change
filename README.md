# brightness-change
change your screen brightness by shortcuts in i3wm and show brightness percentage in polybar



put the changelight.sh in your ~/.config/i3/
you can adjust the brightness change size in this file
then 
```
chmod +x ~/.config/i3/changelight.sh
```


put this in your i3 config
```
bindsym $mod+F7 exec --no-startup-id ~/.config/i3/changelight.sh -1
bindsym $mod+F8 exec --no-startup-id ~/.config/i3/changelight.sh +1
```
you can replace it with the shortcuts at your pleasure

---
polybar show your brightness percentage
move backlight.sh to ~/.config/polybar/
and chmod +x it
add this in your polybar config:
```
[module/backlight]
type = custom/script
exec = ~/.config/polybar/backlight.sh
tail = true
interval = 0
format-prefix = "☀ "
format-suffix = "%"
```

[module/backlight]
type = custom/script
exec = ~/.config/polybar/backlight.sh
tail = true
interval = 0
format-prefix = "☀ "
format-suffix = "%"
