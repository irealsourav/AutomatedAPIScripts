# AutomatedAPIScripts

I have used Karate as API automation framework and Junit5 to write this project.Karate is a BDD based famework where one can write java and JS code. It Also allow Java codes to be written inside of a feature file.For this project I have created 7 feature files which total contains 20 scenarios.I havetried to cover most of the scenarios. I chose this framework just to create the framework very quickly with a report as well . I have used **match** to do all the response validation.I have kept all the code inside src/test/java folder.
To run it :: just install java and maven, download this code to local machine and go to the root of this folder and open console, then type :: mvn test.
Now, it will download all the dependency and run the test.After successful run , one can easily view the report :: At the end of the console there will be a message 
to view the report in the html format .Just copy and paste to view the report.
Example ::
![image](https://user-images.githubusercontent.com/36536191/117589401-877fb080-b129-11eb-9a06-209b021684a5.png)

**Question 2::**
I found few issues  ::
1. No API versioning is present
2. Response header of Content type is text/html instead of application/json (though I added it in the request header)
3. Proper response code and proper response body is not present
4. When we are setting a name, brightness or color PUT o PATCH method should be used instead of POST which updates the whole data
5. Cannot connect to more than one device 

**Question 3::**
Another testing technique could be :: Contract testing .
