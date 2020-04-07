package com.synnlabz.curec;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;

public class SplashScreen extends AppCompatActivity {

    private TextView view1 , view2 , view4;
    private ImageView view3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash_screen);

        view1 = (TextView) findViewById(R.id.txt1);
        view2 = (TextView)findViewById(R.id.txt1);
        view3 = (ImageView)findViewById(R.id.txt3);
        view4 = (TextView)findViewById(R.id.txt4);

        Animation splashAnim = AnimationUtils.loadAnimation(this,R.anim.splash);
        view1.startAnimation(splashAnim);
        view2.startAnimation(splashAnim);
        view3.startAnimation(splashAnim);
        view4.startAnimation(splashAnim);

        final Intent intent = new Intent(this, Login.class);
        Thread timer = new Thread(){
            public void run(){
                try {
                    sleep(3000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }finally {
                    startActivity(intent);
                    finish();
                }
            }
        };
        timer.start();


    }
}
