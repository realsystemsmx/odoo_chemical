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
        'danger_blue': fields.selection([('4','EXTREME'),
                                      ('3','HIGH'),
                                      ('2','MODERATE'),
                                      ('1','LIGHT'),
                                      ('0','INSIGNIFICANT'),
                                      ('*','CHRONIC HEALTH HAZARD'),],'Health Risk Code Blue', required=False),
        'danger_red': fields.selection([('4','EXTREME'),
                                      ('3','HIGH'),
                                      ('2','MODERATE'),
                                      ('1','LIGHT'),
                                      ('0','INSIGNIFICANT'),
                                      ('*','CHRONIC HEALTH HAZARD'),],'Fire Risk Code Red', required=False),
        'danger_yellow': fields.selection([('4','EXTREME'),
                                      ('3','HIGH'),
                                      ('2','MODERATE'),
                                      ('1','LIGHT'),
                                      ('0','INSIGNIFICANT'),
                                      ('*','CHRONIC HEALTH HAZARD'),],'Reactivity Risk Code Yellow', required=False),
        'danger_white': fields.char('Specific Risk Code White', size=50, required=False),
        'cas_number': fields.char('CAS Number', size=15, required=False), 
    }       
product()
