import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../helpers/firestore_helper.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String email = "";
  String password = "";

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/1.png",),
              fit: BoxFit.cover,
              opacity: 0.4,
            ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  "Choose your Role..",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: "@admin.com",
                        titleStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        content: Form(
                          key: loginKey,
                          child: Column(
                            children: [
                              SizedBox(
                                height: Get.height * 0.0013,
                              ),
                              Transform.scale(
                                scale: 0.85,
                                child: TextFormField(
                                  controller: emailController,
                                  textInputAction: TextInputAction.next,
                                  validator: (val) =>
                                  (val!.isEmpty) ? "Enter email" : null,
                                  onSaved: (val) {
                                    email = val!;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    hintText: "Enter roles wise email id..",
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xff39579a),
                                        width: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Transform.scale(
                                scale: 0.85,
                                child: TextFormField(
                                  obscureText: true,
                                  controller: passwordController,
                                  textInputAction: TextInputAction.done,
                                  validator: (val) =>
                                  (val!.isEmpty) ? "Enter password" : null,
                                  onSaved: (val) {
                                    password = val!;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    hintText: "Enter your password..",
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xff39579a),
                                        width: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@admin.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("f",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.blue,
                                        ),
                                      ),
                                      Text("Facebook",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@admin.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("G",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.red,
                                        ),
                                      ),
                                      Text("Google",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@admin.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("W",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.green,
                                        ),
                                      ),
                                      Text("Whatsapp",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@admin.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("G",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.black87,
                                        ),
                                      ),
                                      Text("GitHub",),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              if (loginKey.currentState!.validate()) {
                                loginKey.currentState!.save();

                                await FireStoreHelper.fireStoreHelper
                                    .addUser(
                                    email: email, password: password);
                                emailController.clear();
                                passwordController.clear();
                                Get.back();

                                Get.snackbar(
                                  "Sing In",
                                  "Sing In Successfull for $email",
                                  backgroundColor: Colors.green,
                                );
                                Get.offAllNamed("/home_page",
                                    arguments: email);
                                email = "";
                                password = "";
                              }
                            },
                            child: Text("Login"),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              emailController.clear();
                              passwordController.clear();
                              email = "";
                              password = "";
                            },
                            child: Text("Reset"),
                          ),
                        ]
                    );
                  },
                  child: Container(
                    height: 200,
                    width: 150,
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/2.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Admin",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white38,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 5),
                          color: Colors.grey,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: "@manager.com",
                        titleStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        content: Form(
                          key: loginKey,
                          child: Column(
                            children: [
                              SizedBox(
                                height: Get.height * 0.0013,
                              ),
                              Transform.scale(
                                scale: 0.85,
                                child: TextFormField(
                                  controller: emailController,
                                  textInputAction: TextInputAction.next,
                                  validator: (val) =>
                                  (val!.isEmpty) ? "Enter email" : null,
                                  onSaved: (val) {
                                    email = val!;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    hintText: "Enter roles wise email id..",
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xff39579a),
                                        width: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Transform.scale(
                                scale: 0.85,
                                child: TextFormField(
                                  obscureText: true,
                                  controller: passwordController,
                                  textInputAction: TextInputAction.done,
                                  validator: (val) =>
                                  (val!.isEmpty) ? "Enter password" : null,
                                  onSaved: (val) {
                                    password = val!;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    hintText: "Enter your password..",
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xff39579a),
                                        width: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@manager.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("f",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.blue,
                                        ),
                                      ),
                                      Text("Facebook",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@manager.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("G",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.red,
                                        ),
                                      ),
                                      Text("Google",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@manager.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("W",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.green,
                                        ),
                                      ),
                                      Text("Whatsapp",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@manager.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("G",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.black87,
                                        ),
                                      ),
                                      Text("GitHub",),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              if (loginKey.currentState!.validate()) {
                                loginKey.currentState!.save();

                                await FireStoreHelper.fireStoreHelper
                                    .addUser(
                                    email: email, password: password);
                                emailController.clear();
                                passwordController.clear();
                                Get.back();

                                Get.snackbar(
                                  "Sing In",
                                  "Sing In Successfull for $email",
                                  backgroundColor: Colors.green,
                                );
                                Get.offAllNamed("/home_page",
                                    arguments: email);
                                email = "";
                                password = "";
                              }
                            },
                            child: Text("Login"),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              emailController.clear();
                              passwordController.clear();
                              email = "";
                              password = "";
                            },
                            child: Text("Reset"),
                          ),
                        ]
                    );
                  },
                  child: Container(
                    height: 200,
                    width: 150,
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/3.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Manager",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white38,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 5),
                          color: Colors.grey,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: "@clerk.com",
                        titleStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        content: Form(
                          key: loginKey,
                          child: Column(
                            children: [
                              SizedBox(
                                height: Get.height * 0.0013,
                              ),
                              Transform.scale(
                                scale: 0.85,
                                child: TextFormField(
                                  controller: emailController,
                                  textInputAction: TextInputAction.next,
                                  validator: (val) =>
                                  (val!.isEmpty) ? "Enter email" : null,
                                  onSaved: (val) {
                                    email = val!;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    hintText: "Enter roles wise email id..",
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xff39579a),
                                        width: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Transform.scale(
                                scale: 0.85,
                                child: TextFormField(
                                  obscureText: true,
                                  controller: passwordController,
                                  textInputAction: TextInputAction.done,
                                  validator: (val) =>
                                  (val!.isEmpty) ? "Enter password" : null,
                                  onSaved: (val) {
                                    password = val!;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    hintText: "Enter your password..",
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xff39579a),
                                        width: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@clerk.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("f",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.blue,
                                        ),
                                      ),
                                      Text("Facebook",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@clerk.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("G",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.red,
                                        ),
                                      ),
                                      Text("Google",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@clerk.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("W",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.green,
                                        ),
                                      ),
                                      Text("Whatsapp",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@clerk.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("G",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.black87,
                                        ),
                                      ),
                                      Text("GitHub",),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              if (loginKey.currentState!.validate()) {
                                loginKey.currentState!.save();

                                await FireStoreHelper.fireStoreHelper
                                    .addUser(
                                    email: email, password: password);
                                emailController.clear();
                                passwordController.clear();
                                Get.back();

                                Get.snackbar(
                                  "Sing In",
                                  "Sing In Successfull for $email",
                                  backgroundColor: Colors.green,
                                );
                                Get.offAllNamed("/home_page",
                                    arguments: email);
                                email = "";
                                password = "";
                              }
                            },
                            child: Text("Login"),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              emailController.clear();
                              passwordController.clear();
                              email = "";
                              password = "";
                            },
                            child: Text("Reset"),
                          ),
                        ]
                    );
                  },
                  child: Container(
                    height: 200,
                    width: 150,
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/4.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Clerk",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white38,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 5),
                          color: Colors.grey,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Get.defaultDialog(
                        title: "@employee.com",
                        titleStyle: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                        ),
                        content: Form(
                          key: loginKey,
                          child: Column(
                            children: [
                              SizedBox(
                                height: Get.height * 0.0013,
                              ),
                              Transform.scale(
                                scale: 0.85,
                                child: TextFormField(
                                  controller: emailController,
                                  textInputAction: TextInputAction.next,
                                  validator: (val) =>
                                  (val!.isEmpty) ? "Enter email" : null,
                                  onSaved: (val) {
                                    email = val!;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    hintText: "Enter roles wise email id..",
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xff39579a),
                                        width: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Transform.scale(
                                scale: 0.85,
                                child: TextFormField(
                                  obscureText: true,
                                  controller: passwordController,
                                  textInputAction: TextInputAction.done,
                                  validator: (val) =>
                                  (val!.isEmpty) ? "Enter password" : null,
                                  onSaved: (val) {
                                    password = val!;
                                  },
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    hintText: "Enter your password..",
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide(
                                        color: Color(0xff39579a),
                                        width: 3,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@employee.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("f",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.blue,
                                        ),
                                      ),
                                      Text("Facebook",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@employee.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("G",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.red,
                                        ),
                                      ),
                                      Text("Google",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@employee.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("W",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.green,
                                        ),
                                      ),
                                      Text("Whatsapp",),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.defaultDialog(
                                            title: "@employee.com",
                                            titleStyle: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 1.5,
                                            ),
                                            content: Form(
                                              key: loginKey,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: Get.height * 0.0013,
                                                  ),
                                                  TextFormField(
                                                    controller: emailController,
                                                    textInputAction: TextInputAction.next,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter email" : null,
                                                    onSaved: (val) {
                                                      email = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Email",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter roles wise email id..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.015,
                                                  ),
                                                  TextFormField(
                                                    obscureText: true,
                                                    controller: passwordController,
                                                    textInputAction: TextInputAction.done,
                                                    validator: (val) =>
                                                    (val!.isEmpty) ? "Enter password" : null,
                                                    onSaved: (val) {
                                                      password = val!;
                                                    },
                                                    decoration: InputDecoration(
                                                      labelText: "Password",
                                                      labelStyle: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      hintText: "Enter your password..",
                                                      enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                        borderSide: BorderSide(
                                                          color: Color(0xff39579a),
                                                          width: 3,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: Get.height * 0.05,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      ElevatedButton(
                                                        onPressed: () async {
                                                          if (loginKey.currentState!.validate()) {
                                                            loginKey.currentState!.save();

                                                            await FireStoreHelper.fireStoreHelper
                                                                .addUser(
                                                                email: email, password: password);
                                                            emailController.clear();
                                                            passwordController.clear();
                                                            Get.back();

                                                            Get.snackbar(
                                                              "Sing In",
                                                              "Sing In Successfull for $email",
                                                              backgroundColor: Colors.green,
                                                            );
                                                            Get.offAllNamed("/home_page",
                                                                arguments: email);
                                                            email = "";
                                                            password = "";
                                                          }
                                                        },
                                                        child: Text("Login"),
                                                      ),
                                                      SizedBox(
                                                        width: Get.width * 0.03,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          emailController.clear();
                                                          passwordController.clear();
                                                          email = "";
                                                          password = "";
                                                        },
                                                        child: Text("Reset"),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: CircleAvatar(
                                          radius: 25,
                                          child: Text("G",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold,),),
                                          backgroundColor: Colors.black87,
                                        ),
                                      ),
                                      Text("GitHub",),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              if (loginKey.currentState!.validate()) {
                                loginKey.currentState!.save();

                                await FireStoreHelper.fireStoreHelper
                                    .addUser(
                                    email: email, password: password);
                                emailController.clear();
                                passwordController.clear();
                                Get.back();

                                Get.snackbar(
                                  "Sing In",
                                  "Sing In Successfull for $email",
                                  backgroundColor: Colors.green,
                                );
                                Get.offAllNamed("/home_page",
                                    arguments: email);
                                email = "";
                                password = "";
                              }
                            },
                            child: Text("Login"),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              emailController.clear();
                              passwordController.clear();
                              email = "";
                              password = "";
                            },
                            child: Text("Reset"),
                          ),
                        ]
                    );
                  },
                  child: Container(
                    height: 200,
                    width: 150,
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/5.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Employee",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white38,
                      ),
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(5, 5),
                          color: Colors.grey,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}