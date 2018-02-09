package dave.dev.com.enums;

/**
 * The enum No yes.
 */
public enum NoYes {
  /**
   * N no yes.
   */
  N(0, "False"),
  /**
   * Y no yes.
   */
  Y(1, "True");

  private final int code;
  private final String description;

  private NoYes(int code, String description) {
    this.code = code;
    this.description = description;
  }

  /**
   * Gets code.
   *
   * @return the code
   */
  public int getCode() {
    return code;
  }

  /**
   * Gets description.
   *
   * @return the description
   */
  public String getDescription() {
    return description;
  }
}