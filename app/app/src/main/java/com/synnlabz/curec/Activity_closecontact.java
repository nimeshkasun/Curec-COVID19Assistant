package com.synnlabz.curec;

import androidx.appcompat.app.AppCompatActivity;

import android.app.DatePickerDialog;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.InputType;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;

import java.util.Calendar;
import java.util.HashMap;

public class Activity_closecontact extends AppCompatActivity {

    private RadioGroup radioGroup1 , radioGroup2 , radioGroup3 , radioGroup4 , radioGroup5 , radioGroup6;
    private RadioButton radioButton11 , radioButton12 , radioButton21 , radioButton22 ,
            radioButton31 , radioButton32 , radioButton41 , radioButton42,
            radioButton51 , radioButton52 , radioButton61 , radioButton62;
    private Button Submit;
    private EditText txtarivedate;
    private DatePickerDialog picker;
    private HashMap<String, String> param;
    private int status;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_closecontact);
        param = (HashMap<String, String>) getIntent().getSerializableExtra("Extra_basic");
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
        Submit = (Button) findViewById(R.id.submit);

        status = 0;

        txtarivedate = (EditText) findViewById(R.id.txtarivedate);
        txtarivedate.setInputType(InputType.TYPE_NULL);
        txtarivedate.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(status == 1){
                    final Calendar cldr = Calendar.getInstance();
                    int day = cldr.get(Calendar.DAY_OF_MONTH);
                    int month = cldr.get(Calendar.MONTH);
                    int year = cldr.get(Calendar.YEAR);
                    // date picker dialog
                    picker = new DatePickerDialog(Activity_closecontact.this,
                            new DatePickerDialog.OnDateSetListener() {
                                @Override
                                public void onDateSet(DatePicker view, int year, int monthOfYear, int dayOfMonth) {
                                    txtarivedate.setText(year + "-" + (monthOfYear + 1) + "-" + dayOfMonth);
                                }
                            }, year, month, day);
                    picker.show();
                    }
                }
                });

        radioGroup1 = (RadioGroup)findViewById(R.id.radioGroup1);
        radioGroup2 = (RadioGroup)findViewById(R.id.radioGroup2);
        radioGroup3 = (RadioGroup)findViewById(R.id.radioGroup3);
        radioGroup4 = (RadioGroup)findViewById(R.id.radioGroup4);
        radioGroup5 = (RadioGroup)findViewById(R.id.radioGroup5);
        radioGroup6 = (RadioGroup)findViewById(R.id.radioGroup6);

        txtarivedate.setFocusable(false);
    }

    @Override
    public void onBackPressed() {
        Intent intent = new Intent(Activity_closecontact.this, Activity_BasicSymptoms.class);
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
                    txtarivedate.setText("YYYY-MM-DD");
                    status = 0;
                }
                break;
            case R.id.yes1:
                if(isSelected){
                    radioButton12.setTextColor(Color.BLACK);
                    radioButton11.setTextColor(Color.WHITE);
                    status = 1;
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


    public void next(View view) {
        int CariveAbroad = radioGroup1.getCheckedRadioButtonId();
        int CsuspectedPerson = radioGroup2.getCheckedRadioButtonId();
        int CPcameAbroad = radioGroup3.getCheckedRadioButtonId();
        int CriskArea = radioGroup4.getCheckedRadioButtonId();
        int CquarantineCamp = radioGroup5.getCheckedRadioButtonId();
        int Cworking = radioGroup6.getCheckedRadioButtonId();
        String arivedDate = txtarivedate.getText().toString();

        RadioButton CariveAbroadbtn = (RadioButton) findViewById(CariveAbroad);
        RadioButton CsuspectedPersonbtn = (RadioButton) findViewById(CsuspectedPerson);
        RadioButton SoreThroatbtn = (RadioButton) findViewById(CPcameAbroad);
        RadioButton CPcameAbroadbtn = (RadioButton) findViewById(CriskArea);
        RadioButton CquarantineCampbtn = (RadioButton) findViewById(CquarantineCamp);
        RadioButton Cworkingbtn = (RadioButton) findViewById(Cworking);

        param.put("CariveAbroad",CariveAbroadbtn.getText().toString());
        param.put("CariveAbroadDate",arivedDate);
        param.put("CsuspectedPerson",CsuspectedPersonbtn.getText().toString());
        param.put("CPcameAbroad",SoreThroatbtn.getText().toString());
        param.put("CriskArea",CPcameAbroadbtn.getText().toString());
        param.put("CquarantineCamp",CquarantineCampbtn.getText().toString());
        param.put("Cworking",Cworkingbtn.getText().toString());

        Intent intent = new Intent(Activity_closecontact.this, Activity_Phase2.class);
        intent.putExtra("Extra_contact",param);
        startActivity(intent);
        finish();
    }
}
