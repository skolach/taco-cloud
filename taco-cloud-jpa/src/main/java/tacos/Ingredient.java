package tacos;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
//@RequiredArgsConstructor
//@NoArgsConstructor(access = AccessLevel.PRIVATE, force = true)
@Entity
@Table(name = "INGREDIENT")
public class Ingredient {
  @Id
  private Long id;
  private String name;
  private Long type_id;
}