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
   */
  LandVo selectLand(LandVo landVo);

  /**
   * Select land list list.
   *
   * @param landVo the land vo
   * @return the list
   */
  List<LandVo> selectLandList(LandVo landVo);

  /**
   * Select bought land list list.
   *
   * @param landVo the land vo
   * @return the list
   */
  List<LandVo> selectBoughtLandList(LandVo landVo);

  /**
   * Select leased land list list.
   *
   * @param landVo the land vo
   * @return the list @ the exception
   */
  List<LandVo> selectLeasedLandList(LandVo landVo);

  /**
   * Select rented land list list.
   *
   * @param landVo the land vo
   * @return the list @ the exception
   */
  List<LandVo> selectRentedLandList(LandVo landVo);

  /**
   * Update land int.
   *
   * @param landVo the land vo
   * @return the int @ the exception
   */
  int updateLand(LandVo landVo);

  /**
   * Insert land int.
   *
   * @param landVo the land vo
   * @return the int @ the exception
   */
  int insertLand(LandVo landVo);

  /**
   * Update land sale state int.
   *
   * @param landVo the land vo
   * @return the int @ the exception
   */
  int updateLandSaleState(LandVo landVo);

  /**
   * Delete land int.
   *
   * @param landVo the land vo
   * @return the int @ the exception
   */
  int deleteLand(LandVo landVo);

}
