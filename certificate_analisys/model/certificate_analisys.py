from osv import osv
from osv import fields

from tools import config
from tools.translate import _



class certificate_determination(osv.osv):
    '''
    Open ERP Model Certificate Determination
    '''
    _name = 'certificate.determination' 
    _rec_name = 'determination'
    _columns = {
        'determination': fields.char('Determination', size=50, required=False),
    }       
certificate_determination()

class product_specification(osv.osv):
    '''
    Open ERP Model Product Specification
    '''
    _name = 'product.specification' 
    _rec_name = 'description'


    def onchange_product_det_id(self, cr, uid, ids, product_id, determination_id, context=None):
        description=''
        productname=''
        determinationname=''
        if determination_id:
           deter = self.pool.get('certificate.determination').browse(cr, uid, lot_id, context=context)
           determinationname=deter.name

        if product_id:
           prod = self.pool.get('product.product').browse(cr, uid, product_id, context=context)
           productname=prod.name  
                 
        description=productname + ' - ' + determinationname   
        return {'value': {'description': description }}


    _columns = {
        'description': fields.char('Description', size=50, required=False),        
		'product_id': fields.many2one('product.product', 'Product', required=True,
            help="Product."),
        'determination_id': fields.many2one('certificate.determination', 'Determination', required=True,
            help="Determination."),    
        'limits': fields.char('Limits', size=50, required=False),
    }       
product_specification()

class certificate_analisys(osv.osv):
    '''
    Open ERP Model Certificate of Analysis
    '''
    _name = 'certificate.analisys' 
    _rec_name = 'description'
        
    _columns = {
        'description': fields.char('Description', size=50, required=False),
        'certificate_date': fields.date("Date"),
		'product_id': fields.many2one('product.product', 'Product', required=True,
            help="Product."),
		'lot_id': fields.char('Lot Number', size=50, required=False), 
        'line_ids': fields.one2many('certificate.analisys.line', 'certificate_id', 'Certificate Lines', readonly=True, states={'draft': [('readonly', False)]}),          
    }       
certificate_analisys()


class certificate_analisys_line(osv.osv):
    '''
    Open ERP Model Certificate of Analysis
    '''
    _name = 'certificate.analisys.line' 
    _rec_name = 'description'
    _columns = {
        'certificate_id': fields.many2one('certificate.analisys', 'Certificate Analisys', required=True, ondelete='cascade', select=True ),
        'description': fields.char('Description', size=50, required=False),
		'specification_id': fields.many2one('product.specification', 'Specification', required=True, help="Product."),    
        'result': fields.char('Result', size=50, required=False,
            help="Results of Analisys."),
    }       
certificate_analisys_line()




