//
//  VisionPrescriptionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class VisionPrescriptionTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.VisionPrescription {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.VisionPrescription {
		return try SwiftFHIR.VisionPrescription(json: json)
	}
	
	func testVisionPrescription1() {
		do {
			let instance = try runVisionPrescription1()
			try runVisionPrescription1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test VisionPrescription successfully, but threw")
		}
	}
	
	@discardableResult
	func runVisionPrescription1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.VisionPrescription {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "visionprescription-example-1.json")
		
		XCTAssertEqual(inst.dateWritten?.description, "2014-06-15")
		XCTAssertEqual(inst.dispense?[0].add, NSDecimalNumber(string: "1.75"))
		XCTAssertEqual(inst.dispense?[0].axis, 160)
		XCTAssertEqual(inst.dispense?[0].backCurve, NSDecimalNumber(string: "8.7"))
		XCTAssertEqual(inst.dispense?[0].brand, "OphthaGuard")
		XCTAssertEqual(inst.dispense?[0].color, "green")
		XCTAssertEqual(inst.dispense?[0].cylinder, NSDecimalNumber(string: "-2.25"))
		XCTAssertEqual(inst.dispense?[0].diameter, NSDecimalNumber(string: "14.0"))
		XCTAssertEqual(inst.dispense?[0].duration?.code, "month")
		XCTAssertEqual(inst.dispense?[0].duration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dispense?[0].duration?.unit, "month")
		XCTAssertEqual(inst.dispense?[0].duration?.value, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dispense?[0].eye?.coding?[0].code, "right")
		XCTAssertEqual(inst.dispense?[0].power, NSDecimalNumber(string: "-2.75"))
		XCTAssertEqual(inst.dispense?[0].product?.coding?[0].code, "contact")
		XCTAssertEqual(inst.dispense?[0].product?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-visionprescriptionproduct")
		XCTAssertEqual(inst.dispense?[1].add, NSDecimalNumber(string: "1.75"))
		XCTAssertEqual(inst.dispense?[1].axis, 160)
		XCTAssertEqual(inst.dispense?[1].backCurve, NSDecimalNumber(string: "8.7"))
		XCTAssertEqual(inst.dispense?[1].brand, "OphthaGuard")
		XCTAssertEqual(inst.dispense?[1].color, "green")
		XCTAssertEqual(inst.dispense?[1].cylinder, NSDecimalNumber(string: "-3.5"))
		XCTAssertEqual(inst.dispense?[1].diameter, NSDecimalNumber(string: "14.0"))
		XCTAssertEqual(inst.dispense?[1].duration?.code, "month")
		XCTAssertEqual(inst.dispense?[1].duration?.system?.absoluteString, "http://unitsofmeasure.org")
		XCTAssertEqual(inst.dispense?[1].duration?.unit, "month")
		XCTAssertEqual(inst.dispense?[1].duration?.value, NSDecimalNumber(string: "1"))
		XCTAssertEqual(inst.dispense?[1].eye?.coding?[0].code, "left")
		XCTAssertEqual(inst.dispense?[1].power, NSDecimalNumber(string: "-2.75"))
		XCTAssertEqual(inst.dispense?[1].product?.coding?[0].code, "contact")
		XCTAssertEqual(inst.dispense?[1].product?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-visionprescriptionproduct")
		XCTAssertEqual(inst.id, "33124")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.happysight.com/prescription")
		XCTAssertEqual(inst.identifier?[0].value, "15014")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">Sample Contract Lens prescription</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
	
	func testVisionPrescription2() {
		do {
			let instance = try runVisionPrescription2()
			try runVisionPrescription2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test VisionPrescription successfully, but threw")
		}
	}
	
	@discardableResult
	func runVisionPrescription2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.VisionPrescription {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "visionprescription-example.json")
		
		XCTAssertEqual(inst.dateWritten?.description, "2014-06-15")
		XCTAssertEqual(inst.dispense?[0].add, NSDecimalNumber(string: "2.0"))
		XCTAssertEqual(inst.dispense?[0].base?.coding?[0].code, "down")
		XCTAssertEqual(inst.dispense?[0].eye?.coding?[0].code, "right")
		XCTAssertEqual(inst.dispense?[0].prism, NSDecimalNumber(string: "0.5"))
		XCTAssertEqual(inst.dispense?[0].product?.coding?[0].code, "lens")
		XCTAssertEqual(inst.dispense?[0].product?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-visionprescriptionproduct")
		XCTAssertEqual(inst.dispense?[0].sphere, NSDecimalNumber(string: "-2.0"))
		XCTAssertEqual(inst.dispense?[1].add, NSDecimalNumber(string: "2.0"))
		XCTAssertEqual(inst.dispense?[1].axis, 180)
		XCTAssertEqual(inst.dispense?[1].base?.coding?[0].code, "up")
		XCTAssertEqual(inst.dispense?[1].cylinder, NSDecimalNumber(string: "-0.5"))
		XCTAssertEqual(inst.dispense?[1].eye?.coding?[0].code, "left")
		XCTAssertEqual(inst.dispense?[1].prism, NSDecimalNumber(string: "0.5"))
		XCTAssertEqual(inst.dispense?[1].product?.coding?[0].code, "lens")
		XCTAssertEqual(inst.dispense?[1].product?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/ex-visionprescriptionproduct")
		XCTAssertEqual(inst.dispense?[1].sphere, NSDecimalNumber(string: "-1.0"))
		XCTAssertEqual(inst.id, "33123")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.happysight.com/prescription")
		XCTAssertEqual(inst.identifier?[0].value, "15013")
		XCTAssertEqual(inst.patient?.reference, "Patient/example")
		XCTAssertEqual(inst.prescriber?.reference, "Practitioner/example")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		
		return inst
	}
}
