package com.example.flightsearch.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.flightsearch.entiry.Flight;

public interface FlightSearchRepository  extends JpaRepository<Flight, Integer>{

	@Query(value = "Select *from flight where source_city= ?1 and destination_city=?2 and travel_date=?3", nativeQuery = true)
	List<Flight> findSearchFlights(String soruceCity, String destnationCity, String travelDate);
}
