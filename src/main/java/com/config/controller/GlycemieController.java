package com.config.controller;

import com.config.model.Glycemie;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;

@Controller
@RequestMapping("")
public class GlycemieController {
    @RequestMapping(value = "/glycemie", method = RequestMethod.GET)
    public String printHelloWorld(ModelMap modelMap){
        return "registrations";
    }


    @GetMapping("/new")
    public String showNewGlycemieForm(Model model) {
        model.addAttribute("glycemie", new Glycemie());
        return "add";
    }

    @PostMapping
    public String saveGlycemie(@ModelAttribute("glycemie") Glycemie glycemie, @RequestParam("levelValue") double levelValue) {
        glycemie.setDate(LocalDateTime.now());
        glycemie.setLevel(levelValue);
//        glycemieService.saveGlycemie(glycemie);
        return "registrations";
    }

    // Supprimer une lecture de glycémie
//    @GetMapping("/delete/{id}")
//    public String deleteGlycemie(@PathVariable Long id) {
//        glycemieService.deleteGlycemieById(id);
//        return "redirect:/glycemie";
//    }
}