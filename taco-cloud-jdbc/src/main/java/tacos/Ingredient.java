package tacos;

import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.Getter;

@Data
@RequiredArgsConstructor
@Setter
@Getter
public class Ingredient {
  private final String id;
  private final String name;
  private final Type type;

  public static enum Type {
    WRAP, PROTEIN, VEGGIES, CHEESE, SAUCE
  }
}