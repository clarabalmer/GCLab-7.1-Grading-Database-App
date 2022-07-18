package co.grandcircus.GradingDatabase;

import java.util.List;
import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;

public interface GradeRepository extends MongoRepository<Grade, String> {
	List<Grade> findAll(); 
	Optional<Grade> findById(String id);
	Grade save(Grade entity);
	void deleteById(String id);
}
