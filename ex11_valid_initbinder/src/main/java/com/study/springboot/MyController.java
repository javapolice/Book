package com.study.springboot;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;

@Controller
public class MyController {

    @RequestMapping("/")
    public @ResponseBody String root() throws Exception{
        return "valid_initBinder (3)";
    }

    @RequestMapping("/insertForm")
    public String insert1(){

        return "createPage";

    }

    @RequestMapping("/create")
    public String insert2(@ModelAttribute("dto") @Valid ContentDto contentDto, BindingResult result){
        String page = "createDonePage";
        System.out.println(contentDto);

        //com.study.springBoot.ContentValidator validator = new com.study.springBoot.ContentValidator();
        //validator.validate(contentDto, result);
        if(result.hasErrors()){
            if(result.getFieldError("writer") != null){
                System.out.println("1:" + result.getFieldError("writer").getCode());
            }
            if(result.getFieldError("content") != null){
                System.out.println("2:" + result.getFieldError("content").getCode());
            }
            page = "createPage";
        }

        return page;
    }

    @InitBinder
    protected void initBinder(WebDataBinder binder){
        binder.setValidator(new ContentValidator());
    }
}
