# Plasma Theme Serious

Website: https://store.kde.org/p/998716/ <br>
Sources: https://github.com/tehnick/plasma-theme-serious

Bug Tracker: https://github.com/tehnick/plasma-theme-serious/issues

## License

MIT (Expat). See the [LICENSE](https://github.com/tehnick/plasma-theme-serious/blob/master/LICENSE) file for more information.

## Description

Simple theme for Plasma Desktop: https://www.kde.org/plasma-desktop

The basic idea: transparent widgets without visible borders, flat items, minimum of rounded corners, no gradients, only gray and cold colors.

Theme should work fine even with disabled Desktop Effects (see Compositor Settings in System Settings).

Have in mind that Panels widget in this theme is not transparent and this was done intentionally.

## Reloading Plasma

Sometimes you might want to reload Plasma because of a problem with applying of desktop theme. To do that open a terminal (or KRunner) and run this command:

```
kquitapp5 plasmashell && sleep 1 && plasmashell &> /dev/null &
```

Enjoy!
