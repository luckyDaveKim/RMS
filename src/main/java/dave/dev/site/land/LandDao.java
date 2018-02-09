package dave.dev.site.land;

import dave.dev.com.base.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * The type Land dao.
 */
@Repository("landDao")
public class LandDao extends BaseDao {

  /**
   * Select land land vo.
   *
   * @param landVo the land vo
   * @return the land vo
   * @throws Exception the exception
   */
  public LandVo selectLand(LandVo landVo) throws Exception {
    return (LandVo) super.select("landDao.selectLand", landVo);
  }

  /**
   * Select land list list.
   *
   * @param landVo the land vo
   * @return the list
   * @throws Exception the exception
   */
  public List<LandVo> selectLandList(LandVo landVo) throws Exception {
    return super.list("landDao.selectLandList", landVo);
  }

  /**
   * Select bought land list list.
   *
   * @param landVo the land vo
   * @return the list
   * @throws Exception the exception
   */
  public List<LandVo> selectBoughtLandList(LandVo landVo) throws Exception {
    return super.list("landDao.selectBoughtLandList", landVo);
  }

  /**
   * Select leased land list list.
   *
   * @param landVo the land vo
   * @return the list
   * @throws Exception the exception
   */
  public List<LandVo> selectLeasedLandList(LandVo landVo) throws Exception {
    return super.list("landDao.selectLeasedLandList", landVo);
  }

  /**
   * Select rented land list list.
   *
   * @param landVo the land vo
   * @return the list
   * @throws Exception the exception
   */
  public List<LandVo> selectRentedLandList(LandVo landVo) throws Exception {
    return super.list("landDao.selectRentedLandList", landVo);
  }

  /**
   * Insert land int.
   *
   * @param landVo the land vo
   * @return the int
   * @throws Exception the exception
   */
  public int insertLand(LandVo landVo) throws Exception {
    return super.insert("landDao.insertLand", landVo);
  }

  /**
   * Update land int.
   *
   * @param landVo the land vo
   * @return the int
   * @throws Exception the exception
   */
  public int updateLand(LandVo landVo) throws Exception {
    return super.update("landDao.updateLand", landVo);
  }

  /**
   * Update land sale state int.
   *
   * @param landVo the land vo
   * @return the int
   * @throws Exception the exception
   */
  public int updateLandSaleState(LandVo landVo) throws Exception {
    return super.insert("landDao.updateLandSaleState", landVo);
  }

  /**
   * Delete land int.
   *
   * @param landVo the land vo
   * @return the int
   * @throws Exception the exception
   */
  public int deleteLand(LandVo landVo) throws Exception {
    return super.insert("landDao.deleteLand", landVo);
  }

}