package at.qe.skeleton.services;

import at.qe.skeleton.model.Plant;
import at.qe.skeleton.repositories.LogRepository;
import at.qe.skeleton.repositories.PlantRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import java.util.Collection;


/**
 * Service for accessing and manipulating plant data.
 */
@Service
@Scope("application")
public class PlantService {
    @Autowired
    private PlantRepository plantRepository;

    @Autowired
    private LogRepository logRepository;


    /**
     * The method Returns a collection of all plants.
     */
    @PreAuthorize("permitAll()")
    public Collection<Plant> getAllPlants() {
        return plantRepository.findAll();
    }

    /**
     * The method Loads a single plant identified by its plantName.
     *
     * @param plantID the ID of the deck to load
     * @return the plant with the given ID
     */
    @PreAuthorize("permitAll()")
    public Plant loadPlant(Long plantID) {
        return plantRepository.findFirstByPlantID(plantID);
    }

    /**
     * The method Saves a single plant.
     * If the plant is new then creation Date will be saved along , if it is not then
     * the method will change the UpdateDate for this plant.
     *
     * @param plant the plant to save.
     * @return the saved plant.
     */
    @PreAuthorize("permitAll()")
    public Plant savePlant(Plant plant) {
        if (plant.isNew()) {
            plant.setCreateDate(LocalDate.now());
        } else {
            plant.setUpdateDate(LocalDate.now());
        }
        return plantRepository.save(plant);
    }

    /**
     * Deletes the plant.
     *
     * @param plant the plant to delete.
     */
    @PreAuthorize("hasAuthority('ADMIN')")
    public void deletePlant(Plant plant) {
        plantRepository.delete(plant);
    }


    /**
     * Method to set the plant repository for the service.
     * can be used for testing.
     *
     * @param plantRepository the plant repository that the service will be using.
     */
    public void setPlantRepository(PlantRepository plantRepository) {
        this.plantRepository = plantRepository;
    }


}


