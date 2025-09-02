@EndUserText.label: 'Table function without parameter'

define table function YI_AMDP_TF_NP
  with parameters
    @Environment.systemField: #CLIENT
    p_client : abap.clnt

returns

{
  mandt : abap.clnt;
  carrid : s_carr_id;
  connid : s_conn_id;
  fldate : s_date;
} 

implemented by method ycl_amdp_tf_np=>get_flights;
