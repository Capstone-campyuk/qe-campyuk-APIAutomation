package starter.campyuk.ItemsStepDef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import org.json.simple.JSONObject;
import starter.campyuk.ItemsAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class PostItemsStepDef {
    @Steps
    ItemsAPI itemsAPI;



    //scenario 1
    @Given("Post items with valid path and body")
    public void postItemsWithValidPathAndBody() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        System.out.println(token);
        int idDynamic = 111;
        JSONObject setCampID = new JSONObject();
        setCampID.put("camp_id", idDynamic);
        setCampID.put("name", "Tent small");
        setCampID.put("stock", 10);
        setCampID.put("price", 5000);
        itemsAPI.postItemsValidPath(token, setCampID.toJSONString());
    }

    //scenario 2
    @Given("Post items with invalid path and body")
    public void postItemsWithInvalidPathAndBody() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        System.out.println(token);
        int idDynamic = 94;
        JSONObject setCampID = new JSONObject();
        setCampID.put("camp_id", idDynamic);
        setCampID.put("name", "Tent small");
        setCampID.put("stock", 10);
        setCampID.put("price", 5000);
        itemsAPI.postItemsInvalidPath(token, setCampID.toJSONString());
    }

    //scenario 3
    @Given("Post items with valid empty name in body")
    public void postItemsWithValidEmptyNameInBody() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        System.out.println(token);
        int idDynamic = 0;
        JSONObject setCampID = new JSONObject();
        setCampID.put("camp_id", idDynamic);
        setCampID.put("name", "");
        setCampID.put("stock", 10);
        setCampID.put("price", 5000);
        itemsAPI.postItemsValidPath(token, setCampID.toJSONString());
    }


    //scenario 4
    @Given("Post items with valid empty stock in body")
    public void postItemsWithValidEmptyStockInBody() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        System.out.println(token);
        int idDynamic = 0;
        JSONObject setCampID = new JSONObject();
        setCampID.put("camp_id", idDynamic);
        setCampID.put("name", "Tent small");
        setCampID.put("stock", "");
        setCampID.put("price", 5000);
        itemsAPI.postItemsValidPath(token, setCampID.toJSONString());
    }


    //scenario 5
    @Given("Post items with valid empty price in body")
    public void postItemsWithValidEmptyPriceInBody() {
        Response response = SerenityRest.lastResponse();
        String token = response.getBody().jsonPath().getString("token");
        System.out.println(token);
        int idDynamic = 0;
        JSONObject setCampID = new JSONObject();
        setCampID.put("camp_id", idDynamic);
        setCampID.put("name", "Tent small");
        setCampID.put("stock", 10);
        setCampID.put("price", "");
        itemsAPI.postItemsValidPath(token, setCampID.toJSONString());
    }
}
