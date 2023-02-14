package starter.campyuk;

import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import starter.campyuk.Utils.CampyukResponse;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class ImagesAPI {
    public static String POST_IMAGES = Constant.BASE_URL + "/images";
    public static String DELETE_IMAGES = Constant.BASE_URL + "/images/{id}";

    @Step("Post add an image")
    public void setPostImages(String token, Object id, File image){
        SerenityRest.given()
                    .header("Authorization",
                            "Bearer " + token)
                    .contentType("multipart/form-data")
                    .multiPart("camp_id",id)
                    .multiPart("image",image);
    }

    @Step("Post add an image with empty image")
    public void setPostImagesWEmptyImage(String token, Object id){
        SerenityRest.given()
                    .header("Authorization",
                            "Bearer " + token)
                    .contentType("multipart/form-data")
                    .multiPart("camp_id", id)
                    .multiPart("image", "[]");
    }

    @Step
    public void setDeleteImages(String token, Object id){
        SerenityRest.given().pathParams("id",id)
                    .header("Authorization",
                            "Bearer " + token);
    }

    @Step
    public void setDeleteImagesWStringImage_id(String id, String token){
        SerenityRest.given().pathParams("id",id)
                .header("Authorization",
                        "Bearer " + token);
    }

    @Step
    public void setDeleteImagesWOParameter(String token){
        SerenityRest.given().pathParams("id","")
                .header("Authorization",
                        "Bearer " + token);
    }


}
