package dave.dev.site.land;

import java.util.List;

/**
 * The interface Land service.
 */
public interface LandService {

    /**
     * Select land land vo.
     *
     * @param param the param
     * @return the land vo
     * @throws Exception the exception
     */
    public LandVo selectLand(LandVo param) throws Exception;

    /**
     * Select land by sq land vo.
     *
     * @param landSq the land sq
     * @return the land vo
     * @throws Exception the exception
     */
    public LandVo selectLandBySq(int landSq) throws Exception;

    /**
     * Select land list list.
     *
     * @param landVo the land vo
     * @return the list
     * @throws Exception the exception
     */
    public List<LandVo> selectLandList(LandVo landVo) throws Exception;

    /**
     * Insert land int.
     *
     * @param param the param
     * @return the int
     * @throws Exception the exception
     */
    public int insertLand(LandVo param) throws Exception;

}
