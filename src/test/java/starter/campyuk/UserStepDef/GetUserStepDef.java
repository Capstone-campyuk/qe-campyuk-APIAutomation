package starter.campyuk.UserStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.module.jsv.JsonSchemaValidator;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.UserAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class GetUserStepDef {
    @Steps
    UserAPI userAPI;


    //scenario 1
    @Given("Get user with valid path and valid token")
    public void getUserWithValidPath() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        userAPI.getValidPath(token);
    }

    //scenario 2
    @Given("Get user with invalid path and valid token")
    public void getUserWithInvalidPath() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        userAPI.getUserWithInvalidPath(token);
    }

    @When("Send request Get Users invalid path")
    public void sendRequestGetUsersInvalidPath() {
        SerenityRest.when().get(UserAPI.PATH_INVALID);
    }


}


