package com.qfedu.ssm.view;


import com.qfedu.ssm.service.IDocService;
import com.qfedu.ssm.service.bo.Document;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/doc")
public class DocController {

    private static final Logger logger = LogManager.getLogger(DocController.class);

    @Autowired
    private IDocService docService;


    @RequestMapping("/add")
    public String insert(Document document) {


        logger.info("++++++++++++++++" +document);

        docService.insert(document);

        return "forward:list";

    }
    @RequestMapping("/getId")
    public String getId(Integer id,Model model,HttpSession session){

        Document id1 = docService.getId(id);
        model.addAttribute("id1",id1);
        session.setAttribute("id" ,id);
        return "modify";
    }

    @RequestMapping("/update")
    public String update(Document document) {
        System.out.println(document.getId());
        docService.update(document);

        return "forward:list";
    }

    @RequestMapping("/delete")
    public String delete(Integer id) {
        docService.delete(id);
        return "forward:list";
    }

    @RequestMapping("/list")
    public String select(Model model) {
        List<Document> list = docService.list();

        model.addAttribute("list",list);

        return "list";
    }



}
