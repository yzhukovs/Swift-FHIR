//
//  MedicationAdministration.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/MedicationAdministration) on 2015-07-28.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Administration of medication to a patient.
 *
 *  Describes the event of a patient consuming or otherwise being administered a medication.  This may be as simple as
 *  swallowing a tablet or it may be a long running infusion.Related resources tie this event to the authorizing
 *  prescription, and the specific encounter between patient and health care practitioner.
 */
public class MedicationAdministration: DomainResource
{
	override public class var resourceName: String {
		get { return "MedicationAdministration" }
	}
	
	/// Device used to administer
	public var device: [Reference]?
	
	/// Details of how medication was taken
	public var dosage: MedicationAdministrationDosage?
	
	/// Start and end time of administration
	public var effectiveTimeDateTime: DateTime?
	
	/// Start and end time of administration
	public var effectiveTimePeriod: Period?
	
	/// Encounter administered as part of
	public var encounter: Reference?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// What was administered?
	public var medication: Reference?
	
	/// Information about the administration
	public var note: String?
	
	/// Who received medication?
	public var patient: Reference?
	
	/// Who administered substance?
	public var practitioner: Reference?
	
	/// Order administration performed against
	public var prescription: Reference?
	
	/// Reason administration performed
	public var reasonGiven: [CodeableConcept]?
	
	/// Reason administration not performed
	public var reasonNotGiven: [CodeableConcept]?
	
	/// in-progress | on-hold | completed | entered-in-error | stopped
	public var status: String?
	
	/// True if medication not administered
	public var wasNotGiven: Bool?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(effectiveTimeDateTime: DateTime?, effectiveTimePeriod: Period?, patient: Reference?, status: String?) {
		self.init(json: nil)
		if nil != effectiveTimeDateTime {
			self.effectiveTimeDateTime = effectiveTimeDateTime
		}
		if nil != effectiveTimePeriod {
			self.effectiveTimePeriod = effectiveTimePeriod
		}
		if nil != patient {
			self.patient = patient
		}
		if nil != status {
			self.status = status
		}
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["device"] {
				presentKeys.insert("device")
				if let val = exist as? [FHIRJSON] {
					self.device = Reference.from(val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "device", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["dosage"] {
				presentKeys.insert("dosage")
				if let val = exist as? FHIRJSON {
					self.dosage = MedicationAdministrationDosage(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "dosage", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["effectiveTimeDateTime"] {
				presentKeys.insert("effectiveTimeDateTime")
				if let val = exist as? String {
					self.effectiveTimeDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "effectiveTimeDateTime", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["effectiveTimePeriod"] {
				presentKeys.insert("effectiveTimePeriod")
				if let val = exist as? FHIRJSON {
					self.effectiveTimePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "effectiveTimePeriod", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["encounter"] {
				presentKeys.insert("encounter")
				if let val = exist as? FHIRJSON {
					self.encounter = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "encounter", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.from(val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["medication"] {
				presentKeys.insert("medication")
				if let val = exist as? FHIRJSON {
					self.medication = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "medication", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? String {
					self.note = val
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "patient"))
			}
			if let exist: AnyObject = js["practitioner"] {
				presentKeys.insert("practitioner")
				if let val = exist as? FHIRJSON {
					self.practitioner = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "practitioner", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["prescription"] {
				presentKeys.insert("prescription")
				if let val = exist as? FHIRJSON {
					self.prescription = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "prescription", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonGiven"] {
				presentKeys.insert("reasonGiven")
				if let val = exist as? [FHIRJSON] {
					self.reasonGiven = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonGiven", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reasonNotGiven"] {
				presentKeys.insert("reasonNotGiven")
				if let val = exist as? [FHIRJSON] {
					self.reasonNotGiven = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "reasonNotGiven", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "status"))
			}
			if let exist: AnyObject = js["wasNotGiven"] {
				presentKeys.insert("wasNotGiven")
				if let val = exist as? Bool {
					self.wasNotGiven = val
				}
				else {
					errors.append(FHIRJSONError(key: "wasNotGiven", wants: Bool.self, has: exist.dynamicType))
				}
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.effectiveTimeDateTime && nil == self.effectiveTimePeriod {
				errors.append(FHIRJSONError(key: "effectiveTime[x]*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let device = self.device {
			json["device"] = Reference.asJSONArray(device)
		}
		if let dosage = self.dosage {
			json["dosage"] = dosage.asJSON()
		}
		if let effectiveTimeDateTime = self.effectiveTimeDateTime {
			json["effectiveTimeDateTime"] = effectiveTimeDateTime.asJSON()
		}
		if let effectiveTimePeriod = self.effectiveTimePeriod {
			json["effectiveTimePeriod"] = effectiveTimePeriod.asJSON()
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let medication = self.medication {
			json["medication"] = medication.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let practitioner = self.practitioner {
			json["practitioner"] = practitioner.asJSON()
		}
		if let prescription = self.prescription {
			json["prescription"] = prescription.asJSON()
		}
		if let reasonGiven = self.reasonGiven {
			json["reasonGiven"] = CodeableConcept.asJSONArray(reasonGiven)
		}
		if let reasonNotGiven = self.reasonNotGiven {
			json["reasonNotGiven"] = CodeableConcept.asJSONArray(reasonNotGiven)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let wasNotGiven = self.wasNotGiven {
			json["wasNotGiven"] = wasNotGiven.asJSON()
		}
		
		return json
	}
}


/**
 *  Details of how medication was taken.
 *
 *  Indicates how the medication is/was used by the patient.
 */
public class MedicationAdministrationDosage: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationAdministrationDosage" }
	}
	
	/// How drug was administered
	public var method: CodeableConcept?
	
	/// Amount administered in one dose
	public var quantity: Quantity?
	
	/// Dose quantity per unit of time
	public var rate: Ratio?
	
	/// Path of substance into body
	public var route: CodeableConcept?
	
	/// Body site administered to
	public var site: CodeableConcept?
	
	/// Dosage Instructions
	public var text: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?) {
		super.init(json: json)
	}
	
	override func populateFromJSON(json: FHIRJSON?, inout presentKeys: Set<String>) -> [FHIRJSONError]? {
		var errors = super.populateFromJSON(json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["method"] {
				presentKeys.insert("method")
				if let val = exist as? FHIRJSON {
					self.method = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "method", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["quantity"] {
				presentKeys.insert("quantity")
				if let val = exist as? FHIRJSON {
					self.quantity = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "quantity", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["rate"] {
				presentKeys.insert("rate")
				if let val = exist as? FHIRJSON {
					self.rate = Ratio(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "rate", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["route"] {
				presentKeys.insert("route")
				if let val = exist as? FHIRJSON {
					self.route = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "route", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["site"] {
				presentKeys.insert("site")
				if let val = exist as? FHIRJSON {
					self.site = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "site", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let rate = self.rate {
			json["rate"] = rate.asJSON()
		}
		if let route = self.route {
			json["route"] = route.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}

