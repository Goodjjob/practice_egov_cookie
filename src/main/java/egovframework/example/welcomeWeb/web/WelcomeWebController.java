package egovframework.example.welcomeWeb.web;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.welcomeWeb.service.WelcomeWebService;

@Controller
public class WelcomeWebController {

	@Resource(name = "welcomeWebService")
	private WelcomeWebService welcomeWebService;
	
	@SuppressWarnings({ "rawtypes" })
	@RequestMapping(value = "/welcomeWeb.do")
	public String welcomeWeb(ModelMap model) throws Exception {

		List<Map> welcomeWebList = welcomeWebService.selectWelcomeWebServiceList();
		
		List<Map> pieChartList = welcomeWebService.selectPieChartList();
		
		model.addAttribute("welcomeWebList", 	welcomeWebList);
		model.addAttribute("pieChartList", 		pieChartList);
		
		return "welcomeWeb/welcomeWeb.tiles";
	}
}
