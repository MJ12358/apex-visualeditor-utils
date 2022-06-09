@IsTest
public class VisualEditorRelationshipTest {

  @IsTest
  static void testVisualEditor() {
    VisualEditor.DesignTimePageContext context = new VisualEditor.DesignTimePageContext();
    context.entityName = 'Account';
    Test.startTest();
    VisualEditorRelationship design = new VisualEditorRelationship(context);
    VisualEditor.DataRow value = design.getDefaultValue();
    VisualEditor.DynamicPickListRows rows = design.getValues();
    Test.stopTest();
    System.assertNotEquals(null, value);
    System.assertNotEquals(null, rows);
  }

}
