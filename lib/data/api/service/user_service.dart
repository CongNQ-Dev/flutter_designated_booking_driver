import 'dart:async';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart';
import 'package:secure_ride_home/data/api/models/response/register/register_response.dart';
import 'package:sprintf/sprintf.dart';

import '../api_constants.dart';
// import '../models/response/license/license_model.dart';
import '../models/response/login/login_response.dart';
// import '../models/response/register/Register_response.dart';
// import '../models/response/register/otp_response.dart';
import '../models/response/user/TUser.dart';
import 'base_service.dart';

class UserService extends BaseService {
  Future<LoginResponse> loginByUser(String phone, String password) async {
    final params = {"email": phone, "password": password};
    final response = await post(LOGIN_BY_PHONE,
        data: params, responseType: JsonType.FULL_RESPONSE);
    return LoginResponse.fromJson(response);
  }

  Future<RegisterResponse> loginByGoogle(
      String userName, String email, String imgURL) async {
    final params = {
      "firstName": userName,
      "lastName": userName,
      "email": email,
      "imgURL": imgURL
    };
    final response = await post(LOGIN_BY_GOOGLE,
        data: params, responseType: JsonType.FULL_RESPONSE);
    return RegisterResponse.fromJson(response);
  }

  Future<RegisterResponse> register(String firstName, String userName,
      String email, String password, String roleName) async {
    final params = {
      "firstName": firstName,
      "lastName": userName,
      "email": email,
      "password": password,
      "roleName": roleName,
      "gender": "",
      "dob": "",
      "address": "",
      "address_details": "",
      "phone": ""
    };
    final response = await post(REGISTER,
        data: params, responseType: JsonType.FULL_RESPONSE);
    return RegisterResponse.fromJson(response);
  }

  // Future<OtpResponse> sendOTP(String email) async {
  //   final params = {"email": email};
  //   final response =
  //       await post(OTP, data: params, responseType: JsonType.FULL_RESPONSE);
  //   return OtpResponse.fromJson(response);
  // }

  Future<String> verifyOTP(String otp, String firstName, String lastName,
      String email, String otpExpired, String otpStored) async {
    final params = {
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "otp": otp,
      "otpExpired": otpExpired,
      "otpStored": otpStored,
      "imgURL": "",
    };
    final response = await post(VERIFY_OTP,
        data: params, responseType: JsonType.FULL_RESPONSE);
    return response;
  }

  Future<TUser?> getUserInfo({required String userId}) async {
    final response = await get(USER_INFO);
    return TUser.fromJson(response);
  }

  Future<TUser?> updateProfile(
      String userId,
      String firstName,
      String lastName,
      String gender,
      String dob,
      String address,
      String address_details,
      String phone) async {
    final params = {
      "firstName": firstName,
      "lastName": lastName,
      "gender": gender,
      "dob": dob,
      "address": address,
      "address_details": address_details,
      "phone": phone,
    };
    final response = await put(sprintf(UPDATE_PROFILE, [userId]), data: params);
    return TUser.fromJson(response);
  }

  Future<void> changePassword(String userId, String password) async {
    final params = {"password": password, "confirmPassword": password};
    await put(sprintf(CHANGE_PASSWORD, [userId]), data: params);
  }

  Future<TUser?> updateImage(String? imagePath) async {
    var formData = FormData();
    if (imagePath != null) {
      final mFile = await MultipartFile.fromFile(imagePath,
          filename: basename(imagePath),
          contentType: MediaType.parse("image/jpeg"));
      formData.files.add(MapEntry('image', mFile));
    }
    final response = await put(UPDATE_IMAGE, data: formData);
    return TUser.fromJson(response);
  }

  // Future<List<LicenseModel>> getListLicense({required String userId}) async {
  //   final response = await get(sprintf(GET_LICENSE, [userId]));
  //   return List<LicenseModel>.from(response.map((item) => LicenseModel.fromJson(item)));
  // }

  Future<void> sendLicense(String licenseNo, String licenseClass,
      String expireDate, String image) async {
    final params = {
      "licenseNo": licenseNo,
      "licenseClass": licenseClass,
      "expireDate": expireDate,
      "image": image,
    };
    final response =
        await post(LICENSE, data: params, responseType: JsonType.FULL_RESPONSE);
    return response;
  }

  Future<void> updateLicense(
      String licenseNo, String licenseClass, String expireDate) async {
    final params = {
      "licenseNo": licenseNo,
      "licenseClass": licenseClass,
      "expireDate": expireDate,
    };
    await put(LICENSE, data: params);
  }
}
