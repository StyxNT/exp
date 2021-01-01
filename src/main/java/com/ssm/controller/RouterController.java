package com.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RouterController {

    @RequestMapping("/toVolunteer")
    public String toMain()
    {
        return "volunteerPage";
    }

    @RequestMapping("/toUpdateUserInfo")
    public String toLeft()
    {
        return "updateUserInfo";
    }

    @RequestMapping("/toTeacher")
    public String toTeacherPage()
    {
        return "teacherPage";
    }
    @RequestMapping("/toAdmin")
    public String toAdminPage()
    {
        return "adminPage";
    }
    @RequestMapping("/toShowAllUsers")
    public String toShowAllUsers()
    {
        return "showAllUsers";
    }
    @RequestMapping("/toUpdateUserAdmin")
    public String toUpdateUserAdmin()
    {
        return "updateUserAdmin";
    }
}
