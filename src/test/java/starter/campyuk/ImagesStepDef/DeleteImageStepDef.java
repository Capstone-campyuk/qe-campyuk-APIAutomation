package starter.campyuk.ImagesStepDef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.ImagesAPI;

public class DeleteImageStepDef {
    @Steps
    ImagesAPI imagesAPI;

    @Given("Base URL is _ , set token to bearer token with parameter image_id {int}")
    public void baseURLIs_SetTokenToBearerTokenWithImage_id(int id) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        imagesAPI.setDeleteImages(id,token);
    }

    @When("Set method to DELETE, Set path to images, and click send button")
    public void setMethodToDELETESetPathToImagesAndClickSendButton() {
        SerenityRest.when().delete(ImagesAPI.DELETE_IMAGES);
    }

    @Given("Base URL is _ , set token to bearer token with parameter image_id {string}")
    public void baseURLIs_SetTokenToBearerTokenWithParameterImage_id(String id) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        imagesAPI.setDeleteImagesWStringImage_id(id,token);
    }

    @Given("Base URL is _ , set token to bearer token")
    public void baseURLIs_SetTokenToBearerTokenWith() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        imagesAPI.setDeleteImagesWOParameter(token);
    }

    @Given("Base URL is _ , set token to bearer token with invalid token and parameter image_id {int}")
    public void baseURLIs_SetTokenToBearerTokenWithInvalidTokenAndParameterImage_id(int id) {
        String token = "nfojebvsirhvuweht437rfhbdvh8rarhyt4ej";
        imagesAPI.setDeleteImages(id,token);
    }
}
