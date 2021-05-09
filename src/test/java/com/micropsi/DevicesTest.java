package com.micropsi;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class DevicesTest {

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:com/micropsi/devices")
                .tags("~@ignore")
                //.outputCucumberJson(true)
                .parallel(0);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
