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
    private static String token;
    private static int camp_id;

    @And("Set token to a method in add an image")
    public void setTokenToAMethodInAddAnImage() {
        token = SerenityRest.lastResponse().getBody().jsonPath().getString(CampyukResponse.TOKEN);
    }

    @And("Set camp_id to a method with {string} as jsonPath in add an image")
    public void setCamp_idToAMethodWithAsJsonPathInAddAnImage(String jsonPath) {
        camp_id = SerenityRest.lastResponse().getBody().jsonPath().getInt("data["+jsonPath+"].id");
    }

    @Given("Base URL is _ , set token to bearer token with camp_id and input json body add images")
    public void baseURLIs_SetTokenToBearerTokenWithCamp_idAndInputJsonBodyAddImages() {
        File image = new File(Constant.IMAGE + "/download.jpg");
        imagesAPI.setPostImages(token, camp_id, image);
    }

    @When("Set method to POST, Set path to images, and click send button")
    public void setMethodToPOSTSetPathToImagesAndClickSendButton() {
        SerenityRest.when().post(ImagesAPI.POST_IMAGES);
    }

    @Given("Base URL is _ , set token to bearer token with invalid token and with camp_id and input json body add images")
    public void baseURLIs_SetTokenToBearerTokenWithInvalidTokenAndWithCamp_idAndInputJsonBodyAddImages() {
        File image = new File(Constant.IMAGE + "/download.jpg");
        imagesAPI.setPostImages("ncedsbfeobcoajsosjalncefboecadslcnas", camp_id, image);
    }

    @Given("Base URL is _ , set token to bearer token with invalid camp_id and input json body add images")
    public void baseURLIs_SetTokenToBearerTokenWithInvalidCamp_idAndInputJsonBodyAddImages() {
        File image = new File(Constant.IMAGE + "/download.jpg");
        imagesAPI.setPostImages(token, "234", image);

    }

    @Given("Base URL is _ , set token to bearer token with empty camp_id and input json body add images")
    public void baseURLIs_SetTokenToBearerTokenWithEmptyCamp_idAndInputJsonBodyAddImages() {
        File image = new File(Constant.IMAGE + "/download.jpg");
        imagesAPI.setPostImages(token, "", image);
    }

    @Given("Base URL is _ , set token to bearer token with string camp_id and input json body add images")
    public void baseURLIs_SetTokenToBearerTokenWithStringCamp_idAndInputJsonBodyAddImages() {
        File image = new File(Constant.IMAGE + "/download.jpg");
        imagesAPI.setPostImages(token, "cbdbdado", image);
    }

    @Given("Base URL is _ , set token to bearer token with camp_id and input json body add images with empty image")
    public void baseURLIs_SetTokenToBearerTokenWithCamp_idAndInputJsonBodyAddImagesWithEmptyImage() {
        System.out.println(token);
        System.out.println(camp_id);
        imagesAPI.setPostImagesWEmptyImage(token, camp_id);
    }

    @Given("Base URL is _ , set token to bearer token with camp_id and input json body add images with invalid image")
    public void baseURLIs_SetTokenToBearerTokenWithCamp_idAndInputJsonBodyAddImagesWithInvalidImage() {
        File image = new File(Constant.DOC + "/Image.txt");
        imagesAPI.setPostImages(token,camp_id,image);
    }
}
