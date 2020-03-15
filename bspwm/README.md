# bspwm-c

This configuration file needs to be used with [Bspwm](https://github.com/baskerville/bspwm).

Bspwm depends on the sxhkd shortcut daemon [sxhkd](https://github.com/baskerville/sxhkd).

The outlined architecture is the following:

```
        PROCESS          SOCKET
sxhkd  -------->  bspc  <------>  bspwm
```

- My sxhkdrc configuration file

https://github.com/imaojun/bspwm-configuration
