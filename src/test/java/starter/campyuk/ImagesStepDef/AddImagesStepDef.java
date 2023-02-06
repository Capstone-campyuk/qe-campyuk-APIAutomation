package starter.campyuk.ImagesStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;
import io.restassured.specification.PreemptiveAuthSpec;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.ImagesAPI;
import starter.campyuk.Utils.CampyukResponse;
import starter.campyuk.Utils.Constant;

import java.io.File;

import static org.hamcrest.Matchers.equalTo;

public class AddImagesStepDef {

    @Steps
    ImagesAPI imagesAPI;

    @Given("Base URL is _ , set token to bearer token with camp_id {int} and input json body add images")
    public void baseURLIs_SetTokenToBearerTokenWithCamp_idAndInputJsonBodyAddImages(int id) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        System.out.println(token);
        File image = new File(Constant.IMAGE + "/download (1).jpg");
        imagesAPI.setPostImages(token, id, image);
    }

    @When("Set method to POST, Set path to images, and click send button")
    public void setMethodToPOSTSetPathToImagesAndClickSendButton() {
        SerenityRest.when().post(ImagesAPI.POST_IMAGES);
    }

}
