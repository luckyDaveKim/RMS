package dave.dev.com.paging;

import dave.dev.com.base.BaseVo;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/**
 * The type Paging base vo.
 *
 * @param <T> the type parameter
 */
public class PagingVo<T> extends BaseVo implements PagingCondition {

    private static final int DEFAULT_ROW_SIZE = 10;
    private static final int DEFAULT_PAGE_SIZE = 10;

    private List<T> list;       // 리스트 객체
    private int curPage = 1;    // 현재 페이지 번호
    private int rowCount;       // 전체 로우 수
    private int rowSize = DEFAULT_ROW_SIZE;     // 페이지 당 로우 수
    private int pageSize = DEFAULT_PAGE_SIZE;   // 블럭 당 페이지 수

    public List getList() {
        return list;
    }

    public void setList(List list) {
//        List<T> tempList = new LinkedList<T>();
//        Collections.copy(tempList, list);
//        this.list = tempList;
    }

    public int getRowSize() {
        return rowSize;
    }

    public void setRowSize(Integer rowSize) {
        this.rowSize = rowSize;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = (pageSize == null || pageSize <= 0) ? 1 : pageSize;
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(Integer curPage) {
        this.curPage = (curPage == null || curPage <= 0) ? 1 : curPage;
    }

    /**
     * 전체 게시물 수 반환
     * Gets row count.
     *
     * @return the row count
     */
    private int getRowCount() {
        return this.rowCount;
    }

    public void setRowCount(Integer rowCount) {
        this.rowCount = (rowCount == null || rowCount <= 0) ? 1 : rowCount;
    }

    /**
     * 전체 블럭 수 반환
     * Gets block size.
     *
     * @return the block size
     */
    private int getBlockSize() {
        return 0;
    }

    /**
     * 현재 블럭 반환
     * Gets cur block.
     *
     * @return the cur block
     */
    private int getCurBlock() {
        return 0;
    }

    public int getStartRow() {
        return ((getCurPage() - 1) * getRowSize()) + 1;
    }

    public int getEndRow() {
        return getStartRow() + getRowSize() - 1;
    }

    public int getStartPage() {
        return 0;
    }

    public int getEndPage() {
        return 0;
    }

    /**
     * 전체 페이지 수 반환
     * Gets page cnt.
     *
     * @return the page cnt
     */
    public int getPageCnt() {
        return 0;
    }

    public boolean isFirstBlock() {
        return false;
    }

    public boolean isLastBlock() {
        return false;
    }

}