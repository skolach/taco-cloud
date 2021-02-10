package tacos.data;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import tacos.Type;

public interface TypeRepository extends CrudRepository<Type, Integer>{

  @Query(value = "SELECT * FROM `type`", nativeQuery = true)
  public List<Type> findAllTypes();
  
}
