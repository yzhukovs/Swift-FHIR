//
//  AppointmentTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AppointmentTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.Appointment {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.Appointment {
		return try SwiftFHIR.Appointment(json: json)
	}
	
	func testAppointment1() {
		do {
			let instance = try runAppointment1()
			try runAppointment1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Appointment successfully, but threw")
		}
	}
	
	@discardableResult
	func runAppointment1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Appointment {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "appointment-example-request.json")
		
		XCTAssertEqual(inst.appointmentType?.coding?[0].code, "wi")
		XCTAssertEqual(inst.appointmentType?.coding?[0].display, "Walk in")
		XCTAssertEqual(inst.appointmentType?.coding?[0].system?.absoluteString, "http://example.org/appointment-type")
		XCTAssertEqual(inst.comment, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst.created?.description, "2015-12-02")
		XCTAssertEqual(inst.description_fhir, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst.id, "examplereq")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/sampleappointment-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "123")
		XCTAssertEqual(inst.minutesDuration, UInt(15))
		XCTAssertEqual(inst.participant?[0].actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[0].status, ParticipationStatus(rawValue: "needs-action")!)
		XCTAssertEqual(inst.participant?[1].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[1].status, ParticipationStatus(rawValue: "needs-action")!)
		XCTAssertEqual(inst.participant?[1].type?[0].coding?[0].code, "ATND")
		XCTAssertEqual(inst.participant?[1].type?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.participant?[2].actor?.display, "South Wing, second floor")
		XCTAssertEqual(inst.participant?[2].actor?.reference, "Location/1")
		XCTAssertEqual(inst.participant?[2].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[2].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.priority, UInt(5))
		XCTAssertEqual(inst.reason?.coding?[0].code, "413095006")
		XCTAssertEqual(inst.reason?.coding?[0].system?.absoluteString, "http://snomed.info/sct")
		XCTAssertEqual(inst.reason?.text, "Clinical Review")
		XCTAssertEqual(inst.requestedPeriod?[0].end?.description, "2016-06-09")
		XCTAssertEqual(inst.requestedPeriod?[0].start?.description, "2016-06-02")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].code, "gp")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].display, "General Practice")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].system?.absoluteString, "http://example.org/service-category")
		XCTAssertEqual(inst.slot?[0].reference, "Slot/example")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "gp")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "General Practice")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://example.org/specialty")
		XCTAssertEqual(inst.status, AppointmentStatus(rawValue: "proposed")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testAppointment2() {
		do {
			let instance = try runAppointment2()
			try runAppointment2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Appointment successfully, but threw")
		}
	}
	
	@discardableResult
	func runAppointment2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Appointment {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "appointment-example.json")
		
		XCTAssertEqual(inst.appointmentType?.coding?[0].code, "follow")
		XCTAssertEqual(inst.appointmentType?.coding?[0].display, "Followup")
		XCTAssertEqual(inst.appointmentType?.coding?[0].system?.absoluteString, "http://example.org/appointment-type")
		XCTAssertEqual(inst.comment, "Further expand on the results of the MRI and determine the next actions that may be appropriate.")
		XCTAssertEqual(inst.created?.description, "2013-10-10")
		XCTAssertEqual(inst.description_fhir, "Discussion on the results of your recent MRI")
		XCTAssertEqual(inst.end?.description, "2013-12-10T11:00:00Z")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.participant?[0].actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[0].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.participant?[1].actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.participant?[1].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.participant?[1].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[1].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.participant?[1].type?[0].coding?[0].code, "ATND")
		XCTAssertEqual(inst.participant?[1].type?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.participant?[2].actor?.display, "South Wing, second floor")
		XCTAssertEqual(inst.participant?[2].actor?.reference, "Location/1")
		XCTAssertEqual(inst.participant?[2].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[2].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.priority, UInt(5))
		XCTAssertEqual(inst.serviceCategory?.coding?[0].code, "gp")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].display, "General Practice")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].system?.absoluteString, "http://example.org/service-category")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].code, "52")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].display, "General Discussion")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "gp")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "General Practice")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://example.org/specialty")
		XCTAssertEqual(inst.start?.description, "2013-12-10T09:00:00Z")
		XCTAssertEqual(inst.status, AppointmentStatus(rawValue: "booked")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testAppointment3() {
		do {
			let instance = try runAppointment3()
			try runAppointment3(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test Appointment successfully, but threw")
		}
	}
	
	@discardableResult
	func runAppointment3(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.Appointment {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "appointment-example2doctors.json")
		
		XCTAssertEqual(inst.appointmentType?.coding?[0].code, "wi")
		XCTAssertEqual(inst.appointmentType?.coding?[0].display, "Walk in")
		XCTAssertEqual(inst.appointmentType?.coding?[0].system?.absoluteString, "http://example.org/appointment-type")
		XCTAssertEqual(inst.comment, "Clarify the results of the MRI to ensure context of test was correct")
		XCTAssertEqual(inst.description_fhir, "Discussion about Peter Chalmers MRI results")
		XCTAssertEqual(inst.end?.description, "2013-12-09T11:00:00Z")
		XCTAssertEqual(inst.id, "2docs")
		XCTAssertEqual(inst.participant?[0].actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.participant?[0].actor?.reference, "Patient/example")
		XCTAssertEqual(inst.participant?[0].required, ParticipantRequired(rawValue: "information-only")!)
		XCTAssertEqual(inst.participant?[0].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.participant?[1].actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.participant?[1].actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.participant?[1].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[1].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.participant?[2].actor?.display, "Luigi Maas")
		XCTAssertEqual(inst.participant?[2].actor?.reference, "Practitioner/f202")
		XCTAssertEqual(inst.participant?[2].required, ParticipantRequired(rawValue: "required")!)
		XCTAssertEqual(inst.participant?[2].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.participant?[3].actor?.display, "Phone Call")
		XCTAssertEqual(inst.participant?[3].required, ParticipantRequired(rawValue: "information-only")!)
		XCTAssertEqual(inst.participant?[3].status, ParticipationStatus(rawValue: "accepted")!)
		XCTAssertEqual(inst.priority, UInt(5))
		XCTAssertEqual(inst.serviceCategory?.coding?[0].code, "gp")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].display, "General Practice")
		XCTAssertEqual(inst.serviceCategory?.coding?[0].system?.absoluteString, "http://example.org/service-category")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].code, "52")
		XCTAssertEqual(inst.serviceType?[0].coding?[0].display, "General Discussion")
		XCTAssertEqual(inst.specialty?[0].coding?[0].code, "gp")
		XCTAssertEqual(inst.specialty?[0].coding?[0].display, "General Practice")
		XCTAssertEqual(inst.specialty?[0].coding?[0].system?.absoluteString, "http://example.org/specialty")
		XCTAssertEqual(inst.start?.description, "2013-12-09T09:00:00Z")
		XCTAssertEqual(inst.status, AppointmentStatus(rawValue: "booked")!)
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
