using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;

namespace _2601
{
public class Globefunc
{
public static async Task SendUsingAPIAsync()
{
    HttpClient client = new HttpClient();
    //Define the Required Variables
    string key = "RBXXlknUH";
    string user = "0547657085";
    string pass = "91198721";
    string sender = "Shark PC";
    string recipient = "0547657085";
    string msg = "Test Test Test";
    var values = new Dictionary<string, string>
    {
        { "key", key }, { "user", user },{ "pass", pass },
        { "sender", sender }, { "recipient", recipient },
       { "msg", msg }
    };
    var content = new FormUrlEncodedContent(values); //Encode the Data
    var response = await client.PostAsync("https://www.sms4free.co.il/ApiSMS/SendSMS", content);
    var responseString = await response.Content.ReadAsStringAsync();
    //Console.WriteLine(responseString); //Gives You How many Recipients the message was sent to
}
}
}