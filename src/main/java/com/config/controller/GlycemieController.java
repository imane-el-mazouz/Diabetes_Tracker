package com.config.controller;

import com.config.enums.Level;
import com.config.model.Conseil;
import com.config.model.Glycemie;
import com.config.service.GlycemieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping
public class GlycemieController {

    @Autowired
    private GlycemieService glycemieService;
    @Autowired
    private GlycemieService conseilService ;


    @GetMapping(value = "/glycemie")
    public String listGlycemies(ModelMap modelMap) {
        modelMap.addAttribute("listGlycemies", glycemieService.getAllGlycemies());
        return "registrations";
    }

    @GetMapping("/new")
    public String showNewGlycemieForm(Model model) {
        model.addAttribute("glycemie", new Glycemie());
        return "add";
    }

//    @PostMapping("/new")
//    public String saveGlycemie(@RequestParam("level") double levelValue,
//                               @RequestParam("date") String date) {
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
//        LocalDateTime dateTime = LocalDateTime.parse(date, formatter);
//        Level level = Level.fromValue(levelValue);
//        Glycemie glycemie = new Glycemie(dateTime, level);
//        glycemieService.saveGlycemie(glycemie);
//        return "redirect:/glycemie";
//    }
@PostMapping("/new")
public String saveGlycemie(@RequestParam("level") double levelValue,
                           @RequestParam("date") String date,
                           Model model) {
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
    LocalDateTime dateTime = LocalDateTime.parse(date, formatter);
    Level level = Level.fromValue(levelValue);
    Glycemie glycemie = new Glycemie(dateTime, level);
    glycemieService.saveGlycemie(glycemie);

    Conseil conseil = conseilService.getConseilByLevel(level);
    model.addAttribute("conseil", conseil);

    return "viewConseil";
}
    @GetMapping("/delete/{id}")
    public String deleteGlycemie(@PathVariable Long id) {
        glycemieService.deleteGlycemieById(id);
        return "redirect:/glycemie";
    }
}


