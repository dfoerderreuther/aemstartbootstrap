(function ($, CQ) {
    
    var classicMode = CQ.WCM.getTopWindow().$CQ.cookie === undefined;
    
    function modeChange(mode) {
    	//
    	//
    	console.log('mode changed to ', mode);
    	//
    	//
    }
    
    // classic
    if (classicMode) {
    	CQ.WCM.getTopWindow().CQ.WCM.on('wcmmodechange', modeChange);

	// granite
    } else {
        var cookieOrigin = CQ.WCM.getTopWindow().$CQ.cookie; 
        CQ.WCM.getTopWindow().$CQ.cookie = function() { 
            var ret = cookieOrigin.apply(this, arguments);
            if (arguments[0] == 'wcmmode' && arguments[1] !== undefined) {
                modeChange(arguments[1]);
            }
            return ret;
        }
    }
    
    
}(jQuery, CQ));
