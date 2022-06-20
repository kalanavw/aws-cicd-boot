package com.example.awscicd.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Kalana_105476, 6/20/2022 7:15 AM
 */
@RestController
public class ConnectionTestController {
    @GetMapping
    private String testConnection(){
        return "Its working";
    }
}
