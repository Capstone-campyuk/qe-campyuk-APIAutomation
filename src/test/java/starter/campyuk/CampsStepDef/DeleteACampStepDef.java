package starter.campyuk.CampsStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.CampsAPI;
import starter.campyuk.Utils.CampyukResponse;

public class DeleteACampStepDef {
    @Steps
    CampsAPI campsAPI;
    private static String token;
    private static int camp_id;

    @And("Set token to a method in delete camp")
    public void setTokenToAMethodInDeleteCamp() {
        token = SerenityRest.lastResponse().getBody().jsonPath().getString(CampyukResponse.TOKEN);
    }

    @And("Set camp_id to a method with {string} as jsonPath in delete camp")
    public void setCamp_idToAMethodWithAsJsonPathInDeleteCamp(String jsonPath) {
        camp_id = SerenityRest.lastResponse().getBody().jsonPath().getInt("data["+jsonPath+"].id");
    }

    @Given("Base URL, set token to bearer token, set parameter to camp_id")
    public void baseURLSetTokenToBearerTokenSetParameterToCamp_id() {
        System.out.println(token);
        System.out.println(camp_id);
        campsAPI.setDeleteACamp(token,camp_id);
    }

    @When("Set method to DELETE, set path to camps, and click send button")
    public void setMethodToDELETESetPathToCampsAndClickSendButton() {
        SerenityRest.when().delete(CampsAPI.DETAIL_CAMP);
    }

    @Given("Base URL, set token to bearer token, set parameter to invalid camp_id")
    public void baseURLSetTokenToBearerTokenSetParameterToInvalidCamp_id() {
        campsAPI.setDeleteACamp(token,"dnewodi");
    }

    @Given("Base URL, set token to bearer token with invalid token, set parameter to camp_id")
    public void baseURLSetTokenToBearerTokenWithInvalidTokenSetParameterToCamp_id() {
        campsAPI.setDeleteACamp("bcewkfgoeqfbqowbdoqwdbqwo",camp_id);
    }

    @Given("Base URL, set token to bearer token, set parameter to empty camp_id")
    public void baseURLSetTokenToBearerTokenSetParameterToEmptyCamp_id() {
        campsAPI.setDeleteACamp(token,"");
    }
}
