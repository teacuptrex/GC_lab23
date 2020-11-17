package co.grandcircus.lab23;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class GradeController {
	
	@Autowired
	private GradeRepository repo;
	
	@GetMapping("/")
	public String home(Model model) {
		List<Grade> grades = repo.findAll();

		model.addAttribute("grades",grades);
		return "index";
	}
	
	@GetMapping("/addGrade")
	public String addGrade() {
		return "gradeForm";
	}
	
	@PostMapping("/addGrade")
	public String addGradeConfirm(Grade grade, Model model) {
		repo.save(grade);
		model.addAttribute("grade",grade);
		return "gradeConfirm";
	}
	
	@GetMapping("/delete")
	public String delete(long id, Model model) {
		Grade grade = repo.findById(id).get();
		model.addAttribute("grade",grade);
		return "gradeDelete";
	}
	
	@GetMapping("/reallydelete")
	public String reallyDelete(long id) {
		repo.deleteById(id);
		return "redirect:/ ";
	}

}
