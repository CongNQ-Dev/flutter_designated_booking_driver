const DATE_TIME_FORMAT = "yyyy-MM-ddTHH:mm:ssZ";
const DATE_TIME_FORMAT2 = "dd/MM/yyyy HH:mm";
const DATE_TIME_FORMAT3 = "HH:mm, dd/MM/yyyy";
const DATE_FORMAT = "dd/MM/yyyy";
const DATE_FORMAT2 = "dd-MM-yyyy";
const DATE_OF_WEEK_FORMAT = "EEE, dd/MM";
const TIME_FORMAT = "HH:mm";
final minDate = DateTime(1900, 1, 1, 0, 0, 0);
final maxDate = DateTime(3000, 1, 1, 0, 0, 0);
const MIN_YEAR_OLD_USED_APP = 18;
const PAGE_SIZE = 30;

const BASE_URL_DEV = "https://rental-vehicle-na07.onrender.com/api";
const UPLOAD_PHOTO_URL_DEV = "https://api-mxhdulich.netalo.vn";
const DOWNLOAD_PHOTO_URL_DEV = "https://dev-cdn.netalo.vn";

const BASE_URL_PROD = "http://157.245.57.162:3000"; // production
const UPLOAD_PHOTO_URL_PROD = "https://pro.netalomo.vn"; //production
const DOWNLOAD_PHOTO_URL_PROD = "https://ss1.netalomo.vn"; // production

const BASE_URL_STA = "http://157.245.57.162:3000"; // staging
const UPLOAD_PHOTO_URL_STA = "https://sta.netalomo.vn"; //staging
const DOWNLOAD_PHOTO_URL_STA = "https://ss1.netalomo.vn";
const BASE_URL_PHOTO_STA = "http://dev-cdn.netalo.vn"; // staging

const URL_TTGD = "https://v2.247care.vn";
const URL_TERM = "https://telemedicine.netalo.vn/vn/term.html";

String PHOTO_URL_CDN = "";
String UPLOAD_PHOTO_URL = "";

const REGISTER = "/users/register";
const OTP = "/users/otpRegister";
const VERIFY_OTP = "/users/verifyOtpRegister";
const LOGIN_BY_PHONE = "/auth/login";
const LOGIN_BY_GOOGLE = "/auth/loginGoogle";
const USER_INFO = "/users/current";
const BOOKING_VEHICLE = "/bookings";
const UPDATE_STATUS_BOOKING = "/bookings/changeBookingStatus";
const CANCLE_BOOKING_OWNER = "/bookings/cancelOwner";
const CANCLE_BOOKING_CUSTOMER = "/bookings/cancelCustomer";
const LIST_BOOKING = "/bookings";
const LIST_BOOKING_OWNER = "/bookings/hotelier";
//VEHICLE
const LIST_VEHICLE = "/vehicles/home";
const LIST_VEHICLE_MOTO = "/motorbikes/home";
const LIST_VEHICLE_CAR = "/cars/home";
const VEHICLE_DETAILS = "/vehicles/%s";

//PROFILE
const CHANGE_PASSWORD = "/users/changePassword/%s";
const UPDATE_PROFILE = "/users/%s";
const UPDATE_IMAGE = "/users/avatar";

//LICENSE
const GET_LICENSE = "/users/drivingLicense/%s";
const LICENSE = "/users/drivingLicense";

//Filter
const AUTOMAKER_CAR = "/autoMakers/cars";
const AUTOMAKER_MOTO = "/autoMakers/motorbikes";
const MODEL_CAR = "/models/cars";
const MODEL_MOTO = "/models/motorbikes";
const CATEGORY_CAR = "/categories/cars";
const CATEGORY_MOTO = "/categories/motorbikes";
const FUEL_CAR = "/fuel/cars";
const FUEL_MOTO = "/fuel/motorbikes";

const SEARCH_VEHICLE =
    "/filters/vehicles/types?vehicleType=%s&startDate=%s&endDate=%s&address=%s&category=%s&model=%s&autoMaker=%s&fuel=%s";
// firebase
const PUSH_DEVICE_TOKEN = "/v1/app/device/%s";

//Static
const CONFIG_CDN = "/v1/static/config";

const NETALO_API = "https://api.netalo.vn";
const COUNTRY_CODE = "/api/v1/list_country_code";
const CONFIRM_OTP = "/v1/oauth/register/otp";

const LIST_DISCOVERY = "/v1/post";
const FAVORITE_POST = "/v1/favorite/post/%s";
const POST_COMMENT = "/v1/comment";
const FIND_HOTEL = "/v1/hotel";
