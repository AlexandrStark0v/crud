package MyCRUD.controller;

import MyCRUD.model.User;
import MyCRUD.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public String showAllUsers(Model model) {
        model.addAttribute("users", userService.getAllUsers());
        return "users";
    }

    @PostMapping("/add")
    public String addUser(@RequestParam("name") String name, @RequestParam("email") String email) {
        User user = new User();
        user.setName(name);
        user.setEmail(email);
        userService.saveUser(user);
        return "redirect:/";
    }

    @PostMapping("/update")
    public String updateUser(@RequestParam("id") Long id, @RequestParam("name") String name, @RequestParam("email") String email) {
        User user = new User();
        user.setId(id);
        user.setName(name);
        user.setEmail(email);
        userService.updateUser(user);
        return "redirect:/";
    }

    @PostMapping("/delete")
    public String deleteUser(@RequestParam("id") Long id) {
        userService.deleteUser(id);
        return "redirect:/";
    }

}
