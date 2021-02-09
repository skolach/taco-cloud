package tacos;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AccessLevel;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.NoArgsConstructor;

@Data
//@RequiredArgsConstructor
//@NoArgsConstructor(access = AccessLevel.PRIVATE, force = true)
@Entity

public class Ingredient {
  @Id
  private Long id;
  private String name;
  private Long type_id;
}