package com.rakesh.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.rakesh.services.ReportService;

import net.sf.jasperreports.engine.JRException;

@RestController
public class ReportController {

	
	@Autowired
	private ReportService rserv;
	
	@GetMapping(value="/report")
	public void generateReport(HttpServletResponse response) throws JRException, IOException {
		rserv.expertReport(response);
	}
}
