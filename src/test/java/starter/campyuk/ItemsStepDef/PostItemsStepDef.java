package starter.campyuk.ItemsStepDef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.ItemsAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class PostItemsStepDef {
    @Steps
    ItemsAPI itemsAPI;



//   @Given("Post items with valid <id>")
//    public void postItemsWithValidId() {
//        itemsAPI.postItemsWithId(id);
//    }


    //scenario 1
    @Given("Post items with valid path and body")
    public void postItemsWithValidPathAndBody() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        File json = new File(Constant.JSON_REQUEST + "/Items/RequestItems.json");
        itemsAPI.postItemsValidPath(token, json);
    }


    //scenario 2
    @Given("Post items with invalid path and body")
    public void postItemsWithInvalidPathAndBody() {
    }


    //scenario 3
    @Given("Post items with valid empty size in body")
    public void postItemsWithValidEmptySizeInBody() {
    }


    //scenario 4
    @Given("Post items with valid empty stock in body")
    public void postItemsWithValidEmptyStockInBody() {
    }


    //scenario 5
    @Given("Post items with valid empty price in body")
    public void postItemsWithValidEmptyPriceInBody() {
    }
}
