package com.synnlabz.curec;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;

public class Backgroundworker extends AsyncTask<HashMap<String,String>, Void, String> {
    Context context;
    MainActivity ParentM;
    Registration ParentR;
    Login ParentL;
    Activity_Phase2 ParentP;
    AlertDialog alertDialog;
    String type ="";
    Backgroundworker(MainActivity parent,Context ctx) {
        context = ctx;
        ParentM = parent;
    }
    Backgroundworker(Registration parent,Context ctx) {
        context = ctx;
        ParentR = parent;
    }
    Backgroundworker(Login parent,Context ctx) {
        context = ctx;
        ParentL = parent;
    }
    Backgroundworker(Activity_Phase2 parent,Context ctx) {
        context = ctx;
        ParentP = parent;
    }
    @Override
    protected String doInBackground(HashMap<String, String>... params) {
        HashMap<String, String> param = params[0];
        type = param.get("type");
        String login_url = "http://192.168.8.102/curec/PHP/mobile.php";
            try {
                URL url = new URL(login_url);
                HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                OutputStream outputStream = httpURLConnection.getOutputStream();
                BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                String post_data = "";
                for (String name: param.keySet()){
                    String key = name;
                    String value = param.get(name).toString();
                    post_data += URLEncoder.encode(key,"UTF-8")+"="+ URLEncoder.encode(value,"UTF-8")+"&";
                    //System.out.println(key + " " + value);
                }
                if (post_data.length() > 0) {
                    post_data = post_data.substring(0, post_data.length() - 1);
                }
                bufferedWriter.write(post_data);
                bufferedWriter.flush();
                bufferedWriter.close();
                outputStream.close();
                InputStream inputStream = httpURLConnection.getInputStream();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream,"iso-8859-1"));
                String result="";
                String line="";
                while((line = bufferedReader.readLine())!= null) {
                    result += line;
                }
                bufferedReader.close();
                inputStream.close();
                httpURLConnection.disconnect();
                return result;
            } catch (MalformedURLException e) {
                e.printStackTrace();
                Log.i("Error_test1",e.toString());
            } catch (IOException e) {
                e.printStackTrace();
                Log.i("Error_test2",e.toString());
            }catch (Exception e){
                Log.i("Error_test3",e.toString());
            }
        return null;
    }


    @Override
    protected void onPreExecute() {
        alertDialog = new AlertDialog.Builder(context).create();
        alertDialog.setTitle("Login Status");
    }

    @Override
    protected void onPostExecute(String result) {
        //alertDialog.setMessage(result);
        //alertDialog.show();
        //Integer temp = Integer.parseInt(result.replaceAll("[^\\d]",""));
        if(type.equals("login")){

            Integer temp = Integer.parseInt(result.replaceAll("[^\\d]",""));
            if(temp>0){
                Intent intent = new Intent(context,MainActivity.class);
                String Extra_text1 = String.valueOf(temp);
                intent.putExtra("Extra_text",Extra_text1);
                context.startActivity(intent);
            }else {
                String temp2 = result.replaceAll("[\\d]","");
                alertDialog.setMessage(temp2);
                alertDialog.show();
            }
        }

        if(type.equals("addMember")){
            alertDialog.setMessage(result);
            alertDialog.show();
        }

        if(type.equals("load_member_name")){
            //alertDialog.setMessage(result);
            //alertDialog.show();
            ParentM.displayName(result);
        }

        if(type.equals("addSymptoms")){
            //alertDialog.setMessage(result);
            //alertDialog.show();
            ParentP.displayResult(result);
        }

    }

    @Override
    protected void onProgressUpdate(Void... values) {
        super.onProgressUpdate(values);
    }

}
