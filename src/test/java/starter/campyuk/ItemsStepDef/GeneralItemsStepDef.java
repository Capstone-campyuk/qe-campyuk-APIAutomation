package starter.campyuk.ItemsStepDef;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.module.jsv.JsonSchemaValidator;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.ItemsAPI;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class GeneralItemsStepDef {
    @Steps
    ItemsAPI itemsAPI;



    //Post
    @When("Send request Post Items")
    public void sendRequestPostItems() {
        SerenityRest.when().post(ItemsAPI.DATA_ITEMS);
    }

    @When("Send request Post Items with invalid path")
    public void sendRequestPostItemsWithInvalidPath() {
        SerenityRest.when().post(ItemsAPI.DATA_ITEMS_PATH_INVALID);
    }



    //delete
    @When("Send request Delete items valid id")
    public void sendRequestDeleteItemsValidId() {
        SerenityRest.when().delete(ItemsAPI.DATA_ITEMS_WITH_ID);
    }

    @When("Send request Delete items with invalid id")
    public void sendRequestDeleteItemsWithInvalidId() {
        SerenityRest.when().delete(ItemsAPI.DATA_ITEMS_WITH_ID);
    }

    @When("Send request Delete Items with invalid path")
    public void sendRequestDeleteItemsWithInvalidPath() {
        SerenityRest.when().delete(ItemsAPI.DATA_ITEMS_PATH_INVALID);
    }

    @When("Send request Delete Items with valid path")
    public void sendRequestDeleteItemsWithValidPath() {
        SerenityRest.when().delete(ItemsAPI.DATA_ITEMS);
    }


}

