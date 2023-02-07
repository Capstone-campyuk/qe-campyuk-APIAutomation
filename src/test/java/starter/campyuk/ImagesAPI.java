package starter.campyuk;

import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import starter.campyuk.Utils.CampyukResponse;
import starter.campyuk.Utils.Constant;

import java.io.File;

public class ImagesAPI {
    public static String POST_IMAGES = Constant.BASE_URL + "/images";
    public static String DELETE_IMAGES = Constant.BASE_URL + "/images/{id}";

    @Step
    public void setPostImages(String token, int id, File image){
        SerenityRest.given()
                    .header("Authorization",
                            "Bearer " + token)
                    .contentType("multipart/form-data")
                    .multiPart("camp_id",id)
                    .multiPart("images",image);
    }
    @Step
    public void setPostImagesWOCamp_id(String token, File image){
        SerenityRest.given()
                    .header("Authorization",
                            "Bearer " + token)
                    .contentType("multipart/form-data")
                    .multiPart("images",image);
    }

    @Step
    public void setDeleteImages(int id, String token){
        SerenityRest.given().pathParams("id",id)
                    .header("Authorization",
                            "Bearer " + token);
    }


}
