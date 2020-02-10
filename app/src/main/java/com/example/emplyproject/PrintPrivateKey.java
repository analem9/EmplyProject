package com.example.emplyproject;

import android.content.Intent;
import android.os.Bundle;


import java.util.HashMap;
import java.util.Iterator;

public class PrintPrivateKey {

    //  @Override
    // protected void onCreate(Bundle savedInstanceState) {
    //      super.onCreate(savedInstanceState);
    //setContentView(R.layout.activity_main);
    //String privatekey = "test";
    //Log.d("###", privatekey);

    // Intent intent = getIntent();
    // String message = intent.getStringExtra(MainActivity.EXTRA_MESSAGE);

    //TextView textView = findViewById(R.id.textView);
    //textView.setText(message);


/*
    // fonction to test with a simple hashmap: key and value are both integer
    public String Printkey(HashMap<Integer, Integer> privatekey) {

        //HashMap<Integer, Integer> privatekey = new HashMap<Integer, Integer>();    // test example of hashmap formatted data
        //privatekey.put(1, 21);
        //privatekey.put(2, 45);
        System.out.println("######################################################");
        Iterator<Integer> keySetIterator = privatekey.keySet().iterator();
        while (keySetIterator.hasNext()) {
            Integer key = keySetIterator.next();
            System.out.println(key.toString() + " : " + privatekey.get(key).toString());    // display key and value, string formatted
        }
    return "########################################";
    }


 */
    // test with a more complex hashmap: key = DictionnaryKey, value=Encoded (cf Olvid)

    public String Printkey(HashMap<DictionaryKey, Encoded> privatekey) {
        System.out.println("######################################################");
        //convert the DictionaryKey format into int to use iterator() method
        Iterator<Integer> keySetIterator = int(privatekey.keySet()).iterator();
        while (keySetIterator.hasNext()) {
            Integer key = keySetIterator.next();
            System.out.println(key.toString() + " : " + privatekey.get(key).toString());    // display key and value, string formatted
        }
        return "########################################";
    }
}


