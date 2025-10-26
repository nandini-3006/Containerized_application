package com.example.todo;



import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/students")
public class ModelController {

    private final SRepository sRepository;

    public ModelController(SRepository sRepository) {
        this.sRepository = sRepository;
    }

    // POST /students
    @PostMapping
    public Model addStudent(@RequestBody Model model) {
        return sRepository.save(model);
    }

    // GET /students
    @GetMapping
    public List<Model> getAllStudents() {
        return sRepository.findAll();
    }
}
