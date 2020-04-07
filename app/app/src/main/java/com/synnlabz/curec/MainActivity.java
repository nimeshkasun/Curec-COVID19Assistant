package com.synnlabz.curec;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.mikepenz.materialdrawer.Drawer;
import com.mikepenz.materialdrawer.model.interfaces.IDrawerItem;

import java.util.HashMap;

public class MainActivity extends AppCompatActivity{
    private String UserID;
    private TextView txtName;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        UserID = getIntent().getStringExtra("Extra_text");
        txtName = (TextView) findViewById(R.id.txtUsername);
        load_member_name(UserID);
    }

    private void load_member_name(String user){
        HashMap<String, String> param = new HashMap<String, String>();
        param.put("type","load_member_name");
        param.put("LID",user);
        Backgroundworker backgroundworker = new Backgroundworker(this,this);
        backgroundworker.execute(param);
    }

    public void displayName(String result){
        //Toast.makeText(MainActivity.this, "Name "+result, Toast.LENGTH_SHORT).show();
        txtName.setText(result);
    }

    public void logout(View view) {
        Intent intent = new Intent(MainActivity.this, Login.class);
        startActivity(intent);
        finish();
    }

    public void goToAddSymptoms(View view) {
        Intent intent = new Intent(MainActivity.this, Activity_BasicSymptoms.class);
        startActivity(intent);
        finish();
    }

    public void goToDiagnose(View view) {
        Intent intent = new Intent(MainActivity.this, Results.class);
        startActivity(intent);
        finish();
    }
}
