package at.qe.skeleton.api.services;


import at.qe.skeleton.api.exceptions.MeasurementNotFoundException;
import at.qe.skeleton.api.model.Measurement2;
import at.qe.skeleton.model.Measurement;
import at.qe.skeleton.model.SensorStation;
import at.qe.skeleton.repositories.MeasurementRepository;
import at.qe.skeleton.services.SensorStationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;


@Service
public class MeasurementServiceApi {

    @Autowired
    MeasurementRepository measurementRepository;
    @Autowired
    SensorStationService sensorStationService;

    //TODO: what is this ? why does it search from this hashmap and not the repository?
    private static final ConcurrentHashMap<Long, Measurement> measurements = new ConcurrentHashMap<>();
    public Measurement findOneMeasurement(Long id) throws MeasurementNotFoundException {
        Measurement measurement = measurements.get(id);
        if (measurement != null)
            return measurement;
        else
            throw new MeasurementNotFoundException();
    }


    /**
     * This method is called to store the reseived measurements into the database
     * @param measurement
     * @throws MeasurementNotFoundException
     */
    public void addMeasurement(Measurement2 measurement) throws MeasurementNotFoundException {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime dateTime = LocalDateTime.parse(measurement.getTime_stamp(), formatter);

        Measurement measurement1 = new Measurement();
        SensorStation sensorStation = sensorStationService.loadSensorStation(measurement.getSensorStation());
        measurement1.setSensorStation(sensorStation);
        measurement1.setType(measurement.getType());
        measurement1.setTimestamp(dateTime);
        measurement1.setValue_s(measurement.getValue());
        measurementRepository.save(measurement1);
        System.out.println(measurement1.toString());

    }





}
