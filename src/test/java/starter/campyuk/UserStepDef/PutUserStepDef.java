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
        File json = new File(Constant.JSON_REQUEST + "/User/RequestUsersBlankName.json");
        userAPI.putValidPath(token, json);
    }

    //scenario 2
    @Given("Put user with blank fullname and valid token")
    public void putUserWithBlankFullname() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File json = new File(Constant.JSON_REQUEST + "/User/RequestUsersBlankFullName.json");
        userAPI.putValidPath(token, json);
    }

    //scenario 3
    @Given("Put user with blank password and valid token")
    public void putUserWithBlankPassword() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File json = new File(Constant.JSON_REQUEST + "/User/RequestUsersBlankPassword.json");
        userAPI.putValidPath(token, json);
    }


    //scenario 4
    @Given("Put user with valid path and valid token")
    public void putUserWithValidId() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        System.out.println(token);
        File json = new File(Constant.JSON_REQUEST + "/User/RequestUsers.json");
        userAPI.putValidPath(token, json);
    }


    //scenario 5
    @Given("Put user with invalid path and valid token")
    public void putUserWithInvalid() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File json = new File(Constant.JSON_REQUEST + "/User/RequestUsers.json");
        userAPI.putInvalidPath(token, json);
    }


    //scenario 6
    @Given("Put user with blank email and valid token")
    public void putUserWithBlankEmailWithId() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File json = new File(Constant.JSON_REQUEST + "/User/RequestUsersBlankPassword.json");
        userAPI.putValidPath(token, json);

    }
}
