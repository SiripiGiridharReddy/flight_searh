package com.example.flightsearch.entiry;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import lombok.Data;

@Data
@Entity
@Table(name = "flight")
public class Flight implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int dupName;
	
	@Size(min = 1, message = "sourceCity is required")
	private String sourceCity;
	@Size(min = 1, message = "destinationCity is required")
	private String destinationCity;
	@Size(min = 1, message = "travelDate is required")
	private String travelDate;
	private String returnDate;

	private String flightNumber;
	private String airelineNumber;
	private String departureTime;
	private String arivalTime;
	private String noOfStops;
	private String ticketPrice;

}
