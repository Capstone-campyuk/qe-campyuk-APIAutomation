package starter.campyuk;

import starter.campyuk.Utils.Constant;

public class BookingAPI {
    public static String DATA_BOOKINGS = Constant.BASE_URL + "/bookings";
    public static String DETAIL_BOOKING = Constant.BASE_URL + "/bookings/{id}";
    public static String ACCEPT_BOOKINGS = Constant.BASE_URL + "/bookings/{id}/accept";
    public static String CANCEL_BOOKINGS = Constant.BASE_URL + "/bookings/{id}/cancel";
    public static String BOOKINGS_CALLBACK = Constant.BASE_URL + "/bookings/callback";
}
