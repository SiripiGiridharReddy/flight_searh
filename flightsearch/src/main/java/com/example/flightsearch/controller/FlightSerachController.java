package com.example.flightsearch.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.flightsearch.entiry.Flight;
import com.example.flightsearch.repo.FlightSearchRepository;

@Controller
public class FlightSerachController {

	
	@Autowired
	private FlightSearchRepository repositroy;
	@RequestMapping("/")
	public String home() {
		return "search";
	}
	@RequestMapping("/flyreg")
	public String registration() {
		return "registration";
	}

	/*
	 * , @RequestParam(value = "sourceCity") String sourceCity,
	 * 
	 * @RequestParam(value = "destinationCity") String destinationCity,
	 * 
	 * @RequestParam(value = "travelDate", required = false) String travelDate,
	 * 
	 * @RequestParam(value = "returnDate", required = false) String returnDate
	 */
	@RequestMapping("/searchflight")
	public String searchflight(@Valid @ModelAttribute("flight")Flight f, BindingResult br,ModelMap model,HttpSession httpSession ) {
		
		System.out.println(f);
		if(br.hasErrors()) {
			return "search";
		}
	
		String sourceCity = f.getSourceCity();
		String destinationCity = f.getDestinationCity();
		String travelDate = f.getTravelDate();
		String FormatedTravelDate = travelDate.replace("-", "");
		System.out.println(FormatedTravelDate);
		List<Flight> findSearchFlights = repositroy.findSearchFlights(sourceCity, destinationCity, FormatedTravelDate);
	System.out.println(findSearchFlights);	
		model.addAttribute("listOfFlights", findSearchFlights);
		httpSession.setAttribute("allFlights", findSearchFlights);
		return "search";
	}
	@PostMapping("/flightregistraion")
	public String bugRegistration(@ModelAttribute("flightreg") Flight flight,ModelMap model) {
		
		String travelDate = flight.getTravelDate();
		String replace = travelDate.replace("-", "");
		flight.setTravelDate(replace);
		repositroy.save(flight);
		model.addAttribute("regsucces", "Sucessfully Registerd");
		return "registration";
		
	}

}
