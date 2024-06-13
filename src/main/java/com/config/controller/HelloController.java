package com.config.controller;

import com.config.model.Glycemie;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HelloController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String printHelloWorld(ModelMap modelMap){
//        modelMap.addAttribute("message",
//                "Hello World and Welcome to Spring MVC!");

        return "Home";
    }

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public String print(ModelMap modelMap){
//        modelMap.addAttribute("message",
//                "Hello World and Welcome to Spring MVC!");

        return "contact";
    }


//    @GetMapping(value = "/search")
//    public String search(@RequestParam("level") double levelValue, ModelMap modelMap) {
//        Level level = Level.fromValue(levelValue);
//        List<Glycemie> glycemies = glycemieService.findGlycemiesByLevel(level);
//        modelMap.addAttribute("listGlycemies", glycemies);
//        return "list";
//    }


//    @GetMapping(value = /search)
//    public String search(@RequestParam("glycemie") Long glycemie , ModelMap modelMap){
//    modelMap.addAttribute("glycemie",glycemieService.findByGlycemie(glycemie))
//        return ;
//    }


//   <form action="${pageContext.request.contextPath}/search" method="get">
//        <label for="level">Niveau de glycémie :</label>
//        <input type="text" id="level" name="level">
//        <button type="submit">Rechercher</button>
//    </form>


//        <form action="search" method="get">
//        <label for="date">Date :</label>
//        <input type="text" id="date" name="date" placeholder="yyyy-MM-dd">
//
//        <label for="level">Niveau de glycémie :</label>
//        <input type="text" id="level" name="level">
//
//        <button type="submit">Rechercher</button>
//    </form>


}
