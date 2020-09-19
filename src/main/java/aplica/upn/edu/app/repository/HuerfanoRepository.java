package aplica.upn.edu.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import aplica.upn.edu.app.model.Huerfano;
@Repository
public interface HuerfanoRepository extends JpaRepository<Huerfano, Integer> {

}
	