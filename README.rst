Griddles
===========

Griddles is a simple, opinionated grid system for modern responsive layouts. Free of columns it 
provides percentage based-layouts with an override capability so you can determine what happens to 
the layout at given break-points purely by adding classes.

High Level Goals
----------------

The grid classes are based on the pricinciple that it should be easy to understand what that 
class does at a given breakpoint at a glance. There should be minimum cognitive overhead to 
understanding how the grid will behave. This leads to making the grid intuitive and helps make 
it easy to author sites and layouts with Griddles.

Supported Browsers
-------------------

Should work in the last 2 versions of all modern browsers and IE8+:

With the following notes:

Opera 12 is required for full support -as versions prior to 12 have percentage 
rounding issues so for example, percentages based on 3rds will not render correctly.

Generated CSS
-------------

Styles are generated with SASS. The compiled src is *not* included in the tree. If you want to 
generate the styles for yourself you will need SASS 3.2.1 as a minimum.

There's a Ubuntu PPA for this here:

https://launchpad.net/~muffinresearch/+archive/sass-3.2


