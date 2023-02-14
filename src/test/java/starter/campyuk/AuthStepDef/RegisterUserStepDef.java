package starter.campyuk.AuthStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.minidev.json.JSONObject;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.AuthAPI;
import starter.campyuk.Utils.CampyukResponse;
import starter.campyuk.Utils.Constant;

import java.io.File;

import static org.hamcrest.Matchers.equalTo;

public class RegisterUserStepDef {
    @Steps
    AuthAPI authAPI;

    @Given("Base URL is _ and input json body")
    public void baseURLIs_AndInputJsonBody() {
        File json = new File(Constant.JSON_REQUEST + "/Auth/Register/RegisterUser.json");
        authAPI.setPostRegister(json);
    }

    @When("Set method to POST, set path to register, and click send button")
    public void setMethodToPOSTSetPathToRegisterAndClickSendButton() {
        SerenityRest.when().post(AuthAPI.POST_REGISTER);
    }

    @Then("API should return response {int}")
    public void apiShouldReturnResponseOK(int code) {
        SerenityRest.then().statusCode(code);
    }

    @And("API should return body message {string}")
    public void apiShouldReturnBodyMessage(String message) {
        SerenityRest.then().body(CampyukResponse.MESSAGE,equalTo(message));
    }


    @When("Set method to POST, set path to registerBADFHABD, and click send button")
    public void setMethodToPOSTSetPathToRegisterBADFHABDAndClickSendButton() {
        SerenityRest.when().post(AuthAPI.POST_REGISTER+"BADFHABD");
    }

    @Given("Base URL is _ and input json body with empty username")
    public void baseURLIs_AndInputJsonBodyWithEmptyUsername() {
        File json = new File(Constant.JSON_REQUEST+"/Auth/Register/RegisterWEUsername.json");
        authAPI.setPostRegister(json);
    }

    @Given("Base URL is _ and input json body with empty fullname")
    public void baseURLIs_AndInputJsonBodyWithEmptyFullname() {
        File json = new File(Constant.JSON_REQUEST+"/Auth/Register/RegisterWEFullname.json");
        authAPI.setPostRegister(json);
    }

    @Given("Base URL is _ and input json body with email")
    public void baseURLIs_AndInputJsonBodyWithEmail() {
        File json = new File(Constant.JSON_REQUEST+"/Auth/Register/RegisterWEEmail.json");
        authAPI.setPostRegister(json);
    }

    @Given("Base URL is _ and input json body with empty password")
    public void baseURLIs_AndInputJsonBodyWithEmptyPassword() {
        File json = new File(Constant.JSON_REQUEST+"/Auth/Register/RegisterWEPassword.json");
        authAPI.setPostRegister(json);
    }

    @Given("Base URL is _ and input json body with empty role")
    public void baseURLIs_AndInputJsonBodyWithEmptyRole() {
        File json = new File(Constant.JSON_REQUEST+"/Auth/Register/RegisterWERole.json");
        authAPI.setPostRegister(json);
    }

    @Given("Base URL is _ and input json body for put user")
    public void baseURLIs_AndInputJsonBodyForPutUser() {
        File json = new File(Constant.JSON_REQUEST+"/Auth/Register/RegisterPutUser.json");
        authAPI.setPostRegister(json);
    }

    @Given("Base URL is _ and input json body for delete user")
    public void baseURLIs_AndInputJsonBodyForDeleteUser() {
        File json = new File(Constant.JSON_REQUEST+"/Auth/Register/RegisterDeleteUser.json");
        authAPI.setPostRegister(json);
    }

    @Given("Base URL is _ and input json body for delete host")
    public void baseURLIs_AndInputJsonBodyForDeleteHost() {
        File json = new File(Constant.JSON_REQUEST+"/Auth/Register/RegisterDeleteHost.json");
        authAPI.setPostRegister(json);
    }

    @Given("Base URL is _ and input json body {string} as username, {string} as fullName, {string} as email, {string} as password, and {string} as role")
    public void baseURLIs_AndInputJsonBodyAsUsernameAsFullNameAsEmailAsPasswordAndAsRole(String username, String fullName, String email, String password, String role) {
        JSONObject bodyJson = new JSONObject();
        bodyJson.put("username", username);
        bodyJson.put("fullname", fullName);
        bodyJson.put("email", email);
        bodyJson.put("password", password);
        bodyJson.put("role", role);
        authAPI.setPostRegisterWJsonObject(bodyJson.toJSONString());
    }
}
