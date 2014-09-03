# -*- coding: utf-8 -*-
from osv import osv,fields
from tools.translate import _
import time
from datetime import datetime

class risksticker_report_webkit_wizard(osv.osv_memory):
    _name = "riskstickerwebkitwizard"
    _description = "Risk Sticker"

    def onchange_calculate_net(self, cr, uid, ids, brute, tara, context=None):
        net=0
        if brute and tara:
           net=brute+tara                
        return {'value': {'net': net }}


    _columns = {
        'product_id': fields.many2one('product.product', 'Product', required=True,
            help="Product."),   
        'to_date':fields.date('Date'),
        # lote 
        'lot_number':fields.char('Lot Number',size=5,required=True),
        # cliente
       'partner_id': fields.many2one('res.partner', 'partner', required=True),
        # cantidad
        'quantity':fields.char('Quantity',size=5,required=True),    
        # Numero de pedido
        'sale_order':fields.char('Sale ORder',size=5,required=True),
        'partner_name':fields.char('partner_name', size=128, required=False),    		
		'brute':fields.float('Brute', required=False),
		'tara':fields.float('Tara', required=False),
		'net':fields.float('Net', required=False),
        'full_sticker': fields.boolean('Show full sticker', help='Indicate if the sticker will be printed with labels, danger rombo, precautions, Company Logo and Company Name.'),
        'state': fields.selection([('choose','choose'),
                                    ('get','get'),
                                   ]),
    }

    def create_report(self, cr, uid, ids, context={}):
        data = self.read(cr,uid,ids,)[-1]
        product = self.pool.get('product.product')
        product_ids = product.search(cr, uid, [('id', '=', data['product_id']),], context=context)
        partner = self.pool.get('res.partner')
        partner_data = partner.browse(cr, uid, data['partner_id'])
        if partner_data:
           data['partner_name']=partner_data.name
        return {
            'type'         : 'ir.actions.report.xml',
            'report_name'   : 'risksticker.report.webkit',
            'datas': {
                    'model':'product.product',
                    'id': context.get('active_ids') and context.get('active_ids')[0] or False,
                    'ids': product_ids and product_ids or [],
                    'report_type': 'webkit',
                    'form': data
                },
            'nodestroy': False
            }

    _defaults = {
#					 'precautions': lambda *a: 'FIRST AIDS:',
                     'full_sticker': lambda *a: 0,
                     'state': lambda *a: 'choose',
                                     }
risksticker_report_webkit_wizard()
