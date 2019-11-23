package com.qfedu.ssm.system;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class viewController {

    @RequestMapping("/")
    public String list() {
        return "add";
    }

}
