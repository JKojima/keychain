package jp.dotbit.keychain;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "Keychain")
public class KeychainPlugin extends Plugin {

    private Keychain implementation = new Keychain();

    @PluginMethod
    public void save(PluginCall call) {
        call.reject("not implemented");
    }

    @PluginMethod
    public void load(PluginCall call) {
        call.reject("not implemented");
    }

    @PluginMethod
    public void delete(PluginCall call) {
        call.reject("not implemented");
    }
}
