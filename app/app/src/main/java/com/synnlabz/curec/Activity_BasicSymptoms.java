package com.synnlabz.curec;

import androidx.appcompat.app.AppCompatActivity;

import android.app.DatePickerDialog;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

import java.util.HashMap;

public class Activity_BasicSymptoms extends AppCompatActivity {

    private RadioGroup radioGroup1 , radioGroup2 , radioGroup3 , radioGroup4 , radioGroup5 ,
            radioGroup6 , radioGroup7 , radioGroup8 , radioGroup9;

    private RadioButton radioButton11 , radioButton12 , radioButton21 , radioButton22 ,
            radioButton31 , radioButton32 , radioButton41 , radioButton42,
            radioButton51 , radioButton52 , radioButton61 , radioButton62
            , radioButton71 , radioButton72 , radioButton81 , radioButton82
            , radioButton91 , radioButton92;

    private Button Submit;
    private DatePickerDialog picker;

    private HashMap<String, String> param;

    LinearLayout linlay1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_basic_symptoms);

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
        radioButton61 = findViewById(R.id.yes6);
        radioButton62 = findViewById(R.id.no6);
        radioButton71 = findViewById(R.id.yes7);
        radioButton72 = findViewById(R.id.no7);
        radioButton81 = findViewById(R.id.yes8);
        radioButton82 = findViewById(R.id.no8);
        radioButton91 = findViewById(R.id.yes9);
        radioButton92 = findViewById(R.id.no9);

        radioGroup1 = (RadioGroup)findViewById(R.id.radioGroup1);
        radioGroup2 = (RadioGroup)findViewById(R.id.radioGroup2);
        radioGroup3 = (RadioGroup)findViewById(R.id.radioGroup3);
        radioGroup4 = (RadioGroup)findViewById(R.id.radioGroup4);
        radioGroup5 = (RadioGroup)findViewById(R.id.radioGroup5);
        radioGroup6 = (RadioGroup)findViewById(R.id.radioGroup6);
        radioGroup7 = (RadioGroup)findViewById(R.id.radioGroup7);
        radioGroup8 = (RadioGroup)findViewById(R.id.radioGroup8);
        radioGroup9 = (RadioGroup)findViewById(R.id.radioGroup9);
        linlay1 = (LinearLayout)findViewById(R.id.ifyes);
        Submit = (Button)findViewById(R.id.submit);

    }

    public void next(View view) {
        int FeverID = radioGroup1.getCheckedRadioButtonId();
        int CoughID = radioGroup2.getCheckedRadioButtonId();
        int SoreThroatID = radioGroup3.getCheckedRadioButtonId();
        int SOBID = radioGroup4.getCheckedRadioButtonId();
        int BodyPainID = radioGroup5.getCheckedRadioButtonId();
        int ColdID = radioGroup6.getCheckedRadioButtonId();
        int LossSmellID = radioGroup7.getCheckedRadioButtonId();
        int DiarrhoeaID = radioGroup8.getCheckedRadioButtonId();
        int UrineID = radioGroup9.getCheckedRadioButtonId();

        RadioButton Feverbtn = (RadioButton) findViewById(FeverID);
        RadioButton Coughbtn = (RadioButton) findViewById(CoughID);
        RadioButton SoreThroatbtn = (RadioButton) findViewById(SoreThroatID);
        RadioButton SOBbtn = (RadioButton) findViewById(SOBID);
        RadioButton BodyPainbtn = (RadioButton) findViewById(BodyPainID);
        RadioButton Coldbtn = (RadioButton) findViewById(ColdID);
        RadioButton LossSmellbtn = (RadioButton) findViewById(LossSmellID);
        RadioButton Diarrhoeabtn = (RadioButton) findViewById(DiarrhoeaID);
        RadioButton Urinebtn = (RadioButton) findViewById(UrineID);

        HashMap<String, String> param = new HashMap<String, String>();
        param.put("type","addSymptoms");
        param.put("Fever",Feverbtn.getText().toString());
        param.put("Cough",Coughbtn.getText().toString());
        param.put("SoreThroat",SoreThroatbtn.getText().toString());
        param.put("SOB",SOBbtn.getText().toString());
        param.put("BodyPain",BodyPainbtn.getText().toString());
        param.put("Cold",Coldbtn.getText().toString());
        param.put("LossSmell",LossSmellbtn.getText().toString());
        param.put("Diarrhoea",Diarrhoeabtn.getText().toString());
        param.put("Urine",Urinebtn.getText().toString());

        Intent intent = new Intent(Activity_BasicSymptoms.this, Activity_closecontact.class);
        intent.putExtra("Extra_basic",param);
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

    public void onRadioclicked6(View view) {
        boolean isSelected = ((RadioButton)view).isChecked();
        switch (view.getId()){
            case R.id.no6:
                if(isSelected){
                    radioButton61.setTextColor(Color.BLACK);
                    radioButton62.setTextColor(Color.WHITE);
                }
                break;
            case R.id.yes6:
                if(isSelected){
                    radioButton62.setTextColor(Color.BLACK);
                    radioButton61.setTextColor(Color.WHITE);
                }
                break;
        }
    }

    public void onRadioclicked7(View view) {
        boolean isSelected = ((RadioButton)view).isChecked();
        switch (view.getId()){
            case R.id.no7:
                if(isSelected){
                    radioButton71.setTextColor(Color.BLACK);
                    radioButton72.setTextColor(Color.WHITE);
                }
                break;
            case R.id.yes7:
                if(isSelected){
                    radioButton72.setTextColor(Color.BLACK);
                    radioButton71.setTextColor(Color.WHITE);
                }
                break;
        }
    }

    public void onRadioclicked8(View view) {
        boolean isSelected = ((RadioButton)view).isChecked();
        switch (view.getId()){
            case R.id.no8:
                if(isSelected){
                    radioButton81.setTextColor(Color.BLACK);
                    radioButton82.setTextColor(Color.WHITE);
                }
                break;
            case R.id.yes8:
                if(isSelected){
                    radioButton82.setTextColor(Color.BLACK);
                    radioButton81.setTextColor(Color.WHITE);
                }
                break;
        }
    }

    public void onRadioclicked9(View view) {
        boolean isSelected = ((RadioButton)view).isChecked();
        switch (view.getId()){
            case R.id.no9:
                if(isSelected){
                    radioButton91.setTextColor(Color.BLACK);
                    radioButton92.setTextColor(Color.WHITE);
                }
                break;
            case R.id.yes9:
                if(isSelected){
                    radioButton92.setTextColor(Color.BLACK);
                    radioButton91.setTextColor(Color.WHITE);
                }
                break;
        }
    }
}
