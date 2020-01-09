package ru.voskhod.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
    // a controller method to show the initial HTML form

    @RequestMapping("/showForm")
    public String showForm() {
        return "helloworld-form";
    }

    // a controller method to process the form
    @RequestMapping("/processForm")
    public String processForm() {
        return "helloworld";
    }

    // new controller method to handle shouting
    @RequestMapping("/processFormVersionTwo")
    public String letsShoutDude(HttpServletRequest request, Model model) {

        // read the request parameter from HTML form
        String name = request.getParameter("studentName");

        // convert data to uppercase
        name = name.toUpperCase();

        // create the message
        String result = "Yo! " + name;

        // add message to the model
        model.addAttribute("message", result);

        return "helloworld";
    }

    @RequestMapping("/processFormVersionThree")
    public String processFormVersionThree(@RequestParam("studentName") String name, Model model) {

        // convert data to uppercase
        name = name.toUpperCase();

        // create the message
        String result = "Hey from v3! " + name;

        // add message to the model
        model.addAttribute("message", result);

        return "helloworld";
    }

}
