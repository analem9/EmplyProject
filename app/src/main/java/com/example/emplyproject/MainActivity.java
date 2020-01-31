package com.example.emplyproject;

import androidx.appcompat.app.AppCompatActivity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.content.Context;
import android.widget.Toast;


public class MainActivity extends AppCompatActivity {
    public static final String EXTRA_MESSAGE = "com.example.myfirstapp.MESSAGE";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //String privatekey = "test";
        //Log.d("###", privatekey);
    }

    public void sendMessage(View view) {
        Intent intent = new Intent(this, PrintPrivateKeyActivity.class);
        //String message = "private key";
        //intent.putExtra(EXTRA_MESSAGE,message);
        //startActivity(intent);

        PrintPrivateKeyActivity PK = new PrintPrivateKeyActivity(PrintPrivateKeyActivity.context);

        String key = PK.Printkey();

        Toast.makeText(MainActivity.this, key, Toast.LENGTH_LONG).show();

    }

}
