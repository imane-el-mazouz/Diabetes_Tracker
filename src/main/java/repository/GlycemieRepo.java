package repository;

import model.Glycemie;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GlycemieRepo extends JpaRepository<Glycemie, Long> {
}
