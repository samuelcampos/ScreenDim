var ScreenDim = function() {
	// dims by default
	this.on = true;
	
};

ScreenDim.prototype.enable = function () {
    this.on = true;
    cordova.exec(null, null, 'ScreenDim', 'enable', []);
};

ScreenDim.prototype.disable = function () {
    this.on = false;
    cordova.exec(null, null, 'ScreenDim', 'disable', []);
};

ScreenDim.prototype.toggle = function () {
    if (this.on) {
        this.disable();
    } else {
        this.enable();
    }
};

ScreenDim.prototype.isEnabled = function () {
	return this.on;
};