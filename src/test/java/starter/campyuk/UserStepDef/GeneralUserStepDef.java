package starter.campyuk.UserStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.module.jsv.JsonSchemaValidator;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.ItemsAPI;
import starter.campyuk.UserAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class GeneralUserStepDef {
    @Steps
    UserAPI userAPI;


    @Then("Should return status code {int}")
    public void shouldReturnStatusCode(int statusCode) {
        SerenityRest.then().statusCode(statusCode);
    }


//    @And("API should return the right JSON Schema Put Users")
//  public void apiShouldReturnTheRightJSONSchemaPutUsers() {
//        File jsonSchema = new File(Constant.JSON_SCHEMA + "/UserSchema/PutUsers.json");
//        SerenityRest.then().assertThat().body(JsonSchemaValidator.matchesJsonSchema(jsonSchema));
//    }

    @And("API should return the right JSON Schema Users")
    public void apiShouldReturnTheRightJSONSchemaUsers() {
        File jsonSchema = new File(Constant.JSON_SCHEMA + "/UserSchema/UsersSchemaUsers.json");
        SerenityRest.then().assertThat().body(JsonSchemaValidator.matchesJsonSchema(jsonSchema));
    }




    //----------------------------------------------//

    //PUT
    @When("Send request Put Users")
    public void sendRequestPutUsers() {
        SerenityRest.when().put(UserAPI.DATA_USER);
    }

    @When("Send request Put Users invalid path")
    public void sendRequestPutUsersInvalidPath() {
        SerenityRest.when().put(UserAPI.PATH_INVALID);
    }

    //GET
    @When("Send request Get Users")
    public void sendRequestGetUsers() {
        SerenityRest.when().get(UserAPI.DATA_USER);
    }

    @When("Send request Get Users with id")
    public void sendRequestGetUsersWithId() {
        SerenityRest.when().get(UserAPI.DATA_USER);
    }



    //DELETE
    @When("Send request Delete Users with invalid path")
    public void sendRequestDeleteUsersWithInvalidPath() {
        SerenityRest.when().delete(UserAPI.PATH_INVALID);
    }

    @When("Send request Delete Users")
    public void sendRequestDeleteUsers() {
        SerenityRest.when().delete(UserAPI.DATA_USER);
    }

}
