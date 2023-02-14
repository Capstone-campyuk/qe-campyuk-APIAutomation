package starter.campyuk;

import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import io.restassured.http.ContentType;

import starter.campyuk.Utils.Constant;

import java.io.File;

public class ItemsAPI {
    public static String DATA_ITEMS = Constant.BASE_URL + "/items";
    public static String DATA_ITEMS_WITH_ID = Constant.BASE_URL + "/items/{id}";
    public static String DATA_ITEMS_PATH_INVALID = Constant.BASE_URL + "/itemsaJHFDF";



    //method

    //DETELE ITEMS
    @Step ("Delete items valid path")
    public void deleteItemsValidPath(String token){
        SerenityRest.given().header("Authorization", "Bearer " + token)
                            .log().all();
    }

    @Step ("Delete items invalid path")
    public void deleteItemsInvalidPath(String token){
        SerenityRest.given().header("Authorization", "Bearer " + token);
    }

    @Step("Delete items valid id")
    public void deleteItemnsWithId(int id, String token){
        SerenityRest.given().pathParam("id", id)
                            .header("Authorization", "Bearer " + token);

    }

    @Step("Delete items invalid id")
    public void deleteItemsWithInvalidId(String id, String token){
        SerenityRest.given().pathParam("id", id)
                            .header("Authorization", "Bearer " + token);
    }



    //POST ITEMS
    @Step("Post items valid path")
    public void postItemsValidPath(String token, String jsonObject){
        SerenityRest.given().header("Authorization", "Bearer " + token)
                            .contentType(ContentType.JSON)
                            .body(jsonObject).log().all();
    }

    @Step("Post items invalid path")
    public void postItemsInvalidPath(String token, String jsonObject){
        SerenityRest.given().header("Authorization", "Bearer " + token)
                .contentType(ContentType.JSON)
                .body(jsonObject);
    }

}
