package starter.campyuk.UserStepDef;

import io.cucumber.java.en.Given;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.UserAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class PutUserStepDef {
    @Steps
    UserAPI userAPI;


    //scenario 1
    @Given("Put user with blank name with {int}")
    public void putUserWithBlankName(int id) {
        File json = new File(Constant.JSON_REQUEST + "/RequestUsersBlankName.json");
        userAPI.putWithid(id, json);
    }

    //scenario 2
    @Given("Put user with blank fullname with {int}")
    public void putUserWithBlankFullname(int id) {
        File json = new File(Constant.JSON_REQUEST + "/RequestUsersBlankFullName.json");
        userAPI.putWithid(id, json);
    }

    //scenario 3
    @Given("Put user with blank password with {int}")
    public void putUserWithBlankPassword(int id) {
        File json = new File(Constant.JSON_REQUEST + "/RequestUsersBlankPassword.json");
        userAPI.putWithid(id, json);
    }


    //scenario 4
    @Given("Put user with valid {int}")
    public void putUserWithValidId(int id) {
        File json = new File(Constant.JSON_REQUEST + "/RequestUsers.json");
        userAPI.putWithid(id, json);
    }


    //scenario 5
    @Given("Put user with invalid {string}")
    public void putUserWithInvalid(String id) {
        File json = new File(Constant.JSON_REQUEST + "/RequestUsers.json");
        userAPI.putWithInvalidid(id, json);
    }


    //scenario 6
    @Given("Put user with blank email with {int}")
    public void putUserWithBlankEmailWithId(int id) {
        File json = new File(Constant.JSON_REQUEST + "/RequestUsersBlankPassword.json");
        userAPI.putWithid(id, json);

    }
}
