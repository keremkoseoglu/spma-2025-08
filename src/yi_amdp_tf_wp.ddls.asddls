@EndUserText.label: 'table function with parameter'
define table function YI_AMDP_TF_WP
with parameters 
@Environment.systemField: #CLIENT
p_client: abap.clnt,
p_carrid: s_carr_id

returns {
mandt : abap.clnt;
carrid : s_carr_id;
connid: s_conn_id;
fldate: s_date;
  
}
implemented by method ycl_amdp_tf_wp=>get_flights;
