package com.micropsi.devices;

import com.intuit.karate.junit5.Karate;

class DevicesRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("devices").relativeTo(getClass());
    }    

}
