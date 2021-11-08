# screenshotter

Norns mod to take screenshots of screen

Install in maiden

```
;install https://github.com/nattog/screenshotter
```

Add to a script like this

```
screenshotter = require 'screenshotter/lib/mod'
```

Then to take a screenshot run this command whenever

```
screenshotter.capture()
```

You can provide a file name:

```
screenshotter.capture('sleep')
```

It will index if a file already exists with this name


```
-- Outputs:
-- sleep.png
-- sleep_1.png
-- sleep_2.png
-- sleep_3.png
-- etc..
```

That's it. 

