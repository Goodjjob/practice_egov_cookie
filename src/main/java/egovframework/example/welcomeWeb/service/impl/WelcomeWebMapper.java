package egovframework.example.welcomeWeb.service.impl;

import java.util.List;
import java.util.Map;

import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("welcomeWebMapper")
public interface WelcomeWebMapper {

	@SuppressWarnings("rawtypes")
	List<Map> selectWelcomeWebServiceList() throws Exception;
	
	@SuppressWarnings("rawtypes")
	List<Map> selectPieChartList() throws Exception;
}
