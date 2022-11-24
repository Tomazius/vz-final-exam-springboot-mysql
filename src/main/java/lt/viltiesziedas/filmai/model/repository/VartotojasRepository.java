package lt.viltiesziedas.filmai.model.repository;

import lt.viltiesziedas.filmai.model.entity.Vartotojas;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VartotojasRepository extends JpaRepository <Vartotojas, Integer> {

    Vartotojas findById(int id);
    Vartotojas findByUsername(String username);

    Vartotojas findByElpastas(String elpastas);
    List<Vartotojas> findAll();

    boolean existsByUsername(String username);
    boolean existsByElpastas(String elpastas);
}
