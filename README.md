# ScreenDim

> This is a fork of the PhoneGap/Cordova plugin for enabling/disabling screen dim from alunny. Modifications were made to make it compliant with Apache Cordova >= 3.4.0 for all to use.

## Usage

````html
<script src="cordova.js"></script>
<script src="ScreenDim.js"></script>
<script>
    // initialize the ScreenDim plugin
    var screenDim = new ScreenDim();

    // turn off the default screen dimming
    document.getElementById('turnoff').addEventListener('touchstart', function (e) {
        screenDim.disable();
    });

    // turn it back on
    document.getElementById('turnon').addEventListener('touchstart', function (e) {
        screenDim.enable();
    });

    // toggle it
    document.getElementById('toggle').addEventListener('touchstart', function (e) {
        screenDim.toggle();
    });
</script>
````

## Installation

Use `pluginstall` - https://github.com/alunny/pluginstall

## What/Why

Mobile devices typically have an idle timer - a time limit when the screen will
start to dim to conserve power.

By default this is a good thing - you don't want any old app keeping your screen
on and killing your power. However, in certain cases you may want to disable
this dimmer - for example, if you have a chess game where the user would be
expected to think about her move, without touching the screen, for some extended
period of time.

This plugin should be used for that purpose - disable the screen dimmer for some
part of your app, and enable it again once you're done.

## Supported Platforms

* iOS
* Android

## LICENSE

MIT
