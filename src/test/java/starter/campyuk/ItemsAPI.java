package starter.campyuk;

import net.serenitybdd.core.Serenity;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import io.restassured.http.ContentType;

import starter.campyuk.Utils.Constant;

import java.io.File;

public class ItemsAPI {
    public static String DATA_ITEMS = Constant.BASE_URL + "https://virtserver.swaggerhub.com/GRIFFINHENRY07_1/campyuk/1.0.0/users";
    public static String DATA_ITEMS_WITH_ID = Constant.BASE_URL + "https://virtserver.swaggerhub.com/GRIFFINHENRY07_1/campyuk/1.0.0/users?id={id}";
    public static String DATA_ITEMS_PATH_INVALID = Constant.BASE_URL + "https://virtserver.swaggerhub.com/GRIFFINHENRY07_1/campyuk/1.0.0/usersaJHFDF";



    //method

    //DETELE ITEMS
    @Step("Delete items valid path")
    public void deleteItemsValidPath(){
        SerenityRest.given();
    }

    @Step ("Delete items invalid path")
    public void deleteItemsInvalidPath(){
        SerenityRest.given();
    }

    @Step("Delete items valid id")
    public void deleteItemnsWithId(int id){
        SerenityRest.given().pathParam("id", id);
    }

    @Step("Delete items invalid id")
    public void deleteItemsWithInvalidId(String id){
        SerenityRest.given().pathParam("id", id);
    }


    //POST ITEMS

    @Step ("Post items valid id")
    public void postItemsValidId(int id){
        SerenityRest.given().pathParam("id", id);
    }

    @Step ("Post items invalid id")
    public void postItemsInvalidId(String id){
        SerenityRest.given().pathParam("id", id);
    }


}
