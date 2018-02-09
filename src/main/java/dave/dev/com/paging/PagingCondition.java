package dave.dev.com.paging;

import java.util.List;

/**
 * The interface Paging condition.
 *
 * @param <T> the type parameter
 */
public interface PagingCondition<T> {

  /**
   * 현재 페이지 게시물 리스트 반환
   * Gets list.
   *
   * @return the list
   */
  public List<T> getList();

  /**
   * 현재 페이지 게시물 리스트 설정
   * Sets list.
   *
   * @param list the list
   */
  public void setList(List<T> list);

  /**
   * 페이지 당 로우 수 반환
   * Gets row size.
   *
   * @return the row size
   */
  public int getRowSize();

  /**
   * 페이지 당 로우 수 설정
   * Sets row size.
   *
   * @param rowSize the row size
   */
  public void setRowSize(Integer rowSize);

  /**
   * 블럭 당 페이지 수 반환
   * Gets page size.
   *
   * @return the page size
   */
  public int getPageSize();

  /**
   * 블럭 당 페이지 수 설정
   * Sets page size.
   *
   * @param pageSize the page size
   */
  public void setPageSize(Integer pageSize);

  /**
   * 현재 페이지 번호 반환
   * Gets cur page.
   *
   * @return the cur page
   */
  public int getCurPage();

  /**
   * 현재 페이지 번호 설정
   * Sets cur page.
   *
   * @param curPage the cur page
   */
  public void setCurPage(Integer curPage);

//    /**
//     * 전체 게시물 수 반환
//     * Gets row count.
//     *
//     * @return the row count
//     */
//    public int getRowCount();

  /**
   * 전체 게시물 수 설정
   * Sets row count.
   *
   * @param rowCount the row count
   */
  public void setRowCount(Integer rowCount);

//    /**
//     * 전체 블럭 수 반환
//     * Gets block size.
//     *
//     * @return the block size
//     */
//    public int getBlockSize();

//    /**
//     * 현재 블럭 반환
//     * Gets cur block.
//     *
//     * @return the cur block
//     */
//    public int getCurBlock();

  /**
   * 현재 페이지 시작 로우 번호 반환
   * Gets start row.
   *
   * @return the start row
   */
  public int getStartRow();

  /**
   * 현재 페이지 종료 로우 번호 반환
   * Gets end row.
   *
   * @return the end row
   */
  public int getEndRow();

  /**
   * 현재 블럭 시작 페이지 번호 반환
   * Gets start page.
   *
   * @return the start page
   */
  public int getStartPage();

  /**
   * 현재 블럭 종료 페이지 번호 반환
   * Gets end page.
   *
   * @return the end page
   */
  public int getEndPage();

//    /**
//     * 전체 페이지 수 반환
//     * Gets page cnt.
//     *
//     * @return the page cnt
//     */
//    public int getPageCnt();

  /**
   * 현재 블럭이 첫번째 블럭인지 반환
   * Is first block boolean.
   *
   * @return the boolean
   */
  public boolean isFirstBlock();

  /**
   * 현재 블럭이 마지막 블럭인지 반환
   * Is last block boolean.
   *
   * @return the boolean
   */
  public boolean isLastBlock();

}
