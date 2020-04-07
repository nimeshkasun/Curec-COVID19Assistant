package com.synnlabz.curec;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

public class Results extends AppCompatActivity {

    private String RID;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RID = getIntent().getStringExtra("Extra_RID");
        setContentView(R.layout.activity_results);
    }


}
