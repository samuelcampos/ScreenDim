(function (cordova) {
    // dims by default
    var on = true;

    cordova.screenDim = { };

    cordova.screenDim.enable = function () {
        on = true;
        cordova.exec(null, null, 'ScreenDim', 'enable', []);
    };

    cordova.screenDim.disable = function () {
        on = false;
        cordova.exec(null, null, 'ScreenDim', 'disable', []);
    };

    cordova.screenDim.toggle = function () {
        if (on) {
            this.disable();
        } else {
            this.enable();
        }
    };
}).call(this, (window.cordova || window.Cordova));
