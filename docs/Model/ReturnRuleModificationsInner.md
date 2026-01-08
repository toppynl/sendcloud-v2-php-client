# # ReturnRuleModificationsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ruleName** | **string** | Name of the rule that has been applied | [optional]
**field** | **string** | Field that this rule affects | [optional]
**value** | **mixed** | New value of the field based on this rule. The type depends on the field type. | [optional]
**action** | **string** | Action taken based on this rule | [optional]
**friendlyName** | **string** | Human-readable name for the action | [optional]
**priority** | **int** | Priority of this rule. The rule with a higher priority value takes precedence. | [optional]
**itemId** | **string** | Item that this rule has been applied to. It will be &#x60;null&#x60; if the rule is applied to the whole return. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
