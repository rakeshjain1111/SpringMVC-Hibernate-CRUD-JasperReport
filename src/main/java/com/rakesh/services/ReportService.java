package com.rakesh.services;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import com.rakesh.dao.StudentDAO;
import com.rakesh.model.Student;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
import net.sf.jasperreports.export.SimplePdfExporterConfiguration;
import net.sf.jasperreports.export.SimplePdfReportConfiguration;

@Service
public class ReportService {

	@Autowired
	private StudentDAO sdao;
	//private JasperReport report;
	
	public void expertReport(HttpServletResponse response) throws JRException, IOException {
		
		
		
		String path="C:\\Users\\hp\\Desktop\\Report";
		List<Student> students= sdao.getAllStudent();
		File file=ResourceUtils.getFile("classpath:allstudents.jrxml");
		JasperReport jasperReport=JasperCompileManager.compileReport(file.getAbsolutePath());
		
	//	JasperReport jasperReport =getReport();
		JRBeanCollectionDataSource dataSource =new JRBeanCollectionDataSource(students);
		
		Map<String,Object> parameters = new HashMap<>();
	
		parameters.put("createdBy", "Rakesh Jain");
		JasperPrint jasperPrint=JasperFillManager.fillReport(jasperReport, parameters,dataSource);
		
		JRPdfExporter pdfExporter=new JRPdfExporter();
		pdfExporter.setExporterInput(new SimpleExporterInput(jasperPrint));
		ByteArrayOutputStream pdfReportStream= new ByteArrayOutputStream();
		pdfExporter.setExporterOutput(new SimpleOutputStreamExporterOutput(pdfReportStream));
		pdfExporter.exportReport();
		
		response.setContentType("application/pdf");
		response.setHeader("content-length", String.valueOf(pdfReportStream.size()));
		response.setHeader("content-Discription", "inline; fileName=jasper.pdf");
		
		
		OutputStream responseOutputStream =response.getOutputStream();
		responseOutputStream.write(pdfReportStream.toByteArray());
		responseOutputStream.close();
		pdfReportStream.close();
		
		/*if(reportFormat.equalsIgnoreCase("html")) {
			JasperExportManager.exportReportToHtmlFile(jasperPrint,path +"\\student.html");
		}
		if(reportFormat.equalsIgnoreCase("pdf")) {
			JasperExportManager.exportReportToPdfFile(jasperPrint,path+"\\student.pdf");
   
          
		}
		return "report generated in path";*/
	}
	
	
	public void exportStudentReport(HttpServletResponse response, Integer id) throws JRException, IOException {
		
		String path="C:\\Users\\hp\\Desktop\\Report";
		
		Student student=sdao.getStudent(id);
		System.out.println(student);
		File file=ResourceUtils.getFile("classpath:studentDetails.jrxml");
		JasperReport jasperReport=JasperCompileManager.compileReport(file.getAbsolutePath());
		
		ArrayList<Map<String,Object>> list =new ArrayList<>();
		Map<String,Object> para = new HashMap<>();
		para.put("created by","rakesh Jain");
	    para.put("id", student.getId());
	    para.put("name", student.getName());
	    para.put("address", student.getAddress());
	    para.put("email", student.getEmail());
	    para.put("contact", student.getContact());
	    
	    list.add(para);
	    JRBeanCollectionDataSource dataSource =new JRBeanCollectionDataSource(list);
		JasperPrint jasperPrint=JasperFillManager.fillReport(jasperReport, para,dataSource);
		  
		JRPdfExporter pdfExporter=new JRPdfExporter();
		pdfExporter.setExporterInput(new SimpleExporterInput(jasperPrint));
		ByteArrayOutputStream pdfReportStream= new ByteArrayOutputStream();
		pdfExporter.setExporterOutput(new SimpleOutputStreamExporterOutput(pdfReportStream));
		pdfExporter.exportReport();
		
		response.setContentType("application/pdf");
		response.setHeader("content-length", String.valueOf(pdfReportStream.size()));
		response.setHeader("content-Discription", "inline; fileName=jasper.pdf");
		
		
		OutputStream responseOutputStream =response.getOutputStream();
		responseOutputStream.write(pdfReportStream.toByteArray());
		responseOutputStream.close();
		pdfReportStream.close();
			
			//JasperExportManager.exportReportToPdfFile(jasperPrint,path+"\\studentReport.pdf");
             
			
          
		}
	
//		/*
//		 * public JasperReport getReport() throws JRException { if (report == null)
//		 * {//compile only once lazily InputStream stream =
//		 * getClass().getResourceAsStream("/allstudents.jrxml"); report =
//		 * JasperCompileManager.compileReport(stream); } return report; }
//		 */
	
	}
	