package com.example.SpringDemo.Ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
	
	
		@RequestMapping("/")
	public String helloworld()
	{
		return "index";
	}
	
	/*@RequestMapping("/final")
	public String submit()
	{
		return "/final/final";
	}
	
	@RequestMapping("/schedule")
	public String zf()
	{
		System.out.println("schedule ");
		return "/input/schedule";
	}*/
	
	/*@RequestMapping(value = "/input/{page}", method = RequestMethod.GET)
    public String inputsHandler(@PathVariable("page") final String page) {
        System.out.println("Pages ");
        
        return "input/" + page;
    }*/
}
