package com.synnlabz.curec;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import java.util.HashMap;


public class Registration extends AppCompatActivity {

    private EditText txtName,txtNIC,txtAge,txtLocation,txtPhone,txtPassword,txtCity;
    private Spinner dropGender,dropBloodgroup;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_registration);

        txtName = (EditText) findViewById(R.id.txtname);
        txtNIC = (EditText) findViewById(R.id.txtNIC);
        txtAge = (EditText) findViewById(R.id.txtAge);
        txtLocation = (EditText) findViewById(R.id.txtlocation);
        txtPhone = (EditText) findViewById(R.id.txtPhone);
        txtCity = (EditText) findViewById(R.id.txtcity);
        txtPassword = (EditText) findViewById(R.id.txtpassword);

        dropGender = (Spinner) findViewById(R.id.dropgender);
        dropBloodgroup = (Spinner) findViewById(R.id.dropbloodgroup);

    }

    public void goToDashboard(View view) {
        //Intent intent = new Intent(Registration.this, MainActivity.class);
        //startActivity(intent);
        //finish();
        String Name = txtName.getText().toString();
        String NIC = txtNIC.getText().toString();
        String Age = txtAge.getText().toString();
        String Location = txtLocation.getText().toString();
        String Phone = txtPhone.getText().toString();
        String City = txtCity.getText().toString();
        String Password = txtPassword.getText().toString();
        String Gender = dropGender.getSelectedItem().toString();
        String Blood = dropBloodgroup.getSelectedItem().toString();
        if(!(TextUtils.isEmpty(Name)&&TextUtils.isEmpty(NIC)&&TextUtils.isEmpty(Age)&&TextUtils.isEmpty(City)&&TextUtils.isEmpty(Location)&&TextUtils.isEmpty(Phone)&&TextUtils.isEmpty(City)&&TextUtils.isEmpty(Password)&&TextUtils.isEmpty(Gender)&&TextUtils.isEmpty(Blood))){
            HashMap<String, String> param = new HashMap<String, String>();
            param.put("type","addMember");
            param.put("name",Name);
            param.put("nic",NIC);
            param.put("age",Age);
            param.put("location",City);
            param.put("phone",Phone);
            param.put("Location_lat",Location);
            param.put("Location_lan",Location);
            param.put("bloodType",Blood);
            param.put("gender",Gender);
            param.put("Password",Password);
            Backgroundworker backgroundworker = new Backgroundworker(this,this);
            backgroundworker.execute(param);
        }else{
            Toast.makeText(Registration.this, "Empty field not allowed!", Toast.LENGTH_SHORT).show();
        }
    }

    public void goToLogin(View view) {
        Intent intent = new Intent(Registration.this, Login.class);
        startActivity(intent);
        finish();
    }
}
