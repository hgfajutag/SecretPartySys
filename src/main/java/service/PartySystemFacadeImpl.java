package service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import dto.DataSource;
import dto.DataSourceFactory;
import object.Host;
import object.Place;
import object.Location;
import object.PartyInstance;
import object.Guest;
import object.Reservation;
import object.PartyInstanceFactory;
import object.Pass;

public class PartySystemFacadeImpl {

	private DataSource dataSource = DataSourceFactory.getDataSource();
	
	
 
    public Reservation createReservation(String hostId, String pID, List<PartyInstance> partyInstances) {   
        Reservation reservation = new Reservation();
        PartyInstanceFactory.buildAPartyInstance(null, null, null);
     //      ReservationFactory.buildAReservation(reservation, guest, host, partyInstances);
        //    dataSource.getReservations().add(reservation);
            return reservation;
    
       
       
    }
    
}
