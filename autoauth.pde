import http.requests.*;

void makeRequest(){
  String url = "https://gateway1.iiti.ac.in:8003/index.php";
  PostRequest post = new PostRequest(url);
  post.addData("auth_user", "me220003085");
  post.addData("auth_pass", "9137730464");
  post.addData("auth_voucher", "");
  post.addData("redirurl", "http://www.gstatic.com/generate_204");
  post.addData("zone", "iitiauth");
  post.addData("accept", "Continue");
  
  post.addHeader("authority", "gateway1.iiti.ac.in:8003");
  post.addHeader("accept", "text/htmlapplication/xhtml+xmlapplication/xml;q=0.9image/avifimage/webpimage/apng*/*;q=0.8application/signed-exchange;v=b3;q=0.7");
  post.addHeader("accept-language", "en-USen;q=0.9");
  post.addHeader("cache-control", "max-age=0");
  post.addHeader("origin", "https://gateway1.iiti.ac.in:8003");
  post.addHeader("referer", "https://gateway1.iiti.ac.in:8003/index.php?zone=iitiauth&redirurl=http%3A%2F%2Fwww.gstatic.com%2Fgenerate_204");
  post.addHeader("sec-ch-ua", "\"Chromium\";v=\"110\", \"Not A(Brand\";v=\"24\", \"Google Chrome\";v=\"110\"");
  post.addHeader("sec-ch-ua-mobile", "?0");
  post.addHeader("sec-ch-ua-platform", "\"Windows\"");
  post.addHeader("sec-fetch-dest", "document");
  post.addHeader("sec-fetch-mode", "navigate");
  post.addHeader("sec-fetch-site", "same-origin");
  post.addHeader("sec-fetch-user", "?1");
  post.addHeader("upgrade-insecure-requests", "1");
  post.addHeader("user-agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36");
  
  post.send();
  println("Reponse Content: " + post.getContent());
  println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
}


void setup(){
  makeRequest();
}

void draw(){

}
