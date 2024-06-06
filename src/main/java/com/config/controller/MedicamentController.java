package com.config.controller;


import com.config.service.MedicamentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class MedicamentController {
    @Autowired
    private MedicamentService medicamentService ;


}
