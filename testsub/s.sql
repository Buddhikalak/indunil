select                 
                        round((round(
                                sum((subtotal-(subtotal*commission/100)-(booking_fares.admin_charge))),2) + 
                                sum(round( ifnull(booking_fares.far_pickup_cutoff_allowance,0),2))+
                                sum(round( ifnull(booking_fares.cancel_charge,0),2))+
                                sum(round( ifnull(booking_fares.tip,0),2))+
                                sum(round( ifnull(booking_fares.pickup_charge_per_km,0),2))+
                                sum(round( ifnull(booking_fares.trip_allowance,0),2))+
                                ),2)as driver_total_income ,
                
                
                        from booking_fares 
                        where driverid  = '55' AND DATE (created) = CURDATE();


BRURWA


                        select  (
SUM(booking_fares.subtotal-(booking_fares.subtotal*commission/100)-(booking_fares.admin_charge))+
SUM(booking_fares.far_pickup_cutoff_allowance)+
SUM(booking_fares.far_pickup_cutoff_allowance)+
SUM(booking_fares.cancel_charge)+
SUM(booking_fares.tip)+
SUM(booking_fares.pickup_charge_per_km)+
SUM(booking_fares.trip_allowance))AS ddd FROM  booking_fares  where driverid  = 50 AND DATE (created) = CURDATE();
