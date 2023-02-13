package starter.campyuk.ImagesStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.eo.Se;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.ImagesAPI;
import starter.campyuk.Utils.CampyukResponse;

public class DeleteImageStepDef {
    @Steps
    ImagesAPI imagesAPI;
    private static String token;
    private static int image_id;

    @And("Set token to a method in delete an image")
    public void setTokenToAMethodInDeleteAnImage() {
        token = SerenityRest.lastResponse().getBody().jsonPath().getString(CampyukResponse.TOKEN);
    }

    @And("Set image id to a method with {string} as jsonPath in delete an image")
    public void setImageIdToAMethodInDeleteAnImage(String jsonPath) {
        image_id = SerenityRest.lastResponse().getBody().jsonPath().getInt("data.images["+jsonPath+"].image_id");
    }

    @Given("Base URL is _ , set token to bearer token with parameter image_id")
    public void baseURLIs_SetTokenToBearerTokenWithImage_id() {
        imagesAPI.setDeleteImages(token, image_id);
    }

    @When("Set method to DELETE, Set path to images, and click send button")
    public void setMethodToDELETESetPathToImagesAndClickSendButton() {
        SerenityRest.when().delete(ImagesAPI.DELETE_IMAGES);
    }

    @Given("Base URL is _ , set token to bearer token with parameter invalid image_id")
    public void baseURLIs_SetTokenToBearerTokenWithParameterImage_id() {
        imagesAPI.setDeleteImages(token, 710);
    }

    @Given("Base URL is _ , set token to bearer token with parameter empty image_id")
    public void baseURLIs_SetTokenToBearerTokenWithParameterEmptyImage_id() {
        imagesAPI.setDeleteImages(token, "");
    }

    @Given("Base URL is _ , set token to bearer token with invalid token and parameter image_id")
    public void baseURLIs_SetTokenToBearerTokenWithInvalidTokenAndParameterImage_id() {
        imagesAPI.setDeleteImages("cedbfiegfyiewfvehcvdshfeiwvfeqisdcb", image_id);
    }


    @Given("Base URL is _ , set token to bearer token with parameter string image_id")
    public void baseURLIs_SetTokenToBearerTokenWithParameterStringImage_id() {
        imagesAPI.setDeleteImages(token, "njdodq");
    }
}
