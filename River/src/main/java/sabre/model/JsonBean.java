package sabre.model;

import java.util.List;

public class JsonBean {
	@Override
	public String toString() {
		return "JsonBean [OTA_AirLowFareSearchRS=" + OTA_AirLowFareSearchRS + ", Links=" + Links + "]";
	}

	public oTA_AirLowFareSearchRS getOTA_AirLowFareSearchRS() {
		return OTA_AirLowFareSearchRS;
	}

	public void setOTA_AirLowFareSearchRS(oTA_AirLowFareSearchRS oTA_AirLowFareSearchRS) {
		OTA_AirLowFareSearchRS = oTA_AirLowFareSearchRS;
	}

	public List<links> getLinks() {
		return Links;
	}

	public void setLinks(List<links> links) {
		Links = links;
	}

	//兩大主欄位	
	public oTA_AirLowFareSearchRS OTA_AirLowFareSearchRS;
	public List<links> Links;
	
	//OTA_AirLowFareSearchRS欄位，用static class
	public static class oTA_AirLowFareSearchRS{
		@Override
		public String toString() {
			return "oTA_AirLowFareSearchRS [PricedItinCount=" + PricedItinCount + ", BrandedOneWayItinCount="
					+ BrandedOneWayItinCount + ", SimpleOneWayItinCount=" + SimpleOneWayItinCount
					+ ", DepartedItinCount=" + DepartedItinCount + ", SoldOutItinCount=" + SoldOutItinCount
					+ ", AvailableItinCount=" + AvailableItinCount + ", Version=" + Version + ", Success=" + Success
					+ ", Warnings=" + Warnings + ", PricedItineraries=" + PricedItineraries + ", TPA_Extensions="
					+ TPA_Extensions + "]";
		}
		public Integer getPricedItinCount() {
			return PricedItinCount;
		}
		public void setPricedItinCount(Integer pricedItinCount) {
			PricedItinCount = pricedItinCount;
		}
		public Integer getBrandedOneWayItinCount() {
			return BrandedOneWayItinCount;
		}
		public void setBrandedOneWayItinCount(Integer brandedOneWayItinCount) {
			BrandedOneWayItinCount = brandedOneWayItinCount;
		}
		public Integer getSimpleOneWayItinCount() {
			return SimpleOneWayItinCount;
		}
		public void setSimpleOneWayItinCount(Integer simpleOneWayItinCount) {
			SimpleOneWayItinCount = simpleOneWayItinCount;
		}
		public Integer getDepartedItinCount() {
			return DepartedItinCount;
		}
		public void setDepartedItinCount(Integer departedItinCount) {
			DepartedItinCount = departedItinCount;
		}
		public Integer getSoldOutItinCount() {
			return SoldOutItinCount;
		}
		public void setSoldOutItinCount(Integer soldOutItinCount) {
			SoldOutItinCount = soldOutItinCount;
		}
		public Integer getAvailableItinCount() {
			return AvailableItinCount;
		}
		public void setAvailableItinCount(Integer availableItinCount) {
			AvailableItinCount = availableItinCount;
		}
		public String getVersion() {
			return Version;
		}
		public void setVersion(String version) {
			Version = version;
		}
		public success getSuccess() {
			return Success;
		}
		public void setSuccess(success success) {
			Success = success;
		}
		public warnings getWarnings() {
			return Warnings;
		}
		public void setWarnings(warnings warnings) {
			Warnings = warnings;
		}
		public pricedItineraries getPricedItineraries() {
			return PricedItineraries;
		}
		public void setPricedItineraries(pricedItineraries pricedItineraries) {
			PricedItineraries = pricedItineraries;
		}
		public tPA_Extensions getTPA_Extensions() {
			return TPA_Extensions;
		}
		public void setTPA_Extensions(tPA_Extensions tPA_Extensions) {
			TPA_Extensions = tPA_Extensions;
		}
		public Integer PricedItinCount;
		public Integer BrandedOneWayItinCount;
		public Integer SimpleOneWayItinCount;
		public Integer DepartedItinCount;
		public Integer SoldOutItinCount;
		public Integer AvailableItinCount;
		public String Version;
		public success Success;
		public static class success{
			
		}
		
	//Warnings次欄位
		public warnings Warnings;
		public static class warnings{
			public List<warning> getWarning() {
				return Warning;
			}
			public void setWarning(List<warning> warning) {
				Warning = warning;
			}
			//内部嵌套的用[]括起来的部分是一個List
			public List<warning> Warning;
			public static class warning {
			    @Override
				public String toString() {
					return "warning [Type=" + Type + ", ShortText=" + ShortText + ", Code=" + Code + ", content="
							+ content + ", MessageClass=" + MessageClass + "]";
				}
				public String getType() {
					return Type;
				}
				public void setType(String type) {
					Type = type;
				}
				public String getShortText() {
					return ShortText;
				}
				public void setShortText(String shortText) {
					ShortText = shortText;
				}
				public String getCode() {
					return Code;
				}
				public void setCode(String code) {
					Code = code;
				}
				public String getContent() {
					return content;
				}
				public void setContent(String content) {
					this.content = content;
				}
				public String getMessageClass() {
					return MessageClass;
				}
				public void setMessageClass(String messageClass) {
					MessageClass = messageClass;
				}
				public String Type;
			    public String ShortText;
			    public String Code;
			    public String content;
			    public String MessageClass;
			    				
			   }
		}
		
	//PricedItineraries次欄位
		public pricedItineraries PricedItineraries;
		public static class pricedItineraries{
			@Override
			public String toString() {
				return "pricedItineraries [PricedItinerary=" + PricedItinerary + "]";
			}
			public List<pricedItinerary> getPricedItinerary() {
				return PricedItinerary;
			}
			public void setPricedItinerary(List<pricedItinerary> pricedItinerary) {
				PricedItinerary = pricedItinerary;
			}
			public List<pricedItinerary> PricedItinerary;
			public static class pricedItinerary {
				@Override
				public String toString() {
					return "pricedItinerary [SequenceNumber=" + SequenceNumber + ", AirItinerary=" + AirItinerary
							+ ", AirItineraryPricingInfo=" + AirItineraryPricingInfo + "]";
				}
				public Integer getSequenceNumber() {
					return SequenceNumber;
				}
				public void setSequenceNumber(Integer sequenceNumber) {
					SequenceNumber = sequenceNumber;
				}
				public airItinerary getAirItinerary() {
					return AirItinerary;
				}
				public void setAirItinerary(airItinerary airItinerary) {
					AirItinerary = airItinerary;
				}
				public List<airItineraryPricingInfo> getAirItineraryPricingInfo() {
					return AirItineraryPricingInfo;
				}
				public void setAirItineraryPricingInfo(List<airItineraryPricingInfo> airItineraryPricingInfo) {
					AirItineraryPricingInfo = airItineraryPricingInfo;
				}
				public Integer SequenceNumber;
				public airItinerary AirItinerary;
				public static class airItinerary{
					public String getDirectionInd() {
						return DirectionInd;
					}
					public void setDirectionInd(String directionInd) {
						DirectionInd = directionInd;
					}
					public originDestinationOptions getOriginDestinationOptions() {
						return OriginDestinationOptions;
					}
					public void setOriginDestinationOptions(originDestinationOptions originDestinationOptions) {
						OriginDestinationOptions = originDestinationOptions;
					}
					public String DirectionInd;
					public originDestinationOptions OriginDestinationOptions;
					public static class originDestinationOptions{
						public List<originDestinationOption> getOriginDestinationOption() {
							return OriginDestinationOption;
						}
						public void setOriginDestinationOption(List<originDestinationOption> originDestinationOption) {
							OriginDestinationOption = originDestinationOption;
						}
						public List<originDestinationOption> OriginDestinationOption;
						public static class originDestinationOption {
							public Integer getElapsedTime() {
								return ElapsedTime;
							}
							public void setElapsedTime(Integer elapsedTime) {
								ElapsedTime = elapsedTime;
							}
							public List<flightSegment> getFlightSegment() {
								return FlightSegment;
							}
							public void setFlightSegment(List<flightSegment> flightSegment) {
								FlightSegment = flightSegment;
							}
							public Integer ElapsedTime;
							public List<flightSegment> FlightSegment;
							public static class flightSegment{
								public String getDepartureDateTime() {
									return DepartureDateTime;
								}
								public void setDepartureDateTime(String departureDateTime) {
									DepartureDateTime = departureDateTime;
								}
								public String getArrivalDateTime() {
									return ArrivalDateTime;
								}
								public void setArrivalDateTime(String arrivalDateTime) {
									ArrivalDateTime = arrivalDateTime;
								}
								public Integer getStopQuantity() {
									return StopQuantity;
								}
								public void setStopQuantity(Integer stopQuantity) {
									StopQuantity = stopQuantity;
								}
								public String getFlightNumber() {
									return FlightNumber;
								}
								public void setFlightNumber(String flightNumber) {
									FlightNumber = flightNumber;
								}
								public String getResBookDesigCode() {
									return ResBookDesigCode;
								}
								public void setResBookDesigCode(String resBookDesigCode) {
									ResBookDesigCode = resBookDesigCode;
								}
								public Integer getElapsedTime() {
									return ElapsedTime;
								}
								public void setElapsedTime(Integer elapsedTime) {
									ElapsedTime = elapsedTime;
								}
								public departureAirport getDepartureAirport() {
									return DepartureAirport;
								}
								public void setDepartureAirport(departureAirport departureAirport) {
									DepartureAirport = departureAirport;
								}
								public arrivalAirport getArrivalAirport() {
									return ArrivalAirport;
								}
								public void setArrivalAirport(arrivalAirport arrivalAirport) {
									ArrivalAirport = arrivalAirport;
								}
								public operatingAirline getOperatingAirline() {
									return OperatingAirline;
								}
								public void setOperatingAirline(operatingAirline operatingAirline) {
									OperatingAirline = operatingAirline;
								}
								public List<equipment> getEquipment() {
									return Equipment;
								}
								public void setEquipment(List<equipment> equipment) {
									Equipment = equipment;
								}
								public marketingAirline getMarketingAirline() {
									return MarketingAirline;
								}
								public void setMarketingAirline(marketingAirline marketingAirline) {
									MarketingAirline = marketingAirline;
								}
								public String getMarriageGrp() {
									return MarriageGrp;
								}
								public void setMarriageGrp(String marriageGrp) {
									MarriageGrp = marriageGrp;
								}
								public departureTimeZone getDepartureTimeZone() {
									return DepartureTimeZone;
								}
								public void setDepartureTimeZone(departureTimeZone departureTimeZone) {
									DepartureTimeZone = departureTimeZone;
								}
								public arrivalTimeZone getArrivalTimeZone() {
									return ArrivalTimeZone;
								}
								public void setArrivalTimeZone(arrivalTimeZone arrivalTimeZone) {
									ArrivalTimeZone = arrivalTimeZone;
								}
								public tPA_Extensions getTPA_Extensions() {
									return TPA_Extensions;
								}
								public void setTPA_Extensions(tPA_Extensions tPA_Extensions) {
									TPA_Extensions = tPA_Extensions;
								}
								public String DepartureDateTime;
								public String ArrivalDateTime;
								public Integer StopQuantity;
								public String FlightNumber;
								public String ResBookDesigCode;
								public Integer ElapsedTime;
								public departureAirport DepartureAirport;
								public static class departureAirport{
									public String getLocationCode() {
										return LocationCode;
									}
									public void setLocationCode(String locationCode) {
										LocationCode = locationCode;
									}
									public String getTerminalID() {
										return TerminalID;
									}
									public void setTerminalID(String terminalID) {
										TerminalID = terminalID;
									}
									public String getContent() {
										return content;
									}
									public void setContent(String content) {
										this.content = content;
									}
									public String LocationCode;
									public String TerminalID;
									public String content;
								}
								public arrivalAirport ArrivalAirport;
								public static class arrivalAirport{
									public String getLocationCode() {
										return LocationCode;
									}
									public void setLocationCode(String locationCode) {
										LocationCode = locationCode;
									}
									public String getTerminalID() {
										return TerminalID;
									}
									public void setTerminalID(String terminalID) {
										TerminalID = terminalID;
									}
									public String getContent() {
										return content;
									}
									public void setContent(String content) {
										this.content = content;
									}
									public String LocationCode;
									public String TerminalID;
									public String content;
								}
								public operatingAirline OperatingAirline;
								public static class operatingAirline{
									public String getCode() {
										return Code;
									}
									public void setCode(String code) {
										Code = code;
									}
									public String getFlightNumber() {
										return FlightNumber;
									}
									public void setFlightNumber(String flightNumber) {
										FlightNumber = flightNumber;
									}
									public String getContent() {
										return content;
									}
									public void setContent(String content) {
										this.content = content;
									}
									public String Code;
									public String FlightNumber;
									public String content;
								}
								public List<equipment> Equipment;
								public static class equipment{
									public String getAirEquipType() {
										return AirEquipType;
									}
									public void setAirEquipType(String airEquipType) {
										AirEquipType = airEquipType;
									}
									public String getContent() {
										return content;
									}
									public void setContent(String content) {
										this.content = content;
									}
									public String AirEquipType;
									public String content;
								}
								public marketingAirline MarketingAirline;
								public static class marketingAirline{
									public String getCode() {
										return Code;
									}
									public void setCode(String code) {
										Code = code;
									}
									public String getContent() {
										return content;
									}
									public void setContent(String content) {
										this.content = content;
									}
									public String Code;
									public String content;								
								}
								public String MarriageGrp;
								public departureTimeZone DepartureTimeZone;
								public static class departureTimeZone{
									public Integer getGMTOffset() {
										return GMTOffset;
									}

									public void setGMTOffset(Integer gMTOffset) {
										GMTOffset = gMTOffset;
									}

									public Integer GMTOffset;
								}
								public arrivalTimeZone ArrivalTimeZone;
								public static class arrivalTimeZone{
									public Integer getGMTOffset() {
										return GMTOffset;
									}

									public void setGMTOffset(Integer gMTOffset) {
										GMTOffset = gMTOffset;
									}

									public Integer GMTOffset;
								}
								public tPA_Extensions TPA_Extensions;
								public static class tPA_Extensions{
									public eTicket geteTicket() {
										return eTicket;
									}
									public void seteTicket(eTicket eTicket) {
										this.eTicket = eTicket;
									}
									public mileage getMileage() {
										return Mileage;
									}
									public void setMileage(mileage mileage) {
										Mileage = mileage;
									}
									public eTicket eTicket;
									public static class eTicket{
										public Boolean Ind;
									}
									public mileage Mileage;
									public static class mileage{
										public Double Amount;
									}
								}
								
							}
						}
					}
				}
				public List<airItineraryPricingInfo> AirItineraryPricingInfo;
				public static class airItineraryPricingInfo{
					public String getPrivateFareType() {
						return PrivateFareType;
					}
					public void setPrivateFareType(String privateFareType) {
						PrivateFareType = privateFareType;
					}
					public String getPricingSource() {
						return PricingSource;
					}
					public void setPricingSource(String pricingSource) {
						PricingSource = pricingSource;
					}
					public String getPricingSubSource() {
						return PricingSubSource;
					}
					public void setPricingSubSource(String pricingSubSource) {
						PricingSubSource = pricingSubSource;
					}
					public Boolean getFareReturned() {
						return FareReturned;
					}
					public void setFareReturned(Boolean fareReturned) {
						FareReturned = fareReturned;
					}
					public itinTotalFare getItinTotalFare() {
						return ItinTotalFare;
					}
					public void setItinTotalFare(itinTotalFare itinTotalFare) {
						ItinTotalFare = itinTotalFare;
					}
					public pTC_FareBreakdowns getPTC_FareBreakdowns() {
						return PTC_FareBreakdowns;
					}
					public void setPTC_FareBreakdowns(pTC_FareBreakdowns pTC_FareBreakdowns) {
						PTC_FareBreakdowns = pTC_FareBreakdowns;
					}
					public fareInfos getFareInfos() {
						return FareInfos;
					}
					public void setFareInfos(fareInfos fareInfos) {
						FareInfos = fareInfos;
					}
					public tPA_Extensions getTPA_Extensions() {
						return TPA_Extensions;
					}
					public void setTPA_Extensions(tPA_Extensions tPA_Extensions) {
						TPA_Extensions = tPA_Extensions;
					}
					public String PrivateFareType;
					public String PricingSource;
					public String PricingSubSource;
					public Boolean FareReturned;
					public itinTotalFare ItinTotalFare;
					public static class itinTotalFare{
						public baseFare getBaseFare() {
							return BaseFare;
						}
						public void setBaseFare(baseFare baseFare) {
							BaseFare = baseFare;
						}
						public fareConstruction getFareConstruction() {
							return FareConstruction;
						}
						public void setFareConstruction(fareConstruction fareConstruction) {
							FareConstruction = fareConstruction;
						}
						public equivFare getEquivFare() {
							return EquivFare;
						}
						public void setEquivFare(equivFare equivFare) {
							EquivFare = equivFare;
						}
						public taxes getTaxes() {
							return Taxes;
						}
						public void setTaxes(taxes taxes) {
							Taxes = taxes;
						}
						public totalFare getTotalFare() {
							return TotalFare;
						}
						public void setTotalFare(totalFare totalFare) {
							TotalFare = totalFare;
						}
						public baseFare BaseFare;
						public static class baseFare{
							public Double getAmount() {
								return Amount;
							}
							public void setAmount(Double amount) {
								Amount = amount;
							}
							public String getCurrencyCode() {
								return CurrencyCode;
							}
							public void setCurrencyCode(String currencyCode) {
								CurrencyCode = currencyCode;
							}
							public Integer getDecimalPlaces() {
								return DecimalPlaces;
							}
							public void setDecimalPlaces(Integer decimalPlaces) {
								DecimalPlaces = decimalPlaces;
							}
							public Double Amount;
							public String CurrencyCode;
							public Integer DecimalPlaces;
						}
						public fareConstruction FareConstruction;
						public static class fareConstruction{
							public Double getAmount() {
								return Amount;
							}
							public void setAmount(Double amount) {
								Amount = amount;
							}
							public String getCurrencyCode() {
								return CurrencyCode;
							}
							public void setCurrencyCode(String currencyCode) {
								CurrencyCode = currencyCode;
							}
							public Integer getDecimalPlaces() {
								return DecimalPlaces;
							}
							public void setDecimalPlaces(Integer decimalPlaces) {
								DecimalPlaces = decimalPlaces;
							}
							public Double Amount;
							public String CurrencyCode;
							public Integer DecimalPlaces;
						}
						public equivFare EquivFare;
						public static class equivFare{
							public Double getAmount() {
								return Amount;
							}
							public void setAmount(Double amount) {
								Amount = amount;
							}
							public String getCurrencyCode() {
								return CurrencyCode;
							}
							public void setCurrencyCode(String currencyCode) {
								CurrencyCode = currencyCode;
							}
							public Integer getDecimalPlaces() {
								return DecimalPlaces;
							}
							public void setDecimalPlaces(Integer decimalPlaces) {
								DecimalPlaces = decimalPlaces;
							}
							public Double Amount;
							public String CurrencyCode;
							public Integer DecimalPlaces;
						}
						public taxes Taxes;
						public static class taxes{
							public List<tax> getTax() {
								return Tax;
							}
							public void setTax(List<tax> tax) {
								Tax = tax;
							}
							public List<tax> Tax;
							public static class tax{
								public String getTaxCode() {
									return TaxCode;
								}
								public void setTaxCode(String taxCode) {
									TaxCode = taxCode;
								}
								public Double getAmount() {
									return Amount;
								}
								public void setAmount(Double amount) {
									Amount = amount;
								}
								public String getCurrencyCode() {
									return CurrencyCode;
								}
								public void setCurrencyCode(String currencyCode) {
									CurrencyCode = currencyCode;
								}
								public Integer getDecimalPlaces() {
									return DecimalPlaces;
								}
								public void setDecimalPlaces(Integer decimalPlaces) {
									DecimalPlaces = decimalPlaces;
								}
								public String getContent() {
									return content;
								}
								public void setContent(String content) {
									this.content = content;
								}
								public String TaxCode;
								public Double Amount;
								public String CurrencyCode;
								public Integer DecimalPlaces;
								public String content;
							}
						}
						public totalFare TotalFare;
						public static class totalFare{
							public Double getAmount() {
								return Amount;
							}
							public void setAmount(Double amount) {
								Amount = amount;
							}
							public String getCurrencyCode() {
								return CurrencyCode;
							}
							public void setCurrencyCode(String currencyCode) {
								CurrencyCode = currencyCode;
							}
							public Integer getDecimalPlaces() {
								return DecimalPlaces;
							}
							public void setDecimalPlaces(Integer decimalPlaces) {
								DecimalPlaces = decimalPlaces;
							}
							public Double Amount;
							public String CurrencyCode;
							public Integer DecimalPlaces;
						}
					}
					public pTC_FareBreakdowns PTC_FareBreakdowns;
					public static class pTC_FareBreakdowns{
						public List<pTC_FareBreakdown> getPTC_FareBreakdown() {
							return PTC_FareBreakdown;
						}
						public void setPTC_FareBreakdown(List<pTC_FareBreakdown> pTC_FareBreakdown) {
							PTC_FareBreakdown = pTC_FareBreakdown;
						}
						public List<pTC_FareBreakdown> PTC_FareBreakdown;
						public static class pTC_FareBreakdown{
							public String getPrivateFareType() {
								return PrivateFareType;
							}
							public void setPrivateFareType(String privateFareType) {
								PrivateFareType = privateFareType;
							}
							public passengerTypeQuantity getPassengerTypeQuantity() {
								return PassengerTypeQuantity;
							}
							public void setPassengerTypeQuantity(passengerTypeQuantity passengerTypeQuantity) {
								PassengerTypeQuantity = passengerTypeQuantity;
							}
							public fareBasisCodes getFareBasisCodes() {
								return FareBasisCodes;
							}
							public void setFareBasisCodes(fareBasisCodes fareBasisCodes) {
								FareBasisCodes = fareBasisCodes;
							}
							public passengerFare getPassengerFare() {
								return PassengerFare;
							}
							public void setPassengerFare(passengerFare passengerFare) {
								PassengerFare = passengerFare;
							}
							public endorsements getEndorsements() {
								return Endorsements;
							}
							public void setEndorsements(endorsements endorsements) {
								Endorsements = endorsements;
							}
							public tPA_Extensions getTPA_Extensions() {
								return TPA_Extensions;
							}
							public void setTPA_Extensions(tPA_Extensions tPA_Extensions) {
								TPA_Extensions = tPA_Extensions;
							}
							public fareInfos getFareInfos() {
								return FareInfos;
							}
							public void setFareInfos(fareInfos fareInfos) {
								FareInfos = fareInfos;
							}
							public String PrivateFareType;
							public passengerTypeQuantity PassengerTypeQuantity;
							public static class passengerTypeQuantity{
								public String getCode() {
									return Code;
								}
								public void setCode(String code) {
									Code = code;
								}
								public Integer getQuantity() {
									return Quantity;
								}
								public void setQuantity(Integer quantity) {
									Quantity = quantity;
								}
								public String Code;
								public Integer Quantity;
							}
							public fareBasisCodes FareBasisCodes;
							public static class fareBasisCodes{
								public List<fareBasisCode> getFareBasisCode() {
									return FareBasisCode;
								}
								public void setFareBasisCode(List<fareBasisCode> fareBasisCode) {
									FareBasisCode = fareBasisCode;
								}
								public List<fareBasisCode> FareBasisCode;
								public static class fareBasisCode{
									public String getPrivateFareType() {
										return PrivateFareType;
									}
									public void setPrivateFareType(String privateFareType) {
										PrivateFareType = privateFareType;
									}
									public String getBookingCode() {
										return BookingCode;
									}
									public void setBookingCode(String bookingCode) {
										BookingCode = bookingCode;
									}
									public Boolean getAvailabilityBreak() {
										return AvailabilityBreak;
									}
									public void setAvailabilityBreak(Boolean availabilityBreak) {
										AvailabilityBreak = availabilityBreak;
									}
									public String getDepartureAirportCode() {
										return DepartureAirportCode;
									}
									public void setDepartureAirportCode(String departureAirportCode) {
										DepartureAirportCode = departureAirportCode;
									}
									public String getArrivalAirportCode() {
										return ArrivalAirportCode;
									}
									public void setArrivalAirportCode(String arrivalAirportCode) {
										ArrivalAirportCode = arrivalAirportCode;
									}
									public String getFareComponentBeginAirport() {
										return FareComponentBeginAirport;
									}
									public void setFareComponentBeginAirport(String fareComponentBeginAirport) {
										FareComponentBeginAirport = fareComponentBeginAirport;
									}
									public String getFareComponentEndAirport() {
										return FareComponentEndAirport;
									}
									public void setFareComponentEndAirport(String fareComponentEndAirport) {
										FareComponentEndAirport = fareComponentEndAirport;
									}
									public String getFareComponentDirectionality() {
										return FareComponentDirectionality;
									}
									public void setFareComponentDirectionality(String fareComponentDirectionality) {
										FareComponentDirectionality = fareComponentDirectionality;
									}
									public String getFareComponentVendorCode() {
										return FareComponentVendorCode;
									}
									public void setFareComponentVendorCode(String fareComponentVendorCode) {
										FareComponentVendorCode = fareComponentVendorCode;
									}
									public String getGovCarrier() {
										return GovCarrier;
									}
									public void setGovCarrier(String govCarrier) {
										GovCarrier = govCarrier;
									}
									public String getContent() {
										return content;
									}
									public void setContent(String content) {
										this.content = content;
									}
									public String PrivateFareType;
									public String BookingCode;
									public Boolean AvailabilityBreak;
									public String DepartureAirportCode;
									public String ArrivalAirportCode;
									public String FareComponentBeginAirport;
									public String FareComponentEndAirport;
									public String FareComponentDirectionality;
									public String FareComponentVendorCode;
									public String GovCarrier;
									public String content;
								}
							}
							public passengerFare PassengerFare;
							public static class passengerFare{
								public baseFare getBaseFare() {
									return BaseFare;
								}
								public void setBaseFare(baseFare baseFare) {
									BaseFare = baseFare;
								}
								public fareConstruction getFareConstruction() {
									return FareConstruction;
								}
								public void setFareConstruction(fareConstruction fareConstruction) {
									FareConstruction = fareConstruction;
								}
								public equivFare getEquivFare() {
									return EquivFare;
								}
								public void setEquivFare(equivFare equivFare) {
									EquivFare = equivFare;
								}
								public taxes getTaxes() {
									return Taxes;
								}
								public void setTaxes(taxes taxes) {
									Taxes = taxes;
								}
								public totalFare getTotalFare() {
									return TotalFare;
								}
								public void setTotalFare(totalFare totalFare) {
									TotalFare = totalFare;
								}
								public tPA_Extensions getTPA_Extensions() {
									return TPA_Extensions;
								}
								public void setTPA_Extensions(tPA_Extensions tPA_Extensions) {
									TPA_Extensions = tPA_Extensions;
								}
								public baseFare BaseFare;
								public static class baseFare{
									public Double getAmount() {
										return Amount;
									}
									public void setAmount(Double amount) {
										Amount = amount;
									}
									public String getCurrencyCode() {
										return CurrencyCode;
									}
									public void setCurrencyCode(String currencyCode) {
										CurrencyCode = currencyCode;
									}
									public Double Amount;
									public String CurrencyCode;
								}
								public fareConstruction FareConstruction;
								public static class fareConstruction{
									public Double getAmount() {
										return Amount;
									}
									public void setAmount(Double amount) {
										Amount = amount;
									}
									public String getCurrencyCode() {
										return CurrencyCode;
									}
									public void setCurrencyCode(String currencyCode) {
										CurrencyCode = currencyCode;
									}
									public Integer getDecimalPlaces() {
										return DecimalPlaces;
									}
									public void setDecimalPlaces(Integer decimalPlaces) {
										DecimalPlaces = decimalPlaces;
									}
									public Double Amount;
									public String CurrencyCode;
									public Integer DecimalPlaces;
								}
								public equivFare EquivFare;
								public static class equivFare{
									public Double getAmount() {
										return Amount;
									}
									public void setAmount(Double amount) {
										Amount = amount;
									}
									public String getCurrencyCode() {
										return CurrencyCode;
									}
									public void setCurrencyCode(String currencyCode) {
										CurrencyCode = currencyCode;
									}
									public Integer getDecimalPlaces() {
										return DecimalPlaces;
									}
									public void setDecimalPlaces(Integer decimalPlaces) {
										DecimalPlaces = decimalPlaces;
									}
									public Double Amount;
									public String CurrencyCode;
									public Integer DecimalPlaces;
								}
								public taxes Taxes;
								public static class taxes{
									public List<tax> getTax() {
										return Tax;
									}
									public void setTax(List<tax> tax) {
										Tax = tax;
									}
									public List<taxSummary> getTaxSummary() {
										return TaxSummary;
									}
									public void setTaxSummary(List<taxSummary> taxSummary) {
										TaxSummary = taxSummary;
									}
									public totalTax getTotalTax() {
										return TotalTax;
									}
									public void setTotalTax(totalTax totalTax) {
										TotalTax = totalTax;
									}
									public List<tax> Tax;
									public static class tax{
										public String getTaxCode() {
											return TaxCode;
										}
										public void setTaxCode(String taxCode) {
											TaxCode = taxCode;
										}
										public String getCountryCode() {
											return CountryCode;
										}
										public void setCountryCode(String countryCode) {
											CountryCode = countryCode;
										}
										public Double getAmount() {
											return Amount;
										}
										public void setAmount(Double amount) {
											Amount = amount;
										}
										public String getCurrencyCode() {
											return CurrencyCode;
										}
										public void setCurrencyCode(String currencyCode) {
											CurrencyCode = currencyCode;
										}
										public Integer getDecimalPlaces() {
											return DecimalPlaces;
										}
										public void setDecimalPlaces(Integer decimalPlaces) {
											DecimalPlaces = decimalPlaces;
										}
										public String getContent() {
											return content;
										}
										public void setContent(String content) {
											this.content = content;
										}
										public String TaxCode;
										public String CountryCode;
										public Double Amount;
										public String CurrencyCode;
										public Integer DecimalPlaces;
										public String content;
									}
									public List<taxSummary> TaxSummary;
									public static class taxSummary{
										public String getTaxCode() {
											return TaxCode;
										}
										public void setTaxCode(String taxCode) {
											TaxCode = taxCode;
										}
										public String getCountryCode() {
											return CountryCode;
										}
										public void setCountryCode(String countryCode) {
											CountryCode = countryCode;
										}
										public Double getAmount() {
											return Amount;
										}
										public void setAmount(Double amount) {
											Amount = amount;
										}
										public String getCurrencyCode() {
											return CurrencyCode;
										}
										public void setCurrencyCode(String currencyCode) {
											CurrencyCode = currencyCode;
										}
										public Integer getDecimalPlaces() {
											return DecimalPlaces;
										}
										public void setDecimalPlaces(Integer decimalPlaces) {
											DecimalPlaces = decimalPlaces;
										}
										public String getContent() {
											return content;
										}
										public void setContent(String content) {
											this.content = content;
										}
										public String TaxCode;
										public String CountryCode;
										public Double Amount;
										public String CurrencyCode;
										public Integer DecimalPlaces;
										public String content;
									}
									public totalTax TotalTax;
									public static class totalTax{
										public Double getAmount() {
											return Amount;
										}
										public void setAmount(Double amount) {
											Amount = amount;
										}
										public String getCurrencyCode() {
											return CurrencyCode;
										}
										public void setCurrencyCode(String currencyCode) {
											CurrencyCode = currencyCode;
										}
										public Integer getDecimalPlaces() {
											return DecimalPlaces;
										}
										public void setDecimalPlaces(Integer decimalPlaces) {
											DecimalPlaces = decimalPlaces;
										}
										public Double Amount;
										public String CurrencyCode;
										public Integer DecimalPlaces;
									}
								}
								public totalFare TotalFare;
								public static class totalFare{
									public Double getAmount() {
										return Amount;
									}
									public void setAmount(Double amount) {
										Amount = amount;
									}
									public String getCurrencyCode() {
										return CurrencyCode;
									}
									public void setCurrencyCode(String currencyCode) {
										CurrencyCode = currencyCode;
									}
									public Double Amount;
									public String CurrencyCode;
								}
								public tPA_Extensions TPA_Extensions;
								public static class tPA_Extensions{
									public messages getMessages() {
										return Messages;
									}
									public void setMessages(messages messages) {
										Messages = messages;
									}
									public baggageInformationList getBaggageInformationList() {
										return BaggageInformationList;
									}
									public void setBaggageInformationList(baggageInformationList baggageInformationList) {
										BaggageInformationList = baggageInformationList;
									}
									public messages Messages;
									public static class messages{
										public List<message> getMessage() {
											return Message;
										}
										public void setMessage(List<message> message) {
											Message = message;
										}
										public List<message> Message;
										public static class message{
											public String getAirlineCode() {
												return AirlineCode;
											}
											public void setAirlineCode(String airlineCode) {
												AirlineCode = airlineCode;
											}
											public String getType() {
												return Type;
											}
											public void setType(String type) {
												Type = type;
											}
											public Integer getFailCode() {
												return FailCode;
											}
											public void setFailCode(Integer failCode) {
												FailCode = failCode;
											}
											public String getInfo() {
												return Info;
											}
											public void setInfo(String info) {
												Info = info;
											}
											public String AirlineCode;
											public String Type;
											public Integer FailCode;
											public String Info;
										}
									}
									public baggageInformationList BaggageInformationList;
									public static class baggageInformationList{
										public List<baggageInformation> getBaggageInformation() {
											return BaggageInformation;
										}
										public void setBaggageInformation(List<baggageInformation> baggageInformation) {
											BaggageInformation = baggageInformation;
										}
										public List<baggageInformation> BaggageInformation;
										public static class baggageInformation{
											public String getProvisionType() {
												return ProvisionType;
											}
											public void setProvisionType(String provisionType) {
												ProvisionType = provisionType;
											}
											public String getAirlineCode() {
												return AirlineCode;
											}
											public void setAirlineCode(String airlineCode) {
												AirlineCode = airlineCode;
											}
											public List<segment> getSegment() {
												return Segment;
											}
											public void setSegment(List<segment> segment) {
												Segment = segment;
											}
											public List<allowance> getAllowance() {
												return Allowance;
											}
											public void setAllowance(List<allowance> allowance) {
												Allowance = allowance;
											}
											public String ProvisionType;
											public String AirlineCode;
											public List<segment> Segment;
											public static class segment{
												public Integer getId() {
													return Id;
												}

												public void setId(Integer id) {
													Id = id;
												}

												public Integer Id;
											}
											public List<allowance> Allowance;
											public static class allowance{
												public Integer getPieces() {
													return Pieces;
												}

												public void setPieces(Integer pieces) {
													Pieces = pieces;
												}

												public Integer Pieces;
											}
										}
									}
								}
							}
							public endorsements Endorsements;
							public static class endorsements{
								public Boolean getNonRefundableIndicator() {
									return NonRefundableIndicator;
								}

								public void setNonRefundableIndicator(Boolean nonRefundableIndicator) {
									NonRefundableIndicator = nonRefundableIndicator;
								}

								public Boolean NonRefundableIndicator;
							}
							public tPA_Extensions TPA_Extensions;
							public static class tPA_Extensions{
								public fareCalcLine getFareCalcLine() {
									return FareCalcLine;
								}
								public void setFareCalcLine(fareCalcLine fareCalcLine) {
									FareCalcLine = fareCalcLine;
								}
								public fareCalcLine FareCalcLine;
								public static class fareCalcLine{
									public String getInfo() {
										return Info;
									}

									public void setInfo(String info) {
										Info = info;
									}

									public String Info;
								}
							}
							public fareInfos FareInfos;
							public static class fareInfos{
								public List<fareInfo> getFareInfo() {
									return FareInfo;
								}
								public void setFareInfo(List<fareInfo> fareInfo) {
									FareInfo = fareInfo;
								}
								public List<fareInfo> FareInfo;
								public static class fareInfo{
									public String getFareReference() {
										return FareReference;
									}
									public void setFareReference(String fareReference) {
										FareReference = fareReference;
									}
									public tPA_Extensions getTPA_Extensions() {
										return TPA_Extensions;
									}
									public void setTPA_Extensions(tPA_Extensions tPA_Extensions) {
										TPA_Extensions = tPA_Extensions;
									}
									public String FareReference;
									public tPA_Extensions TPA_Extensions;
									public static class tPA_Extensions{
										public seatsRemaining getSeatsRemaining() {
											return SeatsRemaining;
										}
										public void setSeatsRemaining(seatsRemaining seatsRemaining) {
											SeatsRemaining = seatsRemaining;
										}
										public cabin getCabin() {
											return Cabin;
										}
										public void setCabin(cabin cabin) {
											Cabin = cabin;
										}
										public seatsRemaining SeatsRemaining;
										public static class seatsRemaining{
											public Integer getNumber() {
												return Number;
											}
											public void setNumber(Integer number) {
												Number = number;
											}
											public Boolean getBelowMin() {
												return BelowMin;
											}
											public void setBelowMin(Boolean belowMin) {
												BelowMin = belowMin;
											}
											public Integer Number;
											public Boolean BelowMin;
										}
										public cabin Cabin;
										public static class cabin{
											public String getCabin() {
												return Cabin;
											}

											public void setCabin(String cabin) {
												Cabin = cabin;
											}

											public String Cabin;
										}
									}
								}
							}
						}
					}
					public fareInfos FareInfos;
					public static class fareInfos{
						public List<fareInfo> getFareInfo() {
							return FareInfo;
						}
						public void setFareInfo(List<fareInfo> fareInfo) {
							FareInfo = fareInfo;
						}
						public List<fareInfo> FareInfo;
						public static class fareInfo{
							public String getFareReference() {
								return FareReference;
							}
							public void setFareReference(String fareReference) {
								FareReference = fareReference;
							}
							public tPA_Extensions getTPA_Extensions() {
								return TPA_Extensions;
							}
							public void setTPA_Extensions(tPA_Extensions tPA_Extensions) {
								TPA_Extensions = tPA_Extensions;
							}
							public String FareReference;
							public tPA_Extensions TPA_Extensions;
							public static class tPA_Extensions{
								public seatsRemaining getSeatsRemaining() {
									return SeatsRemaining;
								}
								public void setSeatsRemaining(seatsRemaining seatsRemaining) {
									SeatsRemaining = seatsRemaining;
								}
								public cabin getCabin() {
									return Cabin;
								}
								public void setCabin(cabin cabin) {
									Cabin = cabin;
								}
								public seatsRemaining SeatsRemaining;
								public static class seatsRemaining{
									public Integer getNumber() {
										return Number;
									}
									public void setNumber(Integer number) {
										Number = number;
									}
									public Boolean getBelowMin() {
										return BelowMin;
									}
									public void setBelowMin(Boolean belowMin) {
										BelowMin = belowMin;
									}
									public Integer Number;
									public Boolean BelowMin;
								}
								public cabin Cabin;
								public static class cabin{
									public String getCabin() {
										return Cabin;
									}

									public void setCabin(String cabin) {
										Cabin = cabin;
									}

									public String Cabin;
								}
							}
						}
					}
					public tPA_Extensions TPA_Extensions;
					public static class tPA_Extensions{
						public validatingCarrier getValidatingCarrier() {
							return ValidatingCarrier;
						}
						public void setValidatingCarrier(validatingCarrier validatingCarrier) {
							ValidatingCarrier = validatingCarrier;
						}
						public diversitySwapper getDiversitySwapper() {
							return DiversitySwapper;
						}
						public void setDiversitySwapper(diversitySwapper diversitySwapper) {
							DiversitySwapper = diversitySwapper;
						}
						public validatingCarrier ValidatingCarrier;
						public static class validatingCarrier{
							public String getCode() {
								return Code;
							}

							public void setCode(String code) {
								Code = code;
							}

							public String Code;
						}
						public diversitySwapper DiversitySwapper;
						public static class diversitySwapper{
							public Double getWeighedPriceAmount() {
								return WeighedPriceAmount;
							}

							public void setWeighedPriceAmount(Double weighedPriceAmount) {
								WeighedPriceAmount = weighedPriceAmount;
							}

							public Double WeighedPriceAmount;
						}
					}
				}
			}
		}
	//TPA_Extensions次欄位
		public tPA_Extensions TPA_Extensions;
		public static class tPA_Extensions{
			public airlineOrderList getAirlineOrderList() {
				return AirlineOrderList;
			}
			public void setAirlineOrderList(airlineOrderList airlineOrderList) {
				AirlineOrderList = airlineOrderList;
			}
			public airlineOrderList AirlineOrderList;
			public static class airlineOrderList{
				public List<airlineOrder> getAirlineOrder() {
					return AirlineOrder;
				}
				public void setAirlineOrder(List<airlineOrder> airlineOrder) {
					AirlineOrder = airlineOrder;
				}
				public List<airlineOrder> AirlineOrder;
				public static class airlineOrder{
					public String getCode() {
						return Code;
					}
					public void setCode(String code) {
						Code = code;
					}
					public Integer getSequenceNumber() {
						return SequenceNumber;
					}
					public void setSequenceNumber(Integer sequenceNumber) {
						SequenceNumber = sequenceNumber;
					}
					public String getContent() {
						return content;
					}
					public void setContent(String content) {
						this.content = content;
					}
					public String Code;
					public Integer SequenceNumber;
					public String content;
				}
			}
		}
		
	}
	
	//Links欄位
	public static class links{
		public String getRel() {
			return rel;
		}
		public void setRel(String rel) {
			this.rel = rel;
		}
		public String getHref() {
			return href;
		}
		public void setHref(String href) {
			this.href = href;
		}
		public String rel;
		public String href;
	}
	

}

