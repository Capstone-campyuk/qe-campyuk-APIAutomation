package starter.campyuk;

import io.restassured.http.ContentType;
import net.serenitybdd.rest.SerenityRest;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class ItemsAPI {
    public static String POST_ITEM = Constant.BASE_URL + "/items";
    public static String DELETE_ITEM = Constant.BASE_URL + "/items/{id}";
}
