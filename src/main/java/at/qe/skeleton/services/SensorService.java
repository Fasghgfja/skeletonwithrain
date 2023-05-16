package at.qe.skeleton.services;

import at.qe.skeleton.model.Sensor;
import at.qe.skeleton.model.SensorStation;
import at.qe.skeleton.repositories.LogRepository;
import at.qe.skeleton.repositories.SensorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import java.util.Collection;


@Service
@Scope("application")
public class SensorService {


    @Autowired
    private SensorRepository sensorRepository;
    @Autowired
    private LogRepository logRepository;


    public Collection<Sensor> getAllSensor() {
        return sensorRepository.findAll();
    }

    //TODO: if this works implement all similar functions this way
    public Collection<Sensor> getAllSensorsBySensorStation(SensorStation station) {
        return sensorRepository.findSensorsBySensorStation(station);
    }

    //TODO: check if we have sensor data and answer true or false
    public boolean areSensorsPresent(SensorStation station) {
      if (sensorRepository.countSensors(station) > 0) return true;
      else {return false;}
    }


    @PreAuthorize("hasAuthority('ADMIN')")
    public Sensor loadSensor(Long id) {
        return sensorRepository.findFirstById(id);
    }


    @PreAuthorize("hasAuthority('ADMIN')")
    public Sensor saveSensor(Sensor sensor) {
        if (sensor.isNew()) {
            sensor.setCreateDate(LocalDate.now());
        } else {
            sensor.setUpdateDate(LocalDate.now());
        }
        return sensorRepository.save(sensor);
    }



    public String getSensorStatus(String type, SensorStation sensorStation) {//todo:change to real naming for types with SH
        Sensor sensor = null;
        if (type.equals("TEMPERATURE")) { sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"TempSensor");}
        if (type.equals("LIGHT_INTENSITY")) {sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"LigthSensor");}
        if (type.equals("HUMIDITY")) {sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"HygroSensor");}
        if (type.equals("AIR_QUALITY")) {sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"GasSensor");}
        if (type.equals("AIR_PRESSURE")) {sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"PressureSensor");}
        if (type.equals("SOIL_MOISTURE")) {sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"humiditySensor");}
        if (sensor == null ) {return "OK";}
        if (sensor.getAlarm_count() < 3 ) {return "OK";} //TODO set the alarm count to chat we want
        else {return "Wrong";}
    }



    public Sensor getSensorForSensorStation(SensorStation sensorStation, String type) {//todo:change to real naming for types with SH
        Sensor sensor = null;
        if (type.equals("TEMPERATURE")) { sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"TempSensor");}
        if (type.equals("LIGHT_INTENSITY")) {sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"LigthSensor");}
        if (type.equals("HUMIDITY")) {sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"HygroSensor");}
        if (type.equals("AIR_QUALITY")) {sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"GasSensor");}
        if (type.equals("AIR_PRESSURE")) {sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"PressureSensor");}
        if (type.equals("SOIL_MOISTURE")) {sensor = sensorRepository.findFirstBySensorStationAndType(sensorStation,"humiditySensor");}
        return sensor;
    }

















    //TODO: implement logging , like it was it crashes the db
    @PreAuthorize("hasAuthority('ADMIN')")
    public void deleteSensor(Sensor sensor) {
       // Log deleteLog = new Log();

       // deleteLog.setDate(LocalDate.now());
       // deleteLog.setSubject("SENSOR STATION DELETION");
       // deleteLog.setText("DELETED SENSOR STATION: " + sensor.getId());

      //  logRepository.save(deleteLog);
        sensorRepository.delete(sensor);
    }


    //TODO: push this down to repository and queue , it is too expensive here

    public long getSensorStationsAmount() {
        return sensorRepository.count();
    }



}
