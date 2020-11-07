package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Train;
import com.cdac.dto.User;
import com.cdac.service.TrainService;

@Controller
public class TrainController {
	
	@Autowired
	private TrainService trainService;
	
	@RequestMapping(value = "/prep_train_add_form.htm",method = RequestMethod.GET)
	public String prepTrainAddForm(ModelMap map) {
		map.put("train", new Train());
		return "train_add_form";
	}
	
	@RequestMapping(value = "/train_add.htm",method = RequestMethod.POST)
	public String trainAdd(Train train,HttpSession session) {
		int userId = ((User)session.getAttribute("user")).getUserId();
		train.setUserId(userId); 
		trainService.addTrain(train);
		return "home";
	}
	
	@RequestMapping(value = "/train_list.htm",method = RequestMethod.GET)
	public String allTrains(ModelMap map,HttpSession session) {
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<Train> li = trainService.selectAll(userId);
		map.put("trnList", li);
		return "train_list";
	}
	
	@RequestMapping(value = "/train_delete.htm",method = RequestMethod.GET)
	public String trainDelete(@RequestParam int trainId,ModelMap map,HttpSession session) {
		
		trainService.removeTrain(trainId); 
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<Train> li = trainService.selectAll(userId);
		map.put("trnList", li);
		return "train_list";
	}
	
	@RequestMapping(value = "/train_update_form.htm",method = RequestMethod.GET)
	public String trainUpdateForm(@RequestParam int trainId,ModelMap map) {
		
		Train trn = trainService.findTrain(trainId);
		map.put("train", trn);
		
		return "train_update_form";
	}
	
	@RequestMapping(value = "/train_update.htm",method = RequestMethod.POST)
	public String trainUpdate(Train train,ModelMap map,HttpSession session) {
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		train.setUserId(userId);
		trainService.modifyTrain(train);
			
		List<Train> li = trainService.selectAll(userId);
		map.put("trnList", li);
		return "train_list";
	}
	
}
