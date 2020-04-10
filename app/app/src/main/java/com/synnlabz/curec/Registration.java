package com.synnlabz.curec;


import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.icu.util.Calendar;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.Toast;

import java.util.HashMap;



public class Registration extends AppCompatActivity {

    private EditText txtName,txtNIC,txtLocation,txtPhone,txtPassword,txtCity;
    private Spinner dropBloodgroup;
    String Gender,Age;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_registration);

        txtName = (EditText) findViewById(R.id.txtname);
        txtNIC = (EditText) findViewById(R.id.txtNIC);
        txtLocation = (EditText) findViewById(R.id.txtlocation);
        txtPhone = (EditText) findViewById(R.id.txtPhone);
        txtCity = (EditText) findViewById(R.id.txtcity);
        txtPassword = (EditText) findViewById(R.id.txtpassword);
        dropBloodgroup = (Spinner) findViewById(R.id.dropbloodgroup);

        Gender="null";
        Age="null";

    }

    public void goToDashboard(View view) {

        String Name = txtName.getText().toString();
        String NIC = txtNIC.getText().toString();
        String Location = txtLocation.getText().toString();
        String Phone = txtPhone.getText().toString();
        String City = txtCity.getText().toString();
        String Password = txtPassword.getText().toString();
        String Blood = dropBloodgroup.getSelectedItem().toString();

        if(!(TextUtils.isEmpty(Name)&&TextUtils.isEmpty(NIC)&&TextUtils.isEmpty(Age)&&TextUtils.isEmpty(City)&&TextUtils.isEmpty(Phone)&&TextUtils.isEmpty(City)&&TextUtils.isEmpty(Password)&&TextUtils.isEmpty(Gender)&&TextUtils.isEmpty(Blood))&&(validateNIC(NIC))){
            HashMap<String, String> param = new HashMap<String, String>();
            param.put("type","addMember");
            param.put("name",Name);
            param.put("nic",NIC);
            param.put("age",Age);
            param.put("location",City);
            param.put("phone",Phone);
            param.put("Location_lat","111");
            param.put("Location_lan","111");
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

    private boolean validateNIC(String id){

        int type = NICtype(id);
        if (type==0){
            return false;
        }
        String person = "";
        String birthYear = "";
        String dates = "";
        switch(type) {
            case 1:
                person = "Male";
                birthYear = "19" + id.substring(0, 2);
                dates = id.substring(2, 5);
                break;
            case 2:
                person = "Male";
                birthYear = id.substring(0, 4);
                dates = id.substring(4, 7);
                break;
            default:
                Toast.makeText(Registration.this, "Invalide NIC ", Toast.LENGTH_SHORT).show();
        }
        if(type==1||type==2){
            int year = Integer.parseInt(birthYear);
            //Log.i("test",String.valueOf(year)+"  "+dates);
            int no = Integer.parseInt(dates);
            if (no > 500) {
                no -= 500;
                person = "Female";
            }

            --no;
            if (year % 100 == 0) {
                if (year % 400 != 0) {
                    --no;
                }
            } else if (year % 4 != 0) {
                --no;
            }

            if (no < 60) {
                ++no;
            }
            Gender = person;

            if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {

                Log.i("test",dates+"  "+no);
                Calendar cal = Calendar.getInstance();
                cal.set(year, 0, 1);
                cal.add(5, no);

                Age = getAge(cal.get(1),cal.get(2)+1,cal.get(5));
            }

        }
        return true;
    }

    private String getAge(int year, int month, int day){
        String ageS="";
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.N) {
            Calendar dob = Calendar.getInstance();
            Calendar today = Calendar.getInstance();

            dob.set(year, month, day);

            int age = today.get(Calendar.YEAR) - dob.get(Calendar.YEAR);

            if (today.get(Calendar.DAY_OF_YEAR) < dob.get(Calendar.DAY_OF_YEAR)){
                age--;
            }

            Integer ageInt = new Integer(age);
            ageS = ageInt.toString();
        }
        return ageS;
    }

    private int NICtype(String nicno){
        nicno = nicno.toLowerCase().trim();
        int type;
        if((nicno.length()==10)&&((nicno.substring(nicno.length() - 1).equals("v"))||(nicno.substring(nicno.length() - 1).equals("x")))&&(nicno.substring(0, nicno.length() - 1).matches("\\d+"))){
            type = 1;
        }else if((nicno.length()==12)&&(nicno.matches("\\d+"))){
            type = 2;
        }else {
            type = 0;
        }
        return type;
    }

}
