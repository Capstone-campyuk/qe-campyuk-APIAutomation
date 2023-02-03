package starter.campyuk.GeneralStepDef;

import io.cucumber.java.en.Then;
import net.serenitybdd.rest.SerenityRest;

public class StatusCodeStepDef {
    @Then("API should return response {int} Created")
    public void apiShouldReturnResponseOK(int code) {
        SerenityRest.then().statusCode(code);
    }

    @Then("API should return response {int} Not Found")
    public void apiShouldReturnResponseNotFound(int code) {
        SerenityRest.then().statusCode(code);
    }

    @Then("API should return response {int} Bad Request")
    public void apiShouldReturnResponseBadRequest(int code) {
        SerenityRest.then().statusCode(code);
    }
}
