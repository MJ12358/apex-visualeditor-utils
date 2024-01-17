/**
 * Created on Jul 13 2020
 *
 * Copyright (c) 2020 MJ12358
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

public with sharing class VisualEditorRelationship extends VisualEditor.DynamicPickList {

  private VisualEditor.DynamicPickListRows rows = new VisualEditor.DynamicPickListRows();

  public VisualEditorRelationship(VisualEditor.DesignTimePageContext context) {
    Map<String, String> rowMap = new Map<String, String>();
    Schema.SObjectType sObjectType = VisualEditorField.convertNameToType(context.entityName);

    // compile a map of accessible relationships
    for (Schema.ChildRelationship cr : sObjectType.getDescribe().getChildRelationships()) {
      Schema.DescribeSObjectResult describe = cr.getChildSObject().getDescribe();
      // createable/updateable is used to filter out unwanted/irrelevant relationships
      if (describe.isAccessible() && describe.isCreateable() && describe.isUpdateable()) {
        rowMap.put(describe.getLabel(), describe.getName());
      }
    }

    // now sort the relationships by their labels
    List<String> rowList = new List<String>(rowMap.keySet());
    rowList.sort();
    for (String label : rowList) {
      this.rows.addRow(new VisualEditor.DataRow(label, rowMap.get(label)));
    }

  }

  public override VisualEditor.DataRow getDefaultValue() {
    if (this.rows.size() > 0) {
      return this.rows.get(0);
    }
    return new VisualEditor.DataRow(System.Label.VisualEditorNoRelationships, null);
  }

  public override VisualEditor.DynamicPickListRows getValues() {
    return this.rows;
  }

}
