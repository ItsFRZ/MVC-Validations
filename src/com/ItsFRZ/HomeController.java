package com.ItsFRZ;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String HomePage() {
		
		return "HomePage";
	}
	
	@RequestMapping("/studentForm")
	public String getStudentForm(Model model) 
	{
		StudentModel studModel = new StudentModel();
		model.addAttribute("studentsData", studModel);
		return "studentForm";
	}
	
	@RequestMapping("/formData")
	public String showStudentForm(@Valid @ModelAttribute("studentsData") StudentModel studModel,
			BindingResult result) 
	{
		if (result.hasErrors()) 
		{
			return "studentForm";
		}else {
			return "StudentResult";	
		}
		
		
	}
	
	
}
