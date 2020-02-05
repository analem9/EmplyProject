package com.example.emplyproject;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;

import java.util.HashMap;


public class MainActivity extends AppCompatActivity {

    public HashMap <Integer, Integer> firsttry = new HashMap<>();



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        //String privatekey = "test";
        //Log.d("###", privatekey);

        this.firsttry.put(1, 21);
        this.firsttry.put(2, 45);
        PrintPrivateKeyFromMainActivity();

    }

    public void PrintPrivateKeyFromMainActivity() {
        PrintPrivateKey printPrivateKey = new PrintPrivateKey();
        printPrivateKey.Printkey(this.firsttry);
    }


    //public void sendMessage(View view) {
    //    Intent intent = new Intent(this, PrintPrivateKey.class);
        //String message = "private key";
        //intent.putExtra(EXTRA_MESSAGE,message);
        //startActivity(intent);

    //PrintPrivateKey PK = new PrintPrivateKey(PrintPrivateKey.context);

      //  String key = PK.Printkey();

        //Toast.makeText(MainActivity.this, key, Toast.LENGTH_LONG).show();

    //}

}
