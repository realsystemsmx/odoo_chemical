from osv import osv
from osv import fields

from tools import config
from tools.translate import _


class product(osv.osv):
    '''
    Open ERP Model
    '''
    _inherit = 'product.product' 
    _columns = {
        'specification_ids': fields.one2many('product_specification', 'product_id', 'Specification'),
    }       
product()
