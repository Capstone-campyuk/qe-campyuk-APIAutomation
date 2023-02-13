package starter.campyuk.CampsStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.CampsAPI;
import starter.campyuk.Utils.CampyukResponse;

public class AcceptCampReqStepDef {
    @Steps
    CampsAPI campsAPI;
    private static String token;
    private static int camp_id;

    @And("Set token to a method in accept camp")
    public void setTokenToAMethodInAcceptCamp() {
        token = SerenityRest.lastResponse().getBody().jsonPath().getString(CampyukResponse.TOKEN);
    }

    @And("Set camp_id to a method with {string} as jsonPath in accept camp")
    public void setCamp_idToAMethodWithAsJsonPathInAcceptCamp(String jsonPath) {
        camp_id = SerenityRest.lastResponse().getBody().jsonPath().getInt("data["+jsonPath+"].id");
    }

    @Given("Base URL, set token to bearer token, set parameter to camp_id accept")
    public void baseURLSetTokenToBearerTokenSetParameterToCamp_idAccept() {
        campsAPI.setAcceptCamp(token,camp_id);
    }

    @When("Set method to PUT, set path to camps, and click send button")
    public void setMethodToPUTSetPathToCampsAndClickSendButton() {
        SerenityRest.when().put(CampsAPI.ACCEPT_CAMP);
    }

    @Given("Base URL, set token to bearer token, set parameter to invalid camp_id accept")
    public void baseURLSetTokenToBearerTokenSetParameterToInvalidCamp_idAccept() {
        campsAPI.setAcceptCamp(token,"bciwbc9we");
    }

    @Given("Base URL, set token to bearer token with invalid token, set parameter to camp_id accept")
    public void baseURLSetTokenToBearerTokenWithInvalidTokenSetParameterToCamp_idAccept() {
        campsAPI.setAcceptCamp("bcsbfoewfboeqcboacbeowfbeojsacs",camp_id);
    }

    @Given("Base URL, set token to bearer token, set parameter to empty camp_id accept")
    public void baseURLSetTokenToBearerTokenSetParameterToEmptyCamp_idAccept() {
        campsAPI.setAcceptCamp(token,"");
    }
}
