package tacos.data;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import tacos.Type;

public interface TypeRepository extends CrudRepository<Type, Integer>{

  @Query("SELECT name from TYPE")
  public List<String> getNames();
  
}
