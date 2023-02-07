package starter.campyuk.UserStepDef;

import io.cucumber.java.en.Given;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.UserAPI;

public class DeleteUserStepDef {
    @Steps
    UserAPI userAPI;


    //scenario 1
    // wait base url
    @Given("Delete user with valid path and valid token")
    public void deleteUserWithValidPath() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        userAPI.deleteValidPath(token);
    }


    //scenario 2
    @Given("Delete user with invalid path")
    public void deleteUserWithInvalidPath() {
        userAPI.deleteInvalidPath();
    }


    //scenario 3
    @Given("Delete user with valid {int}")
    public void deleteUserWithValidId(int id) {
        userAPI.deleteWithId(id);
    }

    //scenario 4
    @Given("Delete user with invalid {string}")
    public void deleteUserWithInvalid(String id) {
        userAPI.deleteWithInvalidId(id);
    }
}
