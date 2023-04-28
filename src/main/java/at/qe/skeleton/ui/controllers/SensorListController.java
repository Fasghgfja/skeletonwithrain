package at.qe.skeleton.ui.controllers;


import at.qe.skeleton.model.Measurement;
import at.qe.skeleton.model.Sensor;
import java.io.Serializable;
import java.util.Collection;

import at.qe.skeleton.model.SensorStation;
import at.qe.skeleton.services.SensorService;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

/**
 * The class is responsible for handling Sensors.
 */
@Getter
@Setter
@Component
@Scope("view")
public class SensorListController implements Serializable {

    @Autowired
    private SensorService sensorsService;

    @Autowired
    private SensorStationDetailController sensorStationDetailController;



    private Collection<Sensor> filteredSensorStations;



    /**
     * Returns a list of all sensors.
     */
    public Collection<Sensor> getSensors() {
        return sensorsService.getAllSensor();
    }


    public Collection<Sensor> getSensorsForSensorStation() {
        SensorStation sensorStation = sensorStationDetailController.getSensorStation();
        return sensorsService.getAllSensorsBySensorStation(sensorStation);
    }

    /**
     * Returns how many sensors are registered in the system.
     */
    public long getSensorsAmount() {
        return sensorsService.getSensorStationsAmount();
    }

}