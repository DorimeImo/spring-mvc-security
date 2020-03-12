package springmvcsecurity.controller;

import org.springframework.web.bind.annotation.GetMapping;

@org.springframework.stereotype.Controller
public class Controller {

    @GetMapping("/")
    public String home(){
        return "home";
    }

    @GetMapping("/leaders")
    public String leaders(){
        return "leaders";
    }

    @GetMapping("/system")
    public String system(){
        return "system";
    }
}
