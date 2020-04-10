package com.synnlabz.curec;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

import java.util.HashMap;

public class Activity_Phase2 extends AppCompatActivity {

    private RadioGroup radioGroup1 , radioGroup2 , radioGroup3 , radioGroup4 , radioGroup5;
    private RadioButton radioButton11 , radioButton12 , radioButton21 , radioButton22 ,
            radioButton31 , radioButton32 , radioButton41 , radioButton42,
            radioButton51 , radioButton52;
    private Button Submit;
    private HashMap<String, String> param;
    private AlertDialog alertDialog;

    private String prio;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_phase2);
        param = (HashMap<String, String>) getIntent().getSerializableExtra("Extra_contact");
        radioButton11 = findViewById(R.id.yes1);
        radioButton12 = findViewById(R.id.no1);
        radioButton21 = findViewById(R.id.yes2);
        radioButton22 = findViewById(R.id.no2);
        radioButton31 = findViewById(R.id.yes3);
        radioButton32 = findViewById(R.id.no3);
        radioButton41 = findViewById(R.id.yes4);
        radioButton42 = findViewById(R.id.no4);
        radioButton51 = findViewById(R.id.yes5);
        radioButton52 = findViewById(R.id.no5);

        radioGroup1 = (RadioGroup)findViewById(R.id.radioGroup1);
        radioGroup2 = (RadioGroup)findViewById(R.id.radioGroup2);
        radioGroup3 = (RadioGroup)findViewById(R.id.radioGroup3);
        radioGroup4 = (RadioGroup)findViewById(R.id.radioGroup4);
        radioGroup5 = (RadioGroup)findViewById(R.id.radioGroup5);
        Submit = (Button)findViewById(R.id.submit);
        prio = "";

    }

    @Override
    public void onBackPressed() {
        Intent intent = new Intent(Activity_Phase2.this, Activity_closecontact.class);
        startActivity(intent);
        finish();
    }

    public void onRadioclicked1(View view) {
        boolean isSelected = ((RadioButton)view).isChecked();
        switch (view.getId()){
            case R.id.no1:
                if(isSelected){
                    radioButton11.setTextColor(Color.BLACK);
                    radioButton12.setTextColor(Color.WHITE);
                }
                break;
            case R.id.yes1:
                if(isSelected){
                    radioButton12.setTextColor(Color.BLACK);
                    radioButton11.setTextColor(Color.WHITE);
                }
                break;
        }
    }

    public void onRadioclicked2(View view) {
        boolean isSelected = ((RadioButton)view).isChecked();
        switch (view.getId()){
            case R.id.no2:
                if(isSelected){
                    radioButton21.setTextColor(Color.BLACK);
                    radioButton22.setTextColor(Color.WHITE);
                }
                break;
            case R.id.yes2:
                if(isSelected){
                    radioButton22.setTextColor(Color.BLACK);
                    radioButton21.setTextColor(Color.WHITE);
                }
                break;
        }
    }

    public void onRadioclicked3(View view) {
        boolean isSelected = ((RadioButton)view).isChecked();
        switch (view.getId()){
            case R.id.no3:
                if(isSelected){
                    radioButton31.setTextColor(Color.BLACK);
                    radioButton32.setTextColor(Color.WHITE);
                }
                break;
            case R.id.yes3:
                if(isSelected){
                    radioButton32.setTextColor(Color.BLACK);
                    radioButton31.setTextColor(Color.WHITE);
                }
                break;
        }
    }

    public void onRadioclicked4(View view) {
        boolean isSelected = ((RadioButton)view).isChecked();
        switch (view.getId()){
            case R.id.no4:
                if(isSelected){
                    radioButton41.setTextColor(Color.BLACK);
                    radioButton42.setTextColor(Color.WHITE);
                }
                break;
            case R.id.yes4:
                if(isSelected){
                    radioButton42.setTextColor(Color.BLACK);
                    radioButton41.setTextColor(Color.WHITE);
                }
                break;
        }
    }

    public void onRadioclicked5(View view) {
        boolean isSelected = ((RadioButton)view).isChecked();
        switch (view.getId()){
            case R.id.no5:
                if(isSelected){
                    radioButton51.setTextColor(Color.BLACK);
                    radioButton52.setTextColor(Color.WHITE);
                }
                break;
            case R.id.yes5:
                if(isSelected){
                    radioButton52.setTextColor(Color.BLACK);
                    radioButton51.setTextColor(Color.WHITE);
                }
                break;
        }
    }

    public void Submit(View view) {
        int heart = radioGroup1.getCheckedRadioButtonId();
        int highBlood = radioGroup2.getCheckedRadioButtonId();
        int Diabetes = radioGroup3.getCheckedRadioButtonId();
        int lung = radioGroup4.getCheckedRadioButtonId();
        int other = radioGroup5.getCheckedRadioButtonId();

        RadioButton heartbtn = (RadioButton) findViewById(heart);
        RadioButton highBloodbtn = (RadioButton) findViewById(highBlood);
        RadioButton Diabetesbtn = (RadioButton) findViewById(Diabetes);
        RadioButton lungbtn = (RadioButton) findViewById(lung);
        RadioButton otherbtn = (RadioButton) findViewById(other);

        param.put("heart",heartbtn.getText().toString());
        param.put("highBlood",highBloodbtn.getText().toString());
        param.put("Diabetes",Diabetesbtn.getText().toString());
        param.put("lung",lungbtn.getText().toString());
        param.put("other",otherbtn.getText().toString());
        prio = priority_level(param);
        param.put("MID","1");


        Backgroundworker backgroundworker = new Backgroundworker(this,this);
        backgroundworker.execute(param);

        //Intent intent = new Intent(Activity_Phase2.this, Results.class);
        //startActivity(intent);
        //finish();
    }

    public void displayResult(String result) {
        //Toast.makeText(Activity_Phase2.this, "Update "+result, Toast.LENGTH_SHORT).show();
        Integer temp = Integer.parseInt(result.replaceAll("[^\\d]",""));
        if(temp>0){
            Intent intent = new Intent(Activity_Phase2.this, Results.class);
            intent.putExtra("Extra_RID",String.valueOf(temp));
            intent.putExtra("Prio_PID",prio);
            startActivity(intent);
            finish();
        }else {
            String temp2 = result.replaceAll("[\\d]","");
            alertDialog = new AlertDialog.Builder(this).create();
            alertDialog.setTitle("Data input Status");
            alertDialog.setMessage(temp2);
            alertDialog.show();
        }

    }
    private String priority_level(HashMap<String, String> para){
        int totpoints = 0;
        String prio ="1";

        //cat 1
        if(para.get("SOB").toLowerCase().equals("yes")){
            totpoints += 10;
        }
        if((para.get("Fever").toLowerCase().equals("yes"))||(para.get("LossSmell").toLowerCase().equals("yes"))||(para.get("Urine").toLowerCase().equals("reduced"))){
            totpoints += 5;
        }
        if((para.get("SoreThroat").toLowerCase().equals("yes"))||(para.get("Cough").toLowerCase().equals("yes"))){
            totpoints += 2;
        }
        if(para.get("BodyPain").toLowerCase().equals("yes")){
            totpoints += 1;
        }

        //cat 2
        if((para.get("CariveAbroad").toLowerCase().equals("yes"))||(para.get("CsuspectedPerson").toLowerCase().equals("yes"))||(para.get("CquarantineCamp").toLowerCase().equals("yes"))){
            totpoints += 10;
        }
        if((para.get("Cworking").toLowerCase().equals("yes"))||(para.get("CriskArea").toLowerCase().equals("yes"))||(para.get("CPcameAbroad").toLowerCase().equals("yes"))){
            totpoints += 5;
        }

        //cat 3
        if((para.get("heart").toLowerCase().equals("yes"))||(para.get("highBlood").toLowerCase().equals("yes"))||(para.get("Diabetes").toLowerCase().equals("yes"))||(para.get("lung").toLowerCase().equals("yes"))||(para.get("other").toLowerCase().equals("yes"))){
            totpoints += 10;
        }

        if(totpoints > 30){
            prio = "4";
        }else if(totpoints > 20){
            prio = "3";
        }else if(totpoints > 10){
            prio = "2";
        }else {
            prio = "1";
        }

        return prio;
    }

}
