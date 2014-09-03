# -*- coding: utf-8 -*-
##############################################################################
#
#    For OpenERP, Open Source Management Solution
#    Copyright (C) Real Systems Carlos Enrique Contreras Vara (<http://www.realsystems.com.mx>).
#    carlosecv@realsystems.com.mx 
#    
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################
{
    "name" : "Chemical Risk Label Product",
    "version" : "0.0.1",
    "author" : "Real Systems <carlosecv@realsystems.com.mx",
    "category" : "Customization",
    "depends" : ["base",  "product", 
    "report_webkit"  ],
    "description": """
Module for chemical product risk label
===============================================

.. image:: /risk_label_product/static/src/img/logo-realsystems.png
   
*Developed by: Real Systems

*Coded by: Carlos Enrique Contreras Vara
         
    """,
    "images" : [ "images/riesgo.png", "images/logo-realsystems.png" ],
    "init_xml" : [
							
                ],
    'css': ['static/src/css/style_risk_label.css'],
    "demo_xml" : [],
    "data" : [
        "report/data.xml",
        "report/risksticker_report_webkit.xml"
    ],
    "update_xml" : [ 
                     "wizard/risksticker_report_webkit_wizard.xml",                      	
                     "view/product_view.xml",                   
                    ],
    'application': True,
    "installable": True,
    "active": False
}

# vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:
