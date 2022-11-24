package lt.viltiesziedas.filmai.model.repository;

import lt.viltiesziedas.filmai.model.entity.Privilegijos;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PrivilegijosRepository extends JpaRepository <Privilegijos, Integer> {

    Privilegijos findById(int id);
    Privilegijos findByPavadinimas(String pavadinimas);
}
