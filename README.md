# apex-visualeditor-utils

Utilities to aid in adding dynamic data sources to your lightning components.

<a href="https://githubsfdeploy.herokuapp.com/app/githubdeploy/MJ12358/apex-visualeditor-utils?ref=main">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>

# Highlights

- ### VisualEditorField
  Retrieves all accessible fields from the sObject.

- ### VisualEditorBoolean
  Retrieves all accessible boolean fields.

- ### VisualEditorCurrency
  Retrieves all accessible currency fields.

- ### VisualEditorDate
  Retrieves all accessible date fields.

- ### VisualEditorDates
  Retrieves all accessible date and datetime fields.

- ### VisualEditorDatetime
  Retrieves all accessible datetime fields.

- ### VisualEditorEmail
  Retrieves all accessible email fields.

- ### VisualEditorFieldSet
  Retrieves all fieldsets for the sObject.

- ### VisualEditorLocation
  Retrieves all accessible location fields.

- ### VisualEditorNumber
  Retrieves all accessible number (double, integer and long) fields.

- ### VisualEditorPercent
  Retrieves all accessible percent fields.

- ### VisualEditorPhone
  Retrieves all accessible phone fields.

- ### VisualEditorPicklist
  Retrieves all accessible picklist fields.

- ### VisualEditorRelationship
  Retrieves all accessible relationship fields.

- ### VisualEditorText
  Retrieves all accessible text fields.

- ### VisualEditorTime
  Retrieves all accessible time fields.

- ### VisualEditorUrl
  Retrieves all accessible url fields.

# Usage

`YourComponent.cmp`

```html
<aura:attibute name="myBooleanField" type="Boolean" />
```

`YourComponent.design`

```html
<design:attribute name="myBooleanField" label="My Boolean Field" datasource="apex://VisualEditorBoolean" />
```

# Tests

Current test results:

|	Class						| Percent | Lines 	|
| --------------- | ------- | ------- |
| VisualEditorBoolean | 100% | 7/7 |
| VisualEditorCurrency | 100% | 7/7	|
| VisualEditorDate | 100% | 7/7	|
| VisualEditorDates | 100% | 7/7 |
| VisualEditorDatetime | 100% | 7/7	|
| VisualEditorEmail	| 100% | 7/7 |
| VisualEditorField	| 97% | 47/48 |
| VisualEditorFieldSet | 93% | 15/16 |
| VisualEditorLocation	| 100% | 7/7 |
| VisualEditorNumber	| 100% | 7/7 |
| VisualEditorPercent	| 100% | 7/7 |
| VisualEditorPhone	| 100% | 7/7 |
| VisualEditorPicklist	| 100% | 7/7 |
| VisualEditorRelationship	| 94% | 17/18 |
| VisualEditorText	| 100% | 7/7 |
| VisualEditorTime	| 100% | 7/7 |
| VisualEditorUrl	| 100% | 7/7 |