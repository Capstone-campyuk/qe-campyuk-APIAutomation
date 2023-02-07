package starter.campyuk.ItemsStepDef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.ItemsAPI;


public class DeleteItemsStepDef {

    @Steps
    ItemsAPI itemsAPI;




    //scenario 1
    @Given("Delete items with valid {int}")
    public void deleteItemsWithValidId(int id) {
        itemsAPI.deleteItemnsWithId(id);
    }


    //scenario 2
    @Given("Delete items with invalid {string}")
    public void deleteItemsWithInvalidId(String id) {
        itemsAPI.deleteItemsWithInvalidId(id);
    }


    //scenario 3
    @Given("Delete items with valid path")
    public void deleteItemsWithValidPath() {
        itemsAPI.deleteItemsValidPath();
    }


    //scenario 4
    @Given("Delete items with invalid path")
    public void deleteItemsWithInvalidPath() {
        itemsAPI.deleteItemsInvalidPath();
    }

}
