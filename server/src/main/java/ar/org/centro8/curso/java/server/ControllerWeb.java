package ar.org.centro8.curso.java.server;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerWeb {

    @GetMapping("calc")
    public String calc(){
        return "calc";
    }

    @GetMapping("calculadora")
    public String calculadora(){
        return "calculadora";
    }
}
