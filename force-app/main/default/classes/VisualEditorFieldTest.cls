@IsTest
public class VisualEditorFieldTest {

  @IsTest
  static void testVisualEditor() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorField design = new VisualEditorField(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorCurrency() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorCurrency design = new VisualEditorCurrency(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorDate() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorDate design = new VisualEditorDate(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorDates() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorDates design = new VisualEditorDates(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorDatetime() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorDatetime design = new VisualEditorDatetime(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorEmail() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorEmail design = new VisualEditorEmail(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorGeolocation() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorLocation design = new VisualEditorLocation(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorPercent() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorPercent design = new VisualEditorPercent(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorPhone() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorPhone design = new VisualEditorPhone(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorPicklist() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorPicklist design = new VisualEditorPicklist(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorText() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorText design = new VisualEditorText(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorUrl() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorUrl design = new VisualEditorUrl(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorBoolean() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorBoolean design = new VisualEditorBoolean(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorNumber() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorNumber design = new VisualEditorNumber(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorTime() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorTime design = new VisualEditorTime(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

  @IsTest
  static void testVisualEditorFieldSet() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorFieldSet design = new VisualEditorFieldSet(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

}
