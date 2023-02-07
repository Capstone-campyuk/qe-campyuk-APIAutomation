package starter.campyuk.UserStepDef;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.ItemsAPI;
import starter.campyuk.UserAPI;

public class GeneralUserStepDef {
    @Steps
    ItemsAPI itemsAPI;



    @When("Send request Put Users")
    public void sendRequestPutUsers() {
        SerenityRest.when().put(UserAPI.DATA_USER_WITH_ID);
    }

    @When("Send request Delete Users")
    public void sendRequestDeleteUsers() {
        SerenityRest.when().delete(UserAPI.DATA_USER);
    }

    @Then("Should return status code {int}")
    public void shouldReturnStatusCode(int statusCode) {
        SerenityRest.then().statusCode(statusCode);
    }

    @When("Send request Get Users")
    public void sendRequestGetUsers() {
        SerenityRest.when().get(UserAPI.DATA_USER);
    }

    @When("Send request Get Users with id")
    public void sendRequestGetUsersWithId() {
        SerenityRest.when().get(UserAPI.DATA_USER_WITH_ID);
    }

    @When("Send request Delete Users with id")
    public void sendRequestDeleteUsersWithId() {
        SerenityRest.when().delete(UserAPI.DATA_USER_WITH_ID);
    }

    @When("Send request Delete Users with invalid path")
    public void sendRequestDeleteUsersWithInvalidPath() {
        SerenityRest.when().delete(UserAPI.PATH_INVALID);
    }


}
