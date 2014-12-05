#!/bin/sh
xrdb -merge ~/.Xresources
setxkbmap pl
exec awesome
