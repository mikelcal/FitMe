/*
 * Copyright (c) 2011-2013 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.2




TabbedPane {
    
    Menu.definition: MenuDefinition {
        id: menu
        actions: [
            ActionItem {
                title: "Settings"
                onTriggered: {
                    console.log("Info: ActionItem : onTriggered");
                    // For InfoPage, we will use Sheet
                    infoSheet.open();
                }
            }
        ]
    }
    
    showTabsOnActionBar: true
    Tab { //First tab
        // Localized text with the dynamic translation and locale updates support
        title: qsTr("Dashboard") + Retranslate.onLocaleOrLanguageChanged
        imageSource: "images/db.png"
        Page {
            
      
        Container {
            
            Label {
                text: "Dashboard"
                    textStyle.color: Color.create("#ffffff")
                    textStyle.fontSize: FontSize.Large
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
          
                    bottomMargin: 200.0
                    textStyle.fontStyle: FontStyle.Italic

                }
        
        background: Color.create("#333333")
        Container {
            
            
            Label {
                text: "Steps"
                textStyle.color: Color.create("#ffffff")
        }

        layout: StackLayout {
        orientation: LayoutOrientation.LeftToRight
        }
        
        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
        layoutProperties: FlowListLayoutProperties {
        
        }
                ImageButton {
        
        defaultImageSource: "images/circle.png"
        id: steps
        
        horizontalAlignment: HorizontalAlignment.Center
        layoutProperties: FlowListLayoutProperties {
        
        }
        
        }//steps
        Label {
            text: "Cal"
            textStyle.color: Color.create("#ffffff")
        }

        ImageButton {
        
        defaultImageSource: "images/circle.png"
        id: playareatwo
        
        verticalAlignment: VerticalAlignment.Bottom
        layoutProperties: StackLayoutProperties {
        
        }
        horizontalAlignment: HorizontalAlignment.Center
        
        
        } // playarea two end
        }
        
        Container {
            Label {
                text: "Miles"
                textStyle.color: Color.create("#ffffff")
            }

        horizontalAlignment: HorizontalAlignment.Center
        verticalAlignment: VerticalAlignment.Center
        layoutProperties: FlowListLayoutProperties {
        
        }
        layout: StackLayout {
        orientation: LayoutOrientation.LeftToRight

                    }
        topPadding: 50.0
        ImageButton {
        
        defaultImageSource: "images/circle.png"
        id: playareathree
        
        horizontalAlignment: HorizontalAlignment.Center
    
        }
        
        // playarea three end
        Label {
            text: "Activity"
            textStyle.color: Color.create("#ffffff")
                        

                    }

        ImageButton {
            
        
        defaultImageSource: "images/circle.png"
        id: playareafour
        
        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
        
        } // playarea four end
        
        }}}}
    Tab { //Second tab
        title: qsTr("Friends") + Retranslate.onLocaleOrLanguageChanged
        imageSource: "images/friends.png"
        Page {
            Container {
                Label {
                    text: qsTr("Second tab") + Retranslate.onLocaleOrLanguageChanged
                }
            }
        }
    } //End of second tab
}
