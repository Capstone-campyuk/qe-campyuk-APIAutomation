package starter.campyuk.CampsStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.CampsAPI;
import starter.campyuk.Utils.CampyukResponse;

import static org.hamcrest.Matchers.equalTo;

public class GetListCampsStepDef {
    @Steps
    CampsAPI campsAPI;

    @Given("Base URL is _ and set {int} as parameter page")
    public void baseURLIs_AndSetAsParameterPage(int page) {
        campsAPI.setGetListAllCamps(page);
    }

    @When("Set method to GET, Set path to camps, and click send button")
    public void setMethodToGETSetPathToCampsAndClickSendButton() {
        SerenityRest.when().get(CampsAPI.DATA_CAMPS);
    }

    @And("API should return body page {int}")
    public void apiShouldReturnBodyPage(int page) {
        SerenityRest.then().body(CampyukResponse.PAGE,equalTo(page));
    }

    @Given("Base URL is _ and set {int} as parameter page as logged in user")
    public void baseURLIs_AndSetPageAsParameterPageAsLoggedInUser(int page) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString(CampyukResponse.TOKEN);
        campsAPI.setGetListAllCampsAsLoggedInUser(page,token);
    }

    @Given("Base URL is _ and set {} as invalid parameter page")
    public void baseURLIs_AndSetPageAsInvalidParameterPage(Object page) {
        campsAPI.setGetListAllCampsWithObjectPage(page);
    }

    @And("API should return body verification_status {string}")
    public void apiShouldReturnBodyVerification_status(String status) {
        SerenityRest.then().body(CampyukResponse.VERIFICATION_STATUS,equalTo(status));
    }
}
