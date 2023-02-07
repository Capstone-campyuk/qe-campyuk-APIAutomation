package starter.campyuk.ItemsStepDef;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import net.thucydides.core.annotations.Steps;
import starter.campyuk.ItemsAPI;

public class PostItemsStepDef {
    @Steps
    ItemsAPI itemsAPI;



//   @Given("Post items with valid <id>")
//    public void postItemsWithValidId() {
//        itemsAPI.postItemsWithId(id);
//    }

    @When("Send request Post Items")
    public void sendRequestPostItems() {
    }

    @Given("Post items with invalid {string}")
    public void postItemsWithInvalid(String arg0) {
    }

    @When("Send request Post Items with invalid id")
    public void sendRequestPostItemsWithInvalidId() {
    }
}
