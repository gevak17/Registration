package gevak.controller;

import gevak.entity.Gidrant;
import gevak.entity.User;
import gevak.service.GidrantService;
import gevak.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    UserService userService;

    @Autowired
    GidrantService gidrantService;

    @GetMapping("/")
    public String start(){
        return "welcome";
    }

    @GetMapping("/registration")
    public String registration(){
//        List<User> all = userService.findAll();
//        for (User u : all) {
//            u.setPidrozdil_id(1);
//        }
        return "registration";
    }

    @PostMapping("/save")
        public String save(@RequestParam String username,
                           @RequestParam String password,
                           @RequestParam String email,
                           @RequestParam String surname,
                           @RequestParam String name,
                           @RequestParam int age,
                           @RequestParam int pidrozdil_id){
            userService.save(username, password, email, surname, name, age, pidrozdil_id);
            return "redirect:/";
    }

    @GetMapping("/login")
        public String login(){
        return "login";
    }

    @GetMapping("/user")
        public String userPage(Model model){
        model.addAttribute("AllGidrants", gidrantService.findAll());
        return "user";
    }

    @GetMapping("/allUser")
    public String selectAllUser(Model model){
        model.addAttribute("allUser", userService.findAll());
        return "allUser";
    }

    @GetMapping("/karta")
        public String karta(){
            return "karta";
    }





//    @PostMapping("/asd")
//    public String asd(){
//        List<User> all = userService.findAll();
//        for (User u : all) {
//            u.setPidrozdil_id(1);
//        }
//        return "redirect:/";
//    }

    //????????????????????????????????????????????????????????????????
    @DeleteMapping("/delete-{id}")
    public String deleteOne(@PathVariable("id") int id, Model model){
        User user = userService.findOne(id);
        String name = user.getName()+" "+user.getSurname();
        userService.deleteOne(id);
        System.out.println("!!!__ User "+name+" had be deleted__!!!");
        return "redirect:/allUser";
    }

    @PostMapping("/saveGidrant")
    public String saveGidrant(@RequestParam String address,
                              @RequestParam int house,
                              @RequestParam String zrazok,
                              @RequestParam String type,
                              @RequestParam int diametr,
                              @RequestParam String spravnist,
                              @RequestParam String vkazivnik,
                              @RequestParam double lng,
                              @RequestParam double lat) {
        Gidrant gidrant = new Gidrant();
//        int id = user.getId();
//        gidrant.set
        gidrantService.save(gidrant);
        return "redirect:/user";
    }



//    @GetMapping("admin")
//        public String adminPage(Model model){
////        model.addAttribute("user", principal.getName());
//        model.addAttribute("allUser", userService.findAll());
//        return "admin";
//    }
}
