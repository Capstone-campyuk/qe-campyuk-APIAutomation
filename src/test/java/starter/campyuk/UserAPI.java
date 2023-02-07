package starter.campyuk;

import io.restassured.http.ContentType;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class UserAPI {

    public static String DATA_USER = Constant.BASE_URL + "https://virtserver.swaggerhub.com/GRIFFINHENRY07_1/campyuk/1.0.0/users";
    public static String DATA_USER_WITH_ID = Constant.BASE_URL + "https://virtserver.swaggerhub.com/GRIFFINHENRY07_1/campyuk/1.0.0/users?id={id}";
    public static String PATH_INVALID = Constant.BASE_URL + "https://virtserver.swaggerhub.com/GRIFFINHENRY07_1/campyuk/1.0.0/usersaJHFDF";


    //method

    //GET USERS
    @Step("Get valid path")
    public void getValidPath() {
        SerenityRest.given();
    }

    @Step("Get with valid id")
    public void getWithid(int id) {
        SerenityRest.given().pathParam("id", id);
    }

   @Step ("Get with invalid id")
   public void getWithInvalidid(String id){
        SerenityRest.given().pathParam("id", id);
   }

    @Step("Get invalid path")
    public void getUserWithInvalidPath(){
        SerenityRest.given();
    }



    //DELETE USERS
    @Step ("Delete valid path")
    public void deleteValidPath(String token){
        SerenityRest.given()
                .header("Authorization", "Bearer " + token);
    }

    @Step ("Delete invalid path")
    public void deleteInvalidPath(){
        SerenityRest.given();
    }

    @Step("Delete valid id")
    public void deleteWithId(int id){
        SerenityRest.given().pathParam("id", id);
    }

    @Step("Delete invalid id")
    public void deleteWithInvalidId(String id){
        SerenityRest.given().pathParam("id", id);
    }

    //PUT USERS
    @Step ("Put user with valid path")
    public void putValidPath(File json){
        SerenityRest.given()
                .contentType(ContentType.JSON)
                .body(json);
    }

    @Step ("Put user with invalid path")
    public void putInvalidPath(File json){
        SerenityRest.given()
                .contentType(ContentType.JSON)
                .body(json);
    }

    @Step("Put with valid id")
    public void putWithid(int id, File json) {
        SerenityRest.given()
                .pathParam("id", id)
                .contentType(ContentType.JSON)
                .body(json);
    }

    @Step("Put with valid id")
    public void putWithInvalidid(String id, File json) {
        SerenityRest.given()
                .pathParam("id", id)
                .contentType(ContentType.JSON)
                .body(json);
    }


}
