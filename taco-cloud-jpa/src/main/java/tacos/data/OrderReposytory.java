package tacos.data;

import org.springframework.data.repository.CrudRepository;

import tacos.Order;

public interface OrderReposytory 
  extends CrudRepository<Order, Long> {

}
