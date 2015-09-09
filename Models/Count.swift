//
//  Count.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Count) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A count of a discrete element (no unit).
 *
 *  There SHALL be a code with a value of "1" if there is a value and it SHALL be an expression of length.  If system is
 *  present, it SHALL be UCUM.  If present, the value SHALL a whole number.
 */
public class Count: Quantity
{
	override public class var resourceName: String {
		get { return "Count" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}

}

