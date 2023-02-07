package starter.campyuk.UserStepDef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.UserAPI;

public class GetUserStepDef {
    @Steps
    UserAPI userAPI;


    //scenario 1
    @Given("Get user with valid path")
    public void getUserWithValidPath() {
        userAPI.getValidPath();
    }


    //scenario 2
    @Given("Get user with invalid path")
    public void getUserWithInvalidPath() {
        userAPI.getUserWithInvalidPath();
    }

    @When("Send request Get Users invalid path")
    public void sendRequestGetUsersInvalidPath() {
        SerenityRest.when().get(UserAPI.PATH_INVALID);
    }


    //scenario 3
    @Given("Get user with valid {int}")
    public void getUserWithValidId(int id) {
        userAPI.getWithid(id);
    }


    //scenario 4
    @Given("Get user with invalid {string}")
    public void getUserWithInvalidId(String id) {
        userAPI.getWithInvalidid(id);
    }

}


