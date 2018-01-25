package dave.dev.site.land;

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
     * Insert land int.
     *
     * @param param the param
     * @return the int
     * @throws Exception the exception
     */
    public int insertLand(LandVo param) throws Exception;

}
