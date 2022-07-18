package co.grandcircus.GradingDatabase;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GradeController {
	@Autowired
	private GradeRepository repo;
	
	@RequestMapping("/")
	public String index() {
		return "redirect:/gradeList";
	}
	@RequestMapping("/gradeList")
	public String listGrades(Model model) {
		List<Grade> grades = repo.findAll();
		model.addAttribute("grades", grades);
		double scoreSum = 0;
		double totalSum = 0;
		for (Grade grade : grades) {
			scoreSum += grade.getScore();
			totalSum += grade.getTotal();
		}
		double percentTotal = (100 * scoreSum) / totalSum;
		model.addAttribute("percentTotal", percentTotal);
		return "homepage";
	}
	@RequestMapping("/addAGrade")
	public String showAddAGrade() {
		return "addAGrade";
	}
	@RequestMapping("/addGradeConfirmation")
	public String showConfirmation() {
		return "addGradeConfirmation";
	}
	@RequestMapping("/deleteGrade")
	public String gradeDelete(@RequestParam String id) {
		repo.deleteById(id);
		return "redirect:/gradeList";
	}
	@RequestMapping("/confirmDelete")
	public String gradeDeleteConfirm(@RequestParam String id, Model model) {
		Optional<Grade> optGrade = repo.findById(id);
		Grade grade = optGrade.get();
		model.addAttribute("grade", grade);
		return "confirmDelete";
	}
	
	@PostMapping("/addGradeConfirmation")
	public String showAddGradeConfirmation(@RequestParam String name, @RequestParam String type,
			@RequestParam double score, @RequestParam double total, Model model) {
		repo.save(new Grade(name, type, score, total));
		model.addAttribute("name", name);
		model.addAttribute("type", type);
		model.addAttribute("score", score);
		model.addAttribute("total", total);
		
		return "addGradeConfirmation";
	}
}
