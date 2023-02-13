package starter.campyuk.CampsStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.CampsAPI;
import starter.campyuk.Utils.CampyukResponse;

public class DeclineCampReqStepDef {
    @Steps
    CampsAPI campsAPI;
    private static String token;
    private static int camp_id;

    @And("Set token to a method in decline camp")
    public void setTokenToAMethodInDeclineCamp() {
        token = SerenityRest.lastResponse().getBody().jsonPath().getString(CampyukResponse.TOKEN);
    }

    @And("Set camp_id to a method with {string} as jsonPath in decline camp")
    public void setCamp_idToAMethodWithAsJsonPathInDeclineCamp(String jsonPath) {
        camp_id = SerenityRest.lastResponse().getBody().jsonPath().getInt("data["+jsonPath+"].id");
    }

    @Given("Base URL, set token to bearer token, set parameter to camp_id decline")
    public void baseURLSetTokenToBearerTokenSetParameterToCamp_idDecline() {
        campsAPI.setDeclineCamp(token,camp_id);
    }

    @When("Set method to PUT, set path to camps decline, and click send button")
    public void setMethodToPUTSetPathToCampsDeclineAndClickSendButton() {
        SerenityRest.when().put(CampsAPI.DECLINE_CAMP);
    }

    @Given("Base URL, set token to bearer token, set parameter to invalid camp_id decline")
    public void baseURLSetTokenToBearerTokenSetParameterToInvalidCamp_idDecline() {
        campsAPI.setDeclineCamp(token,"bcwbcbw");
    }

    @Given("Base URL, set token to bearer token with invalid token, set parameter to camp_id decline")
    public void baseURLSetTokenToBearerTokenWithInvalidTokenSetParameterToCamp_idDecline() {
        campsAPI.setDeclineCamp("cnoeowfhewodhslnodasdh0qwhdqwonaso",camp_id);
    }

    @Given("Base URL, set token to bearer token, set parameter to empty camp_id decline")
    public void baseURLSetTokenToBearerTokenSetParameterToEmptyCamp_idDecline() {
        campsAPI.setDeclineCamp(token,"");
    }
}
