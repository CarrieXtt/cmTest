package cm.controller;

import cm.service.CourseService;
import cm.vo.CourseVO;
import cm.vo.KlassVO;
import cm.vo.SeminarScoreVO;
import cm.vo.UserVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
@RequestMapping("/cm/student/course")
public class StudentCourseController {

    private CourseService courseService;

    UserVO student= UserController.userVO;

    ///////student course list get
    @RequestMapping(value = "",method= RequestMethod.GET)
    public String studentCourse(Model model){
        Map<CourseVO, KlassVO> maps=courseService.listCourseAndKlassByStudentId(student.getId());
        model.addAttribute("courseAndKlassList",maps);
        return "studentCourse";
    }

    ///////student course info post
    @RequestMapping(value = "/info",method = RequestMethod.POST)
    public String studentCourseInfo(long courseId,Model model){
        model.addAttribute("curCourse",courseService.getCourseById(courseId));
        return "student_course_info";
    }

    ///////student course score Map<RoundName,SeminarScore>
    @RequestMapping(value = "/score",method = RequestMethod.POST)
    public String studentScore(long courseId,long klassId,Model model){
        Map<String, SeminarScoreVO> maps=courseService.listScoreForStudent(courseId,klassId,student.getId());
        model.addAttribute("scoreDetails",maps);
        return "studentScore";
    }
}