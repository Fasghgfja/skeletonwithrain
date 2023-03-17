package at.qe.skeleton.api.services;

import at.qe.skeleton.api.exceptions.MeasurementNotFoundException;
import at.qe.skeleton.api.model.Measurement;
import org.springframework.stereotype.Service;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;

@Service
public class MeasurementService {

    private static final AtomicLong ID_COUNTER = new AtomicLong(1);
    private static final ConcurrentHashMap<Long, Measurement> measurements = new ConcurrentHashMap<>();

    public Measurement addMeasurement(Measurement measurement){
        Measurement newMeasurement = new Measurement();
        newMeasurement.setId(ID_COUNTER.getAndIncrement());
        newMeasurement.setPlantID(measurement.getPlantID());
        newMeasurement.setUnit(measurement.getUnit());
        newMeasurement.setValue(measurement.getValue());
        newMeasurement.setType(measurement.getType());

        measurements.put(newMeasurement.getId(), newMeasurement);

        return newMeasurement;
    }

    public Measurement findOneMeasurement(Long id) throws MeasurementNotFoundException {
        Measurement measurement = measurements.get(id);
        if(measurement != null){
            return measurement;
        }
        else{
            throw new MeasurementNotFoundException();
        }
    }
}