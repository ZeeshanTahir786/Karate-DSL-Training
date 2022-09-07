import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class KarateTests {
    @Test
    public void testRunner() {
        Results results = Runner.path("classpath:tests").tags("@ignore").outputCucumberJson(true).parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
