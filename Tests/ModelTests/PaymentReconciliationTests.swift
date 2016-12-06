//
//  PaymentReconciliationTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.8.0.10521 on 2016-12-06.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class PaymentReconciliationTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.PaymentReconciliation {
		return try instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) throws -> SwiftFHIR.PaymentReconciliation {
		return try SwiftFHIR.PaymentReconciliation(json: json)
	}
	
	func testPaymentReconciliation1() {
		do {
			let instance = try runPaymentReconciliation1()
			try runPaymentReconciliation1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test PaymentReconciliation successfully, but threw")
		}
	}
	
	@discardableResult
	func runPaymentReconciliation1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.PaymentReconciliation {
		let inst = (nil != json) ? try instantiateFrom(json: json!) : try instantiateFrom(filename: "paymentreconciliation-example.json")
		
		XCTAssertEqual(inst.created?.description, "2014-08-16")
		XCTAssertEqual(inst.detail?[0].amount?.code, "USD")
		XCTAssertEqual(inst.detail?[0].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.detail?[0].amount?.value, NSDecimalNumber(string: "1000.0"))
		XCTAssertEqual(inst.detail?[0].date?.description, "2014-08-16")
		XCTAssertEqual(inst.detail?[0].request?.reference, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332402")
		XCTAssertEqual(inst.detail?[0].type?.coding?[0].code, "payment")
		XCTAssertEqual(inst.detail?[0].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/paymenttype")
		XCTAssertEqual(inst.detail?[1].amount?.code, "USD")
		XCTAssertEqual(inst.detail?[1].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.detail?[1].amount?.value, NSDecimalNumber(string: "4000.0"))
		XCTAssertEqual(inst.detail?[1].date?.description, "2014-08-12")
		XCTAssertEqual(inst.detail?[1].request?.reference, "http://www.BenefitsInc.com/fhir/oralhealthclaim/225476332699")
		XCTAssertEqual(inst.detail?[1].type?.coding?[0].code, "payment")
		XCTAssertEqual(inst.detail?[1].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/paymenttype")
		XCTAssertEqual(inst.detail?[2].amount?.code, "USD")
		XCTAssertEqual(inst.detail?[2].amount?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.detail?[2].amount?.value, NSDecimalNumber(string: "-1500.0"))
		XCTAssertEqual(inst.detail?[2].date?.description, "2014-08-16")
		XCTAssertEqual(inst.detail?[2].type?.coding?[0].code, "advance")
		XCTAssertEqual(inst.detail?[2].type?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/paymenttype")
		XCTAssertEqual(inst.disposition, "2014 August mid-month settlement.")
		XCTAssertEqual(inst.id, "ER2500")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://www.BenefitsInc.com/fhir/enrollmentresponse")
		XCTAssertEqual(inst.identifier?[0].value, "781234")
		XCTAssertEqual(inst.organization?.reference, "Organization/2")
		XCTAssertEqual(inst.outcome?.coding?[0].code, "complete")
		XCTAssertEqual(inst.outcome?.coding?[0].system?.absoluteString, "http://hl7.org/fhir/remittance-outcome")
		XCTAssertEqual(inst.request?.reference, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization?.reference, "Organization/1")
		XCTAssertEqual(inst.status, "active")
		XCTAssertEqual(inst.text?.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">A human-readable rendering of the PaymentReconciliation</div>")
		XCTAssertEqual(inst.text?.status, NarrativeStatus(rawValue: "generated")!)
		XCTAssertEqual(inst.total?.code, "USD")
		XCTAssertEqual(inst.total?.system?.absoluteString, "urn:iso:std:iso:4217")
		XCTAssertEqual(inst.total?.value, NSDecimalNumber(string: "3500.0"))
		
		return inst
	}
}
