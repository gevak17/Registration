package gevak.controller;

import gevak.controller.dto.GidrantDTO;
import gevak.dao.DaoAuth;
import gevak.entity.Gidrant;
import gevak.entity.User;
import gevak.service.GidrantService;
import gevak.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.Principal;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    UserService userService;

    @Autowired
    GidrantService gidrantService;

    @GetMapping("/")
    public String start() {
        return "welcome";
    }



    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/user")
    public String userPage(Model model) {
//        model.addAttribute("user", new User());
        User user = userService.findOne(DaoAuth.getUserId());
        System.out.println("User's id - "+DaoAuth.getUserId());
        System.out.println(user.getPidrozdil_id());
        return "user";
    }

    @GetMapping("/admin")
    public String adminPage(Model model) {
        model.addAttribute("allUser", userService.findAll());
        return "admin";
    }

//    @GetMapping("/findOneUser-{findId}")
//    public @ResponseBody User findOneUser(@PathVariable("findId") int findId) {
//        User user = userService.findOne(findId);
//        System.out.println("User id - "+findId);
//        if(DaoAuth.getUser()!=null){
//            System.out.println(DaoAuth.getUser());
//        }
//        return user;
//    }

//    @GetMapping("delete-{id}")
//    public String deleteUser(@PathVariable("id") int id) {
////        User user = userService.findOne(id);
//        System.out.println(id+"  - id");
////        model.addAttribute("Delete", userService.findOne(id));
//        userService.deleteOne(id);
//        System.out.println(userService.findOne(id).getSurname()+" was deleted");
//        return "redirect:/admin";
//    }

    //    @GetMapping("/registration")
//    public String registration() {
//        return "registration";
//    }


//    @PostMapping("/save")
//    public String save(@RequestParam String username,
//                       @RequestParam String password,
//                       @RequestParam String email,
//                       @RequestParam String surname,
//                       @RequestParam String name,
//                       @RequestParam int age,
//                       @RequestParam int pidrozdil_id) {
//        userService.save(username, password, email, surname, name, age, pidrozdil_id);
//        return "redirect:/";
//    }
//    @GetMapping("/allUser")
//    public String selectAllUser(Model model) {
//        model.addAttribute("allUser", userService.findAll());
//        return "allUser";
//    }

    @GetMapping("/getAllUsers")//REST request
    public @ResponseBody List<User> getAllUsers() {
        System.out.println("-------------!!!!!!!!!!!!!!!!!getAllUsers!!!!!!!!!!!!!!!!!-------------");
        return userService.findAll();
    }


//    @PostMapping("/saveGidrant")
//    public String saveGidrant(@RequestParam double lng,
//                              @RequestParam double lat,
//                              @RequestParam String street_txt,
//                              @RequestParam String bud,
//                              @RequestParam String zrazok,
//                              @RequestParam String diametr,
//                              @RequestParam String typ,
//                              @RequestParam int spravnyi,
//                              @RequestParam int vkazivnyk) {
//        Gidrant gidrant = new Gidrant(lng, lat, street_txt, bud, zrazok, diametr, typ, spravnyi, vkazivnyk);
//        gidrantService.save(gidrant);
//        return "redirect:/user";
//    }

    @GetMapping("/findOneGidrant-{id}")
    public @ResponseBody Gidrant findOneGidrant(@PathVariable("id") int id) {
        Gidrant gidrant = gidrantService.findOne(id);
        return gidrant;
    }

    @PostMapping("/editGidrant")
    public String editGidrant(@RequestParam int id,
                              @RequestParam double lng,
                              @RequestParam double lat,
                              @RequestParam String street_txt,
                              @RequestParam String bud,
                              @RequestParam String zrazok,
                              @RequestParam String diametr,
                              @RequestParam String typ,
                              @RequestParam int spravnyi,
                              @RequestParam int vkazivnyk) throws UnsupportedEncodingException {
        street_txt = new String(street_txt.getBytes("ISO-8859-1"),"UTF-8");
        zrazok = new String(zrazok.getBytes("ISO-8859-1"),"UTF-8");
        typ = new String(typ.getBytes("ISO-8859-1"),"UTF-8");
//        System.out.println("!!!!!!!_______________-----*********** street_txt  -  "+street_txt);
        Gidrant gidrant = new Gidrant(id, lng, lat, street_txt, bud, zrazok, diametr, typ, spravnyi, vkazivnyk);
//        System.out.println(gidrant.getStreet_txt() + " " + gidrant.getLat() + " " + gidrant.getLng());
        gidrantService.edit(gidrant);

        return "redirect:/user";
    }



}
//    @PostMapping("/editGidrant")
//    public String editGidrant(@ModelAttribute("gidrant") Gidrant gidrant) {
//        System.out.println("--------edit 1111111");
//        gidrantService.edit(gidrant);
//        System.out.println("--------edit 3333333");
//
//        return "redirect:/user";
//    }
//    @PostMapping("/editUser")
//    public String editUser(@ModelAttribute("user1") @Valid User user, BindingResult result,
//                           @RequestParam("ava") MultipartFile multipartFile) {
//
//        if (result.hasErrors()) {
//            return "edit";
//        }       //validator
//
//        if (multipartFile == null){
//
//            String realPath = System.getProperty("user.home") + File.separator + "images" + File.separator;
//            try {
//                multipartFile.transferTo(new File(realPath + multipartFile.getOriginalFilename()));
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//            user.setAvatar(File.separator + "avatar" + File.separator + multipartFile.getOriginalFilename());
//            user.setAvatar(user.getAvatar());
//
//        }else {
//            System.out.println("Edit user it happened!");
//        }
//
//
//
//
//        userService.edit(user);
////        return "index";
//        return "welcome";
//    }
//}
