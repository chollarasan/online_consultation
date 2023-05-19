import 'dart:convert';
import '../userModel/user_model.dart';

List<Doctor> doctorModelFromJson(String str) =>
    List<Doctor>.from(json.decode(str).map((x) => Doctor.fromJson(x)));
