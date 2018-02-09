package dave.dev.site.land;

import dave.dev.com.base.BaseVo;

/**
 * The type Land vo.
 */
public class LandVo extends BaseVo {

  /**
   * The enum Sale type.
   */
  public enum SaleType {
    /**
     * Buy sale type.
     */
    BUY(1, "매매"),
    /**
     * Lease sale type.
     */
    LEASE(2, "전세"),
    /**
     * Rent sale type.
     */
    RENT(3, "월세");

    private final int code;
    private final String description;

    SaleType(int code, String description) {
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

  /**
   * The enum Sale state.
   */
  public enum SaleState {
    /**
     * Sale sale state.
     */
    SALE(1, "판매중"),
    /**
     * Sold out sale state.
     */
    SOLD_OUT(2, "판매완료");

    private final int code;
    private final String description;

    SaleState(int code, String description) {
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

  private Integer landSq;             // 매물 코드
  private SaleType saleType;          // 매물 구분
  private String address;             // 주소
  private String buildingName;        // 건물명
  private String buildingNumber;      // 호 수
  private Float supplyArea;           // 공급 면적
  private Float exclusiveArea;        // 전용 면적
  private Float stake;                // 지분
  private Integer deposit;            // 보증금(전세, 매매금)
  private Integer latestDeposit;      // 이전 보증금(전세, 매매금)
  private Integer rentPrice;          // 월세
  private Integer latestRentPrice;    // 이전 월세
  private Integer floor;              // 해당층
  private Integer floorSize;          // 총층
  private Integer roomCount;          // 방수
  private Integer bathroomCount;      // 욕실수
  private String liveableDate;        // 입주 가능일
  private String memo;                // 상세정보
  private String salesman;            // 판매자
  private String salesmanContact;     // 판매자 연락처
  private String creationDateTime;    // 생성날짜
  private String modificationDateTime;// 수정날짜
  private SaleState saleState;        // 판매 상태

  /**
   * Gets land sq.
   *
   * @return the land sq
   */
  public Integer getLandSq() {
    return landSq;
  }

  /**
   * Sets land sq.
   *
   * @param landSq the land sq
   */
  public void setLandSq(Integer landSq) {
    this.landSq = landSq;
  }

  /**
   * Gets sale type.
   *
   * @return the sale type
   */
  public SaleType getSaleType() {
    return saleType;
  }

  /**
   * Sets sale type.
   *
   * @param saleType the sale type
   */
  public void setSaleType(SaleType saleType) {
    this.saleType = saleType;
  }

  /**
   * Gets address.
   *
   * @return the address
   */
  public String getAddress() {
    return address;
  }

  /**
   * Sets address.
   *
   * @param address the address
   */
  public void setAddress(String address) {
    this.address = address;
  }

  /**
   * Gets building name.
   *
   * @return the building name
   */
  public String getBuildingName() {
    return buildingName;
  }

  /**
   * Sets building name.
   *
   * @param buildingName the building name
   */
  public void setBuildingName(String buildingName) {
    this.buildingName = buildingName;
  }

  /**
   * Gets building number.
   *
   * @return the building number
   */
  public String getBuildingNumber() {
    return buildingNumber;
  }

  /**
   * Sets building number.
   *
   * @param buildingNumber the building number
   */
  public void setBuildingNumber(String buildingNumber) {
    this.buildingNumber = buildingNumber;
  }

  /**
   * Gets supply area.
   *
   * @return the supply area
   */
  public Float getSupplyArea() {
    return supplyArea;
  }

  /**
   * Sets supply area.
   *
   * @param supplyArea the supply area
   */
  public void setSupplyArea(Float supplyArea) {
    this.supplyArea = supplyArea;
  }

  /**
   * Gets exclusive area.
   *
   * @return the exclusive area
   */
  public Float getExclusiveArea() {
    return exclusiveArea;
  }

  /**
   * Sets exclusive area.
   *
   * @param exclusiveArea the exclusive area
   */
  public void setExclusiveArea(Float exclusiveArea) {
    this.exclusiveArea = exclusiveArea;
  }

  /**
   * Gets stake.
   *
   * @return the stake
   */
  public Float getStake() {
    return stake;
  }

  /**
   * Sets stake.
   *
   * @param stake the stake
   */
  public void setStake(Float stake) {
    this.stake = stake;
  }

  /**
   * Gets deposit.
   *
   * @return the deposit
   */
  public Integer getDeposit() {
    return deposit;
  }

  /**
   * Sets deposit.
   *
   * @param deposit the deposit
   */
  public void setDeposit(Integer deposit) {
    this.deposit = deposit;
  }

  /**
   * Gets latest deposit.
   *
   * @return the latest deposit
   */
  public Integer getLatestDeposit() {
    return latestDeposit;
  }

  /**
   * Sets latest deposit.
   *
   * @param latestDeposit the latest deposit
   */
  public void setLatestDeposit(Integer latestDeposit) {
    this.latestDeposit = latestDeposit;
  }

  /**
   * Gets rent price.
   *
   * @return the rent price
   */
  public Integer getRentPrice() {
    return rentPrice;
  }

  /**
   * Sets rent price.
   *
   * @param rentPrice the rent price
   */
  public void setRentPrice(Integer rentPrice) {
    this.rentPrice = rentPrice;
  }

  /**
   * Gets latest rent price.
   *
   * @return the latest rent price
   */
  public Integer getLatestRentPrice() {
    return latestRentPrice;
  }

  /**
   * Sets latest rent price.
   *
   * @param latestRentPrice the latest rent price
   */
  public void setLatestRentPrice(Integer latestRentPrice) {
    this.latestRentPrice = latestRentPrice;
  }

  /**
   * Gets floor.
   *
   * @return the floor
   */
  public Integer getFloor() {
    return floor;
  }

  /**
   * Sets floor.
   *
   * @param floor the floor
   */
  public void setFloor(Integer floor) {
    this.floor = floor;
  }

  /**
   * Gets floor size.
   *
   * @return the floor size
   */
  public Integer getFloorSize() {
    return floorSize;
  }

  /**
   * Sets floor size.
   *
   * @param floorSize the floor size
   */
  public void setFloorSize(Integer floorSize) {
    this.floorSize = floorSize;
  }

  /**
   * Gets room count.
   *
   * @return the room count
   */
  public Integer getRoomCount() {
    return roomCount;
  }

  /**
   * Sets room count.
   *
   * @param roomCount the room count
   */
  public void setRoomCount(Integer roomCount) {
    this.roomCount = roomCount;
  }

  /**
   * Gets bathroom count.
   *
   * @return the bathroom count
   */
  public Integer getBathroomCount() {
    return bathroomCount;
  }

  /**
   * Sets bathroom count.
   *
   * @param bathroomCount the bathroom count
   */
  public void setBathroomCount(Integer bathroomCount) {
    this.bathroomCount = bathroomCount;
  }

  /**
   * Gets liveable date.
   *
   * @return the liveable date
   */
  public String getLiveableDate() {
    return liveableDate;
  }

  /**
   * Sets liveable date.
   *
   * @param liveableDate the liveable date
   */
  public void setLiveableDate(String liveableDate) {
    this.liveableDate = liveableDate;
  }

  /**
   * Gets memo.
   *
   * @return the memo
   */
  public String getMemo() {
    return memo;
  }

  /**
   * Sets memo.
   *
   * @param memo the memo
   */
  public void setMemo(String memo) {
    this.memo = memo;
  }

  /**
   * Gets salesman.
   *
   * @return the salesman
   */
  public String getSalesman() {
    return salesman;
  }

  /**
   * Sets salesman.
   *
   * @param salesman the salesman
   */
  public void setSalesman(String salesman) {
    this.salesman = salesman;
  }

  /**
   * Gets salesman contact.
   *
   * @return the salesman contact
   */
  public String getSalesmanContact() {
    return salesmanContact;
  }

  /**
   * Sets salesman contact.
   *
   * @param salesmanContact the salesman contact
   */
  public void setSalesmanContact(String salesmanContact) {
    this.salesmanContact = salesmanContact;
  }

  /**
   * Gets creation date time.
   *
   * @return the creation date time
   */
  public String getCreationDateTime() {
    return creationDateTime;
  }

  /**
   * Sets creation date time.
   *
   * @param creationDateTime the creation date time
   */
  public void setCreationDateTime(String creationDateTime) {
    this.creationDateTime = creationDateTime;
  }

  /**
   * Gets modification date time.
   *
   * @return the modification date time
   */
  public String getModificationDateTime() {
    return modificationDateTime;
  }

  /**
   * Sets modification date time.
   *
   * @param modificationDateTime the modification date time
   */
  public void setModificationDateTime(String modificationDateTime) {
    this.modificationDateTime = modificationDateTime;
  }

  /**
   * Gets sale state.
   *
   * @return the sale state
   */
  public SaleState getSaleState() {
    return saleState;
  }

  /**
   * Sets sale state.
   *
   * @param saleState the sale state
   */
  public void setSaleState(SaleState saleState) {
    this.saleState = saleState;
  }

}