package dave.dev.site.land;

import dave.dev.com.base.BaseDao;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * The type Land dao.
 */
@Repository("landDao")
class LandDao extends BaseDao {

  /**
   * Select land land vo.
   *
   * @param landVo the land vo
   * @return the land vo
   */
  LandVo selectLand(LandVo landVo) throws DataAccessException {
    return (LandVo) super.select("landDao.selectLand", landVo);
  }

  /**
   * Select land list list.
   *
   * @param landVo the land vo
   * @return the list
   */
  List<LandVo> selectLandList(LandVo landVo) throws DataAccessException {
    return super.list("landDao.selectLandList", landVo);
  }

  /**
   * Select bought land list list.
   *
   * @param landVo the land vo
   * @return the list
   */
  List<LandVo> selectBoughtLandList(LandVo landVo) throws DataAccessException {
    return super.list("landDao.selectBoughtLandList", landVo);
  }

  /**
   * Select leased land list list.
   *
   * @param landVo the land vo
   * @return the list @ the exception
   */
  List<LandVo> selectLeasedLandList(LandVo landVo) throws DataAccessException {
    return super.list("landDao.selectLeasedLandList", landVo);
  }

  /**
   * Select rented land list list.
   *
   * @param landVo the land vo
   * @return the list @ the exception
   */
  List<LandVo> selectRentedLandList(LandVo landVo) throws DataAccessException {
    return super.list("landDao.selectRentedLandList", landVo);
  }

  /**
   * Insert land int.
   *
   * @param landVo the land vo
   * @return the int @ the exception
   */
  int insertLand(LandVo landVo) throws DataAccessException {
    return super.insert("landDao.insertLand", landVo);
  }

  /**
   * Update land int.
   *
   * @param landVo the land vo
   * @return the int @ the exception
   */
  int updateLand(LandVo landVo) throws DataAccessException {
    return super.update("landDao.updateLand", landVo);
  }

  /**
   * Update land sale state int.
   *
   * @param landVo the land vo
   * @return the int @ the exception
   */
  int updateLandSaleState(LandVo landVo) throws DataAccessException {
    return super.insert("landDao.updateLandSaleState", landVo);
  }

  /**
   * Delete land int.
   *
   * @param landVo the land vo
   * @return the int @ the exception
   */
  int deleteLand(LandVo landVo) throws DataAccessException {
    return super.insert("landDao.deleteLand", landVo);
  }

}