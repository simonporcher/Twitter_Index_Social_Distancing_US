**REPLICATION FILES FOR PORCHER AND RENAULT 2021 - PLOS ONE**

*\Table 1*\

reg residential_percent twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain.tex, replace ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg workplaces_percent_change_from_b twitter_sd new_cases_pop stay_home_order   school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id)
outreg2 using mynewregmain.tex, append ctitle(Workplaces) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg grocery_and_pharmacy_percent_cha  twitter_sd new_cases_pop stay_home_order   school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain.tex, append ctitle(Grocery and pharmacy) keep(twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg retail_and_recreation_percent_ch twitter_sd new_cases_pop stay_home_order   school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id)
outreg2 using mynewregmain.tex, append ctitle(Retail and recreation) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg transit_stations_percent_change_ twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id)
outreg2 using mynewregmain.tex, append ctitle(Transit stations) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg parks_percent_change_from_baseli twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id)
outreg2 using mynewregmain.tex, append ctitle(Parks) keep(twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

*\Table 2*\

reg residential_percent twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain1.tex, replace ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, Yes) 

reg residential_percent twitter_sd_like new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain1.tex, append ctitle(Residential) keep( twitter_sd_like new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, Yes) 

reg residential_percent twitter_sd_ret new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain1.tex, append ctitle(Residential) keep( twitter_sd_retweet new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, Yes) 

reg residential_percent twitter_sd_reply new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain1.tex, append ctitle(Residential) keep( twitter_sd_reply new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, Yes) 

egen std1 = std(twitter_sd)
egen std2 = std(twitter_sd_like)
egen std3 = std(twitter_sd_ret)
egen std4 = std(twitter_sd_reply)

reg residential_percent std1 new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain1.tex, replace ctitle(Residential) keep( std1 new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, Yes) 

reg residential_percent std2 new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain1.tex, append ctitle(Residential) keep( std2 new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, Yes) 

reg residential_percent std3 new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain1.tex, append ctitle(Residential) keep( std3 new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, Yes) 

reg residential_percent std4 new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain1.tex, append ctitle(Residential) keep( std4 new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, Yes) 


*\Table 3*\

reg residential_percent twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain11.tex, replace ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg workplaces_percent_change_from_b twitter_sd new_cases_pop stay_home_order  stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id)
outreg2 using mynewregmain11.tex, append ctitle(Workplaces) keep( twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg grocery_and_pharmacy_percent_cha  twitter_sd new_cases_pop stay_home_order stay_home_order_rep  school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewregmain11.tex, append ctitle(Grocery and pharmacy) keep(twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg retail_and_recreation_percent_ch twitter_sd new_cases_pop stay_home_order stay_home_order_rep  school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id)
outreg2 using mynewregmain11.tex, append ctitle(Retail and recreation) keep( twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg transit_stations_percent_change_ twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id)
outreg2 using mynewregmain11.tex, append ctitle(Transit stations) keep( twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg parks_percent_change_from_baseli twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id)
outreg2 using mynewregmain11.tex, append ctitle(Parks) keep(twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

*\Table 4*\

reg residential_percent twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature  , r cluster(id)
outreg2 using mynewregmain11b.tex, replace ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg residential_percent twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature i.d, r cluster(id)
outreg2 using mynewregmain11b.tex, append ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg residential_percent twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature i.id, r cluster(id)
outreg2 using mynewregmain11b.tex, append ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg residential_percent twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature i.d i.id, r cluster(id)
outreg2 using mynewregmain11b.tex, append ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg residential_percent twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature i.id i.time_sregion_, r cluster(id)
outreg2 using mynewregmain11b.tex, append ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg residential_percent twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature i.id i.time_id_fe , r cluster(id)
outreg2 using mynewregmain11b.tex, append ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order stay_home_order_rep school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

*\Table Appendix B4 part 1*\

reg residential_percent L(1).residential_percent L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewa1.tex, replace ctitle(Residential) keep( L(1/2).residential_percent L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg workplaces_percent_change_from_b L(1).workplaces_percent_change_from_b L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order   school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id) 
outreg2 using mynewa1.tex, append ctitle(Workplaces) keep(L(1/2).workplaces_percent_change_from_b L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg grocery_and_pharmacy_percent_cha L(1).grocery_and_pharmacy L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order   school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, r cluster(id) 
outreg2 using mynewa1.tex, append ctitle(Grocery and pharmacy) keep(L(1/2).grocery_and_pharmacy L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg retail_and_recreation_percent_ch L(1).retail_and_recre L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order   school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id) 
outreg2 using mynewa1.tex, append ctitle(Retail and recreation) keep(L(1/2).retail_and_recre L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg transit_stations_percent_change_ L(1).transit L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id) 
outreg2 using mynewa1.tex, append ctitle(Transit stations) keep(L(1/2).transit L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg parks_percent_change_from_baseli L(1).parks L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,r cluster(id) 
outreg2 using mynewa1.tex, append ctitle(Parks) keep(L(1/2).parks L(0/1).twitter_sd L(0/1).new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES)

*\Table Appendix B5 part 2*\

reg d.residential_percent  d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature i.time_sregion_ i.id, r cluster(id)
outreg2 using mynewa.tex, replace ctitle(Residential) keep( d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg d.workplaces_percent_change_from_b d.twitter_sd  d.new_cases_pop stay_home_order   school_closure gather_restriction business_closure d.precipitation d.temperature i.time_sregion_ i.id,r cluster(id) 
outreg2 using mynewa.tex, append ctitle(Workplaces) keep( d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

reg d.grocery_and_pharmacy_percent_cha d.twitter_sd  d.new_cases_pop stay_home_order   school_closure gather_restriction business_closure d.precipitation d.temperature i.time_sregion_ i.id, r cluster(id) 
outreg2 using mynewa.tex, append ctitle(Grocery and pharmacy) keep(d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg d.retail_and_recreation_percent_ch d.twitter_sd  d.new_cases_pop stay_home_order   school_closure gather_restriction business_closure d.precipitation d.temperature i.time_sregion_ i.id,r cluster(id) 
outreg2 using mynewa.tex, append ctitle(Retail and recreation) keep(d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg d.transit_stations_percent_change_ d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature i.time_sregion_ i.id,r cluster(id) 
outreg2 using mynewa.tex, append ctitle(Transit stations) keep( d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature ) addtext(State FE, Yes, Division*Time FE, YES)

reg d.parks_percent_change_from_baseli d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature i.time_sregion_ i.id,r cluster(id) 
outreg2 using mynewa.tex, append ctitle(Parks) keep(d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature) addtext(State FE, Yes, Division*Time FE, YES)


*\Table B4 part 1 and 2*\
xtscc mob_resid twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ , fe lag(4)
outreg2 using mynewPO.tex, replace ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

xtscc mob_work twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ , fe lag(4)
outreg2 using mynewPO.tex, append ctitle(Workplaces) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

xtscc mob_gro twitter_sd  new_cases_pop stay_home_order   school_closure gather_restriction business_closure d.precipitation d.temperature i.time_sregion_ i.id, fe lag(4)
outreg2 using mynewPO.tex, append ctitle(Grocery and pharmacy) keep(d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature ) addtext(State FE, Yes, Division*Time FE, YES)

xtscc mob_ret twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ , fe lag(4)
outreg2 using mynewPO.tex, append ctitle(Retail and recreation) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

xtscc mob_transit twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ , fe lag(4)
outreg2 using mynewPO.tex, append ctitle(Transit Stations) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

xtscc mob_park twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ , fe lag(4)
outreg2 using mynewPO.tex, append ctitle(Parks) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

newey mob_resid twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,  lag(4) force
outreg2 using mynewPO.tex, replace ctitle(Residential) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

newey mob_work twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,  lag(4) force
outreg2 using mynewPO.tex, append ctitle(Workplaces) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

newey mob_gro twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,  lag(4) force
outreg2 using mynewPO.tex, append ctitle(Grocery and pharmacy) keep(d.twitter_sd  d.new_cases_pop stay_home_order school_closure gather_restriction business_closure d.precipitation d.temperature ) addtext(State FE, Yes, Division*Time FE, YES)

newey mob_ret twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id,  lag(4) force
outreg2 using mynewPO.tex, append ctitle(Retail and recreation) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

newey mob_transit twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, lag(4) force
outreg2 using mynewPO.tex, append ctitle(Transit Stations) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 

newey mob_park twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature i.time_sregion_ i.id, lag(4) force
outreg2 using mynewPO.tex, append ctitle(Parks) keep( twitter_sd new_cases_pop stay_home_order school_closure gather_restriction business_closure precipitation temperature ) addtext(State FE, Yes, Division*Time FE, YES) 


