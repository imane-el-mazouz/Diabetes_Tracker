package com.config.controller;

import com.config.enums.Level;
import com.config.model.Conseil;
import com.config.model.Glycemie;
import com.config.model.Medicament;
import com.config.service.ConseilService;
import com.config.service.GlycemieService;
import com.config.service.MedicamentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping
public class GlycemieController {

    @Autowired
    private GlycemieService glycemieService;

    @Autowired
    private ConseilService conseilService;
    @Autowired
    private MedicamentService medicamentService ;

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
//                               @RequestParam("date") String date,
//                               Model model) {
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
//        LocalDateTime dateTime = LocalDateTime.parse(date, formatter);
//        Level level = Level.fromValue(levelValue);
//        Glycemie glycemie = new Glycemie(dateTime, level);
//        glycemieService.saveGlycemie(glycemie);
//
//        Conseil conseil = conseilService.getConseilByLevel(level);
//        model.addAttribute("conseil", conseil);
//
//        return "viewConseil";
//    }
//@PostMapping("/new")
//public String saveGlycemie(@RequestParam("level") double levelValue,
//                           @RequestParam("date") String date,
//                           Model model) {
//    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
//    LocalDateTime dateTime = LocalDateTime.parse(date, formatter);
//    Level level = Level.fromValue(levelValue);
//    Glycemie glycemie = new Glycemie(dateTime, level);
//    glycemieService.saveGlycemie(glycemie);
//
//    Conseil conseil = conseilService.getConseilByLevel(level);
//    model.addAttribute("conseil", conseil);
//
//    List<Medicament> medicaments = medicamentService.getMedicamentsByLevel(level);
//    model.addAttribute("medicaments", medicaments);
//
//    return "viewConseil";
//}


//@PostMapping("/new")
//public String saveGlycemie(@RequestParam("level") double levelValue,
//                           @RequestParam("date") String date,
//                           Model model) {
//    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
//    LocalDateTime dateTime = LocalDateTime.parse(date, formatter);
//    Level level = Level.fromValue(levelValue);
//    Glycemie glycemie = new Glycemie(dateTime, level);
//    glycemieService.saveGlycemie(glycemie);
//
//    Conseil conseil = conseilService.getConseilByLevel(level);
//    model.addAttribute("conseil", conseil);
//
//    List<Medicament> medicaments = medicamentService.getMedicamentsByLevel(level);
//    model.addAttribute("medicaments", medicaments);
//
//    return "viewConseil";
//}

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

        List<Medicament> medicaments = medicamentService.getMedicamentsByLevel(level);
        if (medicaments == null || medicaments.isEmpty()) {
            medicaments = medicamentService.getDefaultMedicamentsByLevel(level);
        }
        model.addAttribute("medicaments", medicaments);

        return "viewConseil";
    }

    @GetMapping("/delete/{id}")
    public String deleteGlycemie(@PathVariable Long id) {
        glycemieService.deleteGlycemieById(id);
        return "redirect:/glycemie";
    }
    @GetMapping(value = "/chart")
    public String getChartData(@RequestParam("view") String viewType, Model model) {
        List<Glycemie> glycemies;

        if ("hourly".equals(viewType)) {
            glycemies = glycemieService.findHourlyGlycemiaData();
        } else {
            glycemies = new ArrayList<>();
        }

        model.addAttribute("listGlycemies", glycemies);
        model.addAttribute("viewType", viewType);
        return "viewConseil";
    }
}
