package com.synnlabz.curec;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.HashMap;

public class Results extends AppCompatActivity {

    private String RID,Prio;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        RID = getIntent().getStringExtra("Extra_RID");//Prio_PID
        Prio = getIntent().getStringExtra("Prio_PID");
        setContentView(R.layout.activity_results);
    }


    public void callDoctor(View view) {
        HashMap<String, String> param = new HashMap<String, String>();
        param.put("type","creatSession");
        param.put("Rid",RID);
        param.put("Priority",Prio);

        Backgroundworker backgroundworker = new Backgroundworker(Results.this,this);
        backgroundworker.execute(param);
    }

    public void displayResult(String Result){
        Log.i("SSS111",Result);
        try {
            JSONObject jsonObj = new JSONObject(Result);
            String SessionId = jsonObj.getString("SessionId");
            String TokenId1 = jsonObj.getString("TokenId1");

            Log.i("SSS111",SessionId);
            OpenTokConfig.SESSION_ID = SessionId;
            OpenTokConfig.TOKEN = TokenId1;

            startActivity(new Intent(Results.this, Video.class));

        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

}
