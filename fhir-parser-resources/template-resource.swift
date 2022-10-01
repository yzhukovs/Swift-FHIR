//
//  {{ profile.targetname }}.swift
//  SwiftFHIR
//
//  Generated from FHIR {{ info.version }} ({{ profile.url }}) on {{ info.date }}.
//  {{ info.year }}, SMART Health IT.
//

import Foundation
{% for klass in classes %}

/**
{{ klass.short|wordwrap(width=120, wrapstring="\n") }}.
{%- if klass.formal %}

{{ klass.formal|wordwrap(width=120, wrapstring="\n") }}
{%- endif %}
*/
open class {{ klass.name }}: {{ klass.superclass.name|default('FHIRAbstractBase') }} {
	{%- if klass.resource_type %}
	override open class var resourceType: String {
		get { return "{{ klass.resource_type }}" }
	}
	{% endif %}
	
	{%- for prop in klass.properties %}
	{%- if prop.enum %}
	/// {{ prop.formal|wordwrap(width=112, wrapstring="\n	/// ") }}
	{%- if prop.enum.restricted_to %}
	/// Only use: {{ prop.enum.restricted_to }}
	{%- endif %}
	{%- else %}
	/// {{ prop.short|wordwrap(width=112, wrapstring="\n	/// ") }}.
	{%- endif %}
	public var {{ prop.name }}: {% if prop.is_array %}[{% endif %}{{ prop.enum.name or prop.class_name }}{% if prop.is_array %}]{% endif %}?
	{% endfor -%}
	
	{% if klass.has_nonoptional %}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(
	{%- for nonop in klass.nonexpanded_nonoptionals %}
		{%- if not loop.first %}, {% endif -%}
		{%- if nonop.one_of_many -%}
		{{ nonop.one_of_many }}: Any
		{%- else -%}
		{{ nonop.name }}: {% if nonop.is_array %}[{% endif %}{{ nonop.enum.name or nonop.class_name }}{% if nonop.is_array %}]{% endif %}
		{%- endif -%}
	{%- endfor -%}
	) {
		self.init()
	{%- for nonop in klass.nonexpanded_nonoptionals %}
		{%- if nonop.one_of_many %}{% for expanded in klass.expanded_nonoptionals[nonop.one_of_many] %}
		{% if not loop.first %}else {% endif -%}
		if let value = {{ nonop.one_of_many }} as? {{ expanded.class_name }} {
			self.{{ expanded.name }} = value
		}
		{%- endfor %}
		else {
			fhir_warn("Type “\(Swift.type(of: {{ nonop.one_of_many }}))” for property “\({{ nonop.one_of_many }})” is invalid, ignoring")
		}
		{%- else %}
		self.{{ nonop.name }} = {{ nonop.name }}
		{%- endif %}
	{%- endfor %}
	}
	{% endif -%}
	
	{% if klass.properties %}
	
	override open func populate(from json: FHIRJSON, context instCtx: inout FHIRInstantiationContext) {
		super.populate(from: json, context: &instCtx)
		{% for prop in klass.properties %}
		
		{%- if prop.enum %}{% if prop.is_array %}
		{{ prop.name }} = createEnums(of: {{ prop.enum.name }}.self, for: "{{ prop.orig_name }}", in: json, context: &instCtx) ?? {{ prop.name }}
		{%- else %}
		{{ prop.name }} = createEnum(type: {{ prop.enum.name }}.self, for: "{{ prop.orig_name }}", in: json, context: &instCtx) ?? {{ prop.name }}
		{%- endif %}{% else %}
		
		{%- if prop.is_array %}
		{{ prop.name }} = createInstances(of: {{ prop.class_name }}.self, for: "{{ prop.orig_name }}", in: json, context: &instCtx, owner: self) ?? {{ prop.name }}
		{%- else %}
		{{ prop.name }} = createInstance(type: {{ prop.class_name }}.self, for: "{{ prop.orig_name }}", in: json, context: &instCtx, owner: self) ?? {{ prop.name }}
		{%- endif %}{% endif %}
		
		{%- if prop.nonoptional and not prop.one_of_many %}
		if {% if prop.is_array %}({% endif %}nil == {{ prop.name }}{% if prop.is_array %} || {{ prop.name }}!.isEmpty){% endif %} && !instCtx.containsKey("{{ prop.orig_name }}")
			{%- if prop.is_summary_n_min_conflict %} && !_isSummaryResource{% endif %} {
			instCtx.addError(FHIRValidationError(missing: "{{ prop.orig_name }}"))
		}
		{%- endif %}
		{%- endfor %}
		
		{%- if klass.expanded_nonoptionals %}
		
		// check if nonoptional expanded properties (i.e. at least one "answer" for "answer[x]") are present
		{%- for exp, props in klass.sorted_nonoptionals %}
		if {% for prop in props %}nil == self.{{ prop.name }}{% if not loop.last %} && {% endif %}{% endfor %} {
			instCtx.addError(FHIRValidationError(missing: "{{ exp }}[x]"))
		}
		{%- endfor %}
		{% endif %}
	}
	
	override open func decorate(json: inout FHIRJSON, errors: inout [FHIRValidationError]) {
		super.decorate(json: &json, errors: &errors)
		{% for prop in klass.properties %}
		
		{%- if prop.is_array %}
		arrayDecorate(json: &json, withKey: "{{ prop.orig_name }}", using: self.{{ prop.name }}, errors: &errors)
		{%- if prop.nonoptional and not prop.one_of_many %}
		if nil == {{ prop.name }} || self.{{ prop.name }}!.isEmpty {
			errors.append(FHIRValidationError(missing: "{{ prop.orig_name }}"))
		}
		{%- endif %}
		
		{%- else %}
		self.{{ prop.name }}?.decorate(json: &json, withKey: "{{ prop.orig_name }}", errors: &errors)
		{%- if prop.nonoptional and not prop.one_of_many %}
		if nil == self.{{ prop.name }} {
			errors.append(FHIRValidationError(missing: "{{ prop.orig_name }}"))
		}
		{%- endif %}{% endif %}
		{%- endfor %}
		
		{%- if klass.expanded_nonoptionals %}
		
		// check if nonoptional expanded properties (i.e. at least one "value" for "value[x]") are present
		{%- for exp, props in klass.sorted_nonoptionals %}
		if {% for prop in props %}nil == self.{{ prop.name }}{% if not loop.last %} && {% endif %}{% endfor %} {
			errors.append(FHIRValidationError(missing: "{{ exp }}[x]"))
		}
		{%- endfor %}{% endif %}
	}
{%- endif %}
}
{% endfor %}

