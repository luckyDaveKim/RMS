package dave.dev.site.land;

import dave.dev.com.base.BaseVo;

import java.sql.Timestamp;

public class LandVo extends BaseVo {

    public enum SaleType {
        BUY("매매"), LEASE("전세"), RENT("월세");

        final private String name;

        private SaleType(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }
    }

    public enum SaleState {
        SALE("판매중"), SOLD_OUT("판매완료");

        final private String name;

        private SaleState(String name) {
            this.name = name;
        }

        public String getName() {
            return name;
        }
    }

    private SaleType saleType;
    private String address;
    private String buildingName;
    private String buildingNumber;
    private float area;
    private String floor;
    private String floorCnt;
    private int roomCnt;
    private int bathroomCnt;
    private Timestamp livingDate;
    private String memo;
    private String salesman;
    private String salesmnContact;
    private Timestamp creationDate;
    private Timestamp modificationDate;
    private SaleState saleState;
    private boolean used;
    private byte[] images;

    public SaleType getSaleType() {
        return saleType;
    }

    public void setSaleType(SaleType type) {
        this.saleType = type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBuildingName() {
        return buildingName;
    }

    public void setBuildingName(String buildingName) {
        this.buildingName = buildingName;
    }

    public String getBuildingNumber() {
        return buildingNumber;
    }

    public void setBuildingNumber(String buildingNumber) {
        this.buildingNumber = buildingNumber;
    }

    public float getArea() {
        return area;
    }

    public void setArea(float area) {
        this.area = area;
    }

    public String getFloor() {
        return floor;
    }

    public void setFloor(String floor) {
        this.floor = floor;
    }

    public String getFloorCnt() {
        return floorCnt;
    }

    public void setFloorCnt(String floorCnt) {
        this.floorCnt = floorCnt;
    }

    public int getRoomCnt() {
        return roomCnt;
    }

    public void setRoomCnt(int roomCnt) {
        this.roomCnt = roomCnt;
    }

    public int getBathroomCnt() {
        return bathroomCnt;
    }

    public void setBathroomCnt(int bathroomCnt) {
        this.bathroomCnt = bathroomCnt;
    }

    public Timestamp getLivingDate() {
        return livingDate;
    }

    public void setLivingDate(Timestamp livingDate) {
        this.livingDate = livingDate;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getSalesman() {
        return salesman;
    }

    public void setSalesman(String salesman) {
        this.salesman = salesman;
    }

    public String getSalesmnContact() {
        return salesmnContact;
    }

    public void setSalesmnContact(String salesmnContact) {
        this.salesmnContact = salesmnContact;
    }

    public Timestamp getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Timestamp creationDate) {
        this.creationDate = creationDate;
    }

    public Timestamp getModificationDate() {
        return modificationDate;
    }

    public void setModificationDate(Timestamp modificationDate) {
        this.modificationDate = modificationDate;
    }

    public SaleState getSaleState() {
        return saleState;
    }

    public void setSaleState(SaleState saleState) {
        this.saleState = saleState;
    }

    public boolean isUsed() {
        return used;
    }

    public void setUsed(boolean used) {
        this.used = used;
    }

}