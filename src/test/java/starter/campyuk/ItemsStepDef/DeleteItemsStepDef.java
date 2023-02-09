package starter.campyuk.ItemsStepDef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.ItemsAPI;


public class DeleteItemsStepDef {

    @Steps
    ItemsAPI itemsAPI;




    //scenario 1
    @Given("Delete items with Valid path, valid {int} and valid token")
    public void deleteItemsWithValidPathValidIdValidtoken(int id) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        itemsAPI.deleteItemnsWithId(id, token);
    }


    //scenario 2
    @Given("Delete items with Valid path, invalid {string} and valid token")
    public void deleteItemsWithValidPathInvalidIdValidtoken(String id) {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        itemsAPI.deleteItemsWithInvalidId(id, token);
    }


    //scenario 3
    @Given("Delete items with valid path")
    public void deleteItemsWithValidPath() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        itemsAPI.deleteItemsValidPath(token);
    }


    //scenario 4
    @Given("Delete items with invalid path")
    public void deleteItemsWithInvalidPath() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        itemsAPI.deleteItemsInvalidPath(token);
    }

}
