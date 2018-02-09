package dave.dev.site.land;

import java.util.List;

/**
 * The interface Land service.
 */
public interface LandService {

  /**
   * Select land land vo.
   *
   * @param landVo the land vo
   * @return the land vo
   * @throws Exception the exception
   */
  public LandVo selectLand(LandVo landVo) throws Exception;

  /**
   * Select land list list.
   *
   * @param landVo the land vo
   * @return the list
   * @throws Exception the exception
   */
  public List<LandVo> selectLandList(LandVo landVo) throws Exception;

  /**
   * Select bought land list list.
   *
   * @param landVo the land vo
   * @return the list
   * @throws Exception the exception
   */
  public List<LandVo> selectBoughtLandList(LandVo landVo) throws Exception;

  /**
   * Select leased land list list.
   *
   * @param landVo the land vo
   * @return the list
   * @throws Exception the exception
   */
  public List<LandVo> selectLeasedLandList(LandVo landVo) throws Exception;

  /**
   * Select rented land list list.
   *
   * @param landVo the land vo
   * @return the list
   * @throws Exception the exception
   */
  public List<LandVo> selectRentedLandList(LandVo landVo) throws Exception;

  /**
   * Update land int.
   *
   * @param landVo the land vo
   * @return the int
   * @throws Exception the exception
   */
  public int updateLand(LandVo landVo) throws Exception;

  /**
   * Insert land int.
   *
   * @param landVo the land vo
   * @return the int
   * @throws Exception the exception
   */
  public int insertLand(LandVo landVo) throws Exception;

  /**
   * Update land sale state int.
   *
   * @param landVo the land vo
   * @return the int
   * @throws Exception the exception
   */
  public int updateLandSaleState(LandVo landVo) throws Exception;

  /**
   * Delete land int.
   *
   * @param landVo the land vo
   * @return the int
   * @throws Exception the exception
   */
  public int deleteLand(LandVo landVo) throws Exception;

}
