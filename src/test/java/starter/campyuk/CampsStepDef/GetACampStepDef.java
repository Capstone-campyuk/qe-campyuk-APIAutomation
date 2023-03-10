package starter.campyuk.CampsStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.eo.Se;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.CampsAPI;
import starter.campyuk.Utils.CampyukResponse;

import static org.hamcrest.Matchers.equalTo;

public class GetACampStepDef {
    @Steps
    CampsAPI campsAPI = new CampsAPI();

    private static int id;

    @When("Set method to GET, Set path to detail camp, and click send button")
    public void setMethodToGETSetPathToDetailCampAndClickSendButton() {
        SerenityRest.when().get(CampsAPI.DETAIL_CAMP);
    }

    @Given("Base URL is _ and set {string} as jsonPath camp")
    public void baseURLIs_AndSetIdAsValidPathCamp(String jsonPath) {
        Response response = SerenityRest.lastResponse();
        id = response.getBody().jsonPath().getInt("data["+jsonPath+"].id");
        campsAPI.setDetailCampWOToken(id);
    }

    @And("API should return body id")
    public void apiShouldReturnBodyId() {
        SerenityRest.then().body(CampyukResponse.CAMP_ID,equalTo(id));
    }

    @Given("Base URL is _ and set invalid path camp {}")
    public void baseURLIs_AndSetInvalidPathCamp(Object id) {
        campsAPI.setDetailCampWInvalidPath(id);
    }

}
