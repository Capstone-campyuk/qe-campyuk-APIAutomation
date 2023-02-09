package starter.campyuk.AuthStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.module.jsv.JsonSchemaValidator;
import io.restassured.path.json.JsonPath;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.AuthAPI;
import starter.campyuk.Utils.CampyukResponse;
import starter.campyuk.Utils.Constant;

import java.io.File;

import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.notNullValue;

public class LogInStepDef {
    @Steps
    AuthAPI authAPI;

    @Given("Base URL is _ and input json body log in guest")
    public void baseURLIs_AndInputJsonBodyLogInUser() {
        File json = new File(Constant.JSON_REQUEST + "/Auth/LogIn/LogInGuest1.json");
        authAPI.setPostLogin(json);
    }

    @Given("Base URL is _ and input json body log in host")
    public void baseURLIs_AndInputJsonBodyLogInHost() {
        File json = new File(Constant.JSON_REQUEST + "/Auth/LogIn/LogInHost1.json");
        authAPI.setPostLogin(json);
    }

    @When("Set method to POST, Set path to login, and click send button")
    public void setMethodToPOSTSetPathToLoginAndClickSendButton() {
        SerenityRest.when().post(AuthAPI.POST_LOGIN);
    }

    @And("API should return body email {string}")
    public void apiShouldReturnBodyEmail(String email) {
        SerenityRest.then().body(CampyukResponse.EMAIL,equalTo(email));
    }

    @And("API should return body token is not null")
    public void apiShouldReturnBodyTokenNotNull() {
        SerenityRest.then().body(CampyukResponse.TOKEN,notNullValue());
    }

    @And("API should return the right JSON Schema log in user")
    public void apiShouldReturnTheRightJSONSchemaLogInUser() {
        File jsonSchema = new File(Constant.JSON_SCHEMA + "/AuthSchema/LogInSchema.json");
        SerenityRest.then().assertThat().body(JsonSchemaValidator.matchesJsonSchema(jsonSchema));
    }

    @Given("Base URL is _ and input json body log in user with empty username")
    public void baseURLIs_AndInputJsonBodyLogInUserWithEmptyUsername() {
        File json = new File(Constant.JSON_REQUEST + "/auth/LogIn/LogInWEUsername.json");
        authAPI.setPostLogin(json);
    }

    @Given("Base URL is _ and input json body log in user with empty password")
    public void baseURLIs_AndInputJsonBodyLogInUserWithEmptyPassword() {
        File json = new File(Constant.JSON_REQUEST + "/auth/LogIn/LogInWEPassword.json");
        authAPI.setPostLogin(json);
    }

    @When("Set method to POST, Set path to loginbkjgkhGY, and click send button")
    public void setMethodToPOSTSetPathToLoginbkjgkhGYAndClickSendButton() {
        SerenityRest.when().post(AuthAPI.POST_LOGIN + "bkjgkhGY");
    }

    @Given("Base URL is _ and input json body log in put guest")
    public void baseURLIs_AndInputJsonBodyLogInPutGuest() {
        File json = new File(Constant.JSON_REQUEST + "/auth/LogIn/LogInPutUser.json");
        authAPI.setPostLogin(json);
    }

    @Given("Base URL is _ and input json body log in delete guest")
    public void baseURLIs_AndInputJsonBodyLogInDeleteGuest() {
        File json = new File(Constant.JSON_REQUEST + "/auth/LogIn/LogInDeleteUser.json");
        authAPI.setPostLogin(json);
    }

    @Given("Base URL is _ and input json body log in put host")
    public void baseURLIs_AndInputJsonBodyLogInPutHost() {
        File json = new File(Constant.JSON_REQUEST + "/auth/LogIn/LogInPutHost.json");
        authAPI.setPostLogin(json);
    }

    @Given("Base URL is _ and input json body log in delete host")
    public void baseURLIs_AndInputJsonBodyLogInDeleteHost() {
        File json = new File(Constant.JSON_REQUEST + "/auth/LogIn/LogInDeleteHost.json");
        authAPI.setPostLogin(json);
    }
}
