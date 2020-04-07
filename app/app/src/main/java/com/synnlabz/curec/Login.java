package com.synnlabz.curec;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.util.HashMap;

public class Login extends AppCompatActivity {
    EditText txtUsername,txtPassword;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);
        txtUsername = (EditText) findViewById(R.id.txtUsername);
        txtPassword = (EditText) findViewById(R.id.txtpassword);
    }

    public void goToDashboard(View view) {
        //Intent intent = new Intent(Login.this, MainActivity.class);
        //startActivity(intent);
        //finish();
        String Username = txtUsername.getText().toString();
        String password = txtPassword.getText().toString();
        if(!(TextUtils.isEmpty(Username)&&TextUtils.isEmpty(password))){
            HashMap<String, String> param = new HashMap<String, String>();
            param.put("type","login");
            param.put("Username",Username);
            param.put("Password",password);
            Backgroundworker backgroundworker = new Backgroundworker(this,this);
            backgroundworker.execute(param);
        }else{
            Toast.makeText(Login.this, "Empty field not allowed!", Toast.LENGTH_SHORT).show();
        }

    }

    public void goToTest(View view) {
        Intent intent = new Intent(Login.this, Activity_BasicSymptoms.class);
        startActivity(intent);
        finish();
    }

    public void goToRegister(View view) {
        Intent intent = new Intent(Login.this, Registration.class);
        startActivity(intent);
        finish();
    }
}
