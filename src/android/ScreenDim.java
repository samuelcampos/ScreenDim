package org.apache.cordova.plugins.screendim;

import org.json.JSONArray;
import org.json.JSONException;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.LOG;

import android.app.Activity;
import android.view.WindowManager;
import android.view.Window;

public class ScreenDim extends CordovaPlugin {

	@Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {    	
        LOG.d("CordovaLog", "Action: " + action);
        
        if (action.equals("enable")) {
            enable();
            return true;
        } else if (action.equals("disable")) {
            disable();
            return true;
        }

        return false;
    }

    public void enable() {
    	cordova.getActivity().runOnUiThread(new Runnable() {
                public void run() {
        			cordova.getActivity().getWindow().clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        		}
        	});
    }

    public void disable() {
    	cordova.getActivity().runOnUiThread(new Runnable() {
                public void run() {  
        			cordova.getActivity().getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
        		}
        	});
    }
}
