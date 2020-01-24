package com.example.emplyproject;

import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

public class PrintPrivateKeyActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        //setContentView(R.layout.activity_main);
        //String privatekey = "test";
        //Log.d("###", privatekey);

        Intent intent = getIntent();
        String message = intent.getStringExtra(MainActivity.EXTRA_MESSAGE);

        //TextView textView = findViewById(R.id.textView);
        //textView.setText(message);

    }

}
