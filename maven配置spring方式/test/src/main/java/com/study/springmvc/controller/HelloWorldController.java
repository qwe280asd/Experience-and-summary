package com.study.springmvc.controller;


import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@org.springframework.stereotype.Controller
public class HelloWorldController implements Controller {


    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        // 创建模型
        ModelAndView modelAndView = new ModelAndView();

        // 向模型中添加数据
        modelAndView.addObject("message", "Hello World");

        // 返回逻辑视图
        modelAndView.setViewName("/index.jsp");
        return modelAndView;
    }
}

