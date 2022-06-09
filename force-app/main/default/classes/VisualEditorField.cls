/**
 * Created on Jul 13 2020
 *
 * Copyright (c) 2020 Matt Jants
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification, 
 *    are permitted provided that the following conditions are met:
 *
 * - Redistributions of source code must retain the above copyright notice, 
 *    this list of conditions and the following disclaimer.
 * - Redistributions in binary form must reproduce the above copyright notice, 
 *    this list of conditions and the following disclaimer in the documentation 
 *    and/or other materials provided with the distribution.
 * - Neither the name of the company, software or the names of its contributors 
 *    may be used to endorse or promote products derived from this software without 
 *    specific prior written permission.
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
 *  TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 *  THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 *  OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
 *  OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, TORT (INCLUDING NEGLIGENCE) OR OTHERWISE, 
 *  ARISING FROM, OUT OF OR IN CONNECTION WITH THE USE OF THIS SOFTWARE OR OTHER DEALINGS IN THE SOFTWARE, 
 *  EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 **/

public with sharing class VisualEditorField extends VisualEditor.DynamicPickList {

  private VisualEditor.DynamicPickListRows rows = new VisualEditor.DynamicPickListRows();

  public VisualEditorField(VisualEditor.DesignTimePageContext context) {
    this.rows = getAccessible(context);
  }

  public override VisualEditor.DataRow getDefaultValue() {
    return this.rows.get(0);
  }

  public override VisualEditor.DynamicPickListRows getValues() {
    return this.rows;
  }

  public static VisualEditor.DynamicPickListRows getAccessible(VisualEditor.DesignTimePageContext context) {
    VisualEditor.DynamicPickListRows results = new VisualEditor.DynamicPickListRows();
    Map<String, String> rowMap = new Map<String, String>();
    // make this the first row every time
    results.addRow(new VisualEditor.DataRow('', null));

    Schema.SObjectType sObjectType = convertNameToType(context.entityName);

    // compile a map of accessible fields
    for (Schema.SObjectField field : sObjectType.getDescribe().fields.getMap().values()) {
      Schema.DescribeFieldResult describe = field.getDescribe();
      if (describe.isAccessible()) {
        // i'd like to sort by label, that means it must be the key
        // but if there are multiple fields with the same label they will be overridden
        rowMap.put(describe.getLabel(), describe.getName());
      }
    }

    // now sort the fields by their labels
    if (!rowMap.isEmpty()) {
      List<String> rowList = new List<String>(rowMap.keySet());
      rowList.sort();
      for (String label : rowList) {
        results.addRow(new VisualEditor.DataRow(label, rowMap.get(label)));
      }
    } else {
      results.addRow(new VisualEditor.DataRow(System.Label.VisualEditorNoAccessibleFields, null));
    }
    
    return results;
  }

  public static VisualEditor.DynamicPickListRows getAccessible(VisualEditor.DesignTimePageContext context, List<Schema.DisplayType> displayTypes) {
    VisualEditor.DynamicPickListRows results = new VisualEditor.DynamicPickListRows();
    Map<String, String> rowMap = new Map<String, String>();
    results.addRow(new VisualEditor.DataRow('', null));

    Schema.SObjectType sObjectType = convertNameToType(context.entityName);

    for (Schema.SObjectField field : sObjectType.getDescribe().fields.getMap().values()) {
      Schema.DescribeFieldResult describe = field.getDescribe();
      if (describe.isAccessible() && displayTypes.contains(describe.getType())) {
        rowMap.put(describe.getLabel(), describe.getName());
      }
    }

    if (!rowMap.isEmpty()) {
      List<String> rowList = new List<String>(rowMap.keySet());
      rowList.sort();
      for (String label : rowList) {
        results.addRow(new VisualEditor.DataRow(label, rowMap.get(label)));
      }
    } else {
      String label = String.format(System.Label.VisualEditorNoAccessibleTypeFields,
        new List<String>{
          displayTypes[0].name().toLowercase()
        }
      );
      results.addRow(new VisualEditor.DataRow(label, null));
    }

    return results;
  }

  public static VisualEditor.DynamicPickListRows getAccessible(VisualEditor.DesignTimePageContext context, Schema.DisplayType displayType) {
    return getAccessible(context, new List<Schema.DisplayType>{ displayType });
  }

  public static Schema.SObjectType convertNameToType(String sObjectName) {
    System.Type t = System.Type.forName(sObjectName);
    SObject sObj = (SObject)t.newInstance();
    return sObj.getSObjectType();
  }

}
