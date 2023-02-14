package starter.campyuk.UserStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.restassured.module.jsv.JsonSchemaValidator;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.UserAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class PutUserStepDef {
    @Steps
    UserAPI userAPI;


    //scenario 1
    @Given("Put user with blank name and valid token")
    public void putUserWithBlankNameAndValidToken() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putValidPathWithBlankNameAsGuest(token, image);
    }

    //scenario 2
    @Given("Put user with blank fullname and valid token")
    public void putUserWithBlankFullnameAsGuest() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putValidPathWithBlankFullNameAsGuest(token, image);
    }

    //scenario 3
    @Given("Put user with blank password and valid token")
    public void putUserWithBlankPasswordAsGuest() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putValidPathWithBlankPasswordAsGuest(token, image);
    }


    //scenario 4
    @Given("Put user with valid path and valid token")
    public void putUserWithValidIdAsGuest() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putValidPathAsGuest(token, image);
    }


    //scenario 5
    @Given("Put user with invalid path and valid token")
    public void putUserWithInvalidAsGuest() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putInvalidPathAsGuest(token, image);
    }


    //scenario 6
    @Given("Put user with blank email and valid token")
    public void putUserWithBlankEmailWithIdAsGuest() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putValidPathWithBlankEmailAsGuest(token, image);
    }


    //scenario 7
    @Given("Put user with blank photo and valid token")
    public void putUserWithBlankPhotoAndValidTokenAsGuest() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        userAPI.putValidPathWithBlankImageAsGuest(token);
    }


//---------------------------------


    //scenario 8
    @Given("Put HOST with valid path and valid token")
    public void putUserWithValidIdAsHost() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putValidPathAsHost(token, image);
    }


    //scenario 9
    @Given("Put HOST with invalid path and valid token")
    public void putUserWithInvalidAsHost() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putInvalidPathAsHost(token, image);
    }


    //scenario 10
    @Given("Put HOST with blank name and valid token")
    public void putUserWithBlankNameAndValidTokenAsHost() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putValidPathWithBlankNameAsHost(token, image);
    }

    //scenario 11
    @Given("Put HOST with blank fullname and valid token")
    public void putUserWithBlankFullnameAsHost() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putValidPathWithBlankFullNameAsHost(token, image);
    }

    //scenario 12
    @Given("Put HOST with blank password and valid token")
    public void putUserWithBlankPasswordAsHost() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putValidPathWithBlankPasswordAsHost(token, image);
    }


    //scenario 13
    @Given("Put HOST with blank email and valid token")
    public void putUserWithBlankEmailWithId() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File image = new File(Constant.PHOTO + "/PasPhoto.jpg");
        userAPI.putValidPathWithBlankEmailAsHost(token, image);
    }


    //scenario 14
    @Given("Put HOST with blank photo and valid token")
    public void putUserWithBlankPhotoAndValidTokenAsHost() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        userAPI.putValidPathWithBlankImageAsHost(token);
    }

}
