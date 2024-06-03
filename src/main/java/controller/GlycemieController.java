package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import service.GlycemieService;

@Controller
@RequestMapping("")
public class GlycemieController {

    private final GlycemieService glycemieService ;



    @Autowired
    public GlycemieController(GlycemieService glycemieService) {
        this.glycemieService = glycemieService ;
    }

//    @GetMapping("")



}
