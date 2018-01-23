package dave.dev.com.base;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.dao.DataAccessException;

import javax.annotation.Resource;
import java.util.List;

/**
 * The type Base dao.
 */
public class BaseDao extends SqlSessionDaoSupport {

    @Resource(name = "sqlSession")
    @Override
    public void setSqlSessionFactory(SqlSessionFactory sqlSession) {
        super.setSqlSessionFactory(sqlSession);
    }

    /**
     * 단건 조회
     * Select object.
     *
     * @param statement the statement
     * @param param     the param
     * @return the object
     * @throws DataAccessException the data access exception
     */
    protected Object select(String statement, Object param) throws DataAccessException {
        return getSqlSession().selectOne(statement, param);
    }

    /**
     * 페이지 조회
     * List list.
     *
     * @param <T>       the type parameter
     * @param statement the statement
     * @param parameter the parameter
     * @return the list
     * @throws DataAccessException the data access exception
     */
    protected <T> List<T> list(String statement, Object parameter) throws DataAccessException {
        return getSqlSession().selectList(statement, parameter);
    }

    /*protected <T> PagingInfo<T> page(String statement, PagingCondition parameter) throws DataAccessException {
        return page(statement, null, parameter);
    }*/

    /*protected <T> PagingInfo<T> page(String listStatement, String countStatement, PagingCondition parameter) throws DataAccessException {
        // 리스트 쿼리
        List<T> list = list(listStatement, parameter);

        // 카운트 쿼리
        int count = 0;

        if (countStatement != null && countStatement.length() > 0) {
            count = (Integer) select(countStatement, parameter);
        } else if (list != null && list.size() > 0 && PropertyUtils.isReadable(list.get(0), "rowCount")) {
            try {
                count = (Integer) PropertyUtils.getProperty(list.get(0), "rowCount");
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        // 페이지 정보 객체 생성
        PagingInfo<T> pageInfo = new PagingInfo<T>(list, count, parameter.getCurPage(), parameter.getRowSize(), parameter.getPageSize());

        return pageInfo;
    }*/

    /**
     * 등록
     * Insert int.
     *
     * @param statement the statement
     * @param parameter the parameter
     * @return the int
     * @throws DataAccessException the data access exception
     */
    protected int insert(String statement, Object parameter) throws DataAccessException {
        return getSqlSession().insert(statement, parameter);
    }

    /**
     * 수정
     * Update int.
     *
     * @param statement the statement
     * @param parameter the parameter
     * @return the int
     * @throws DataAccessException the data access exception
     */
    protected int update(String statement, Object parameter) throws DataAccessException {
        return getSqlSession().update(statement, parameter);
    }

    /**
     * 삭제
     * Delete int.
     *
     * @param statement the statement
     * @param parameter the parameter
     * @return the int
     * @throws DataAccessException the data access exception
     */
    protected int delete(String statement, Object parameter) throws DataAccessException {
        return getSqlSession().delete(statement, parameter);
    }

}