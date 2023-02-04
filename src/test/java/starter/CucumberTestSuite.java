package starter;


import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        tags = "@Campyuk",
        plugin = {"pretty"},
        features = "classpath:features",
        dryRun = false,
        glue = "fr.tlasnier.cucumber"
)
public class CucumberTestSuite {}
