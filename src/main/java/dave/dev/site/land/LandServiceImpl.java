package dave.dev.site.land;

import dave.dev.com.base.BaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * The type Land service.
 */
@Service("landService")
public class LandServiceImpl extends BaseService implements LandService {

    @Resource(name = "landDao")
    private LandDao landDao;

    public LandVo selectLand(LandVo param) throws Exception {
        return landDao.selectLand(param);
    }

    public LandVo selectLandBySq(int landSq) throws Exception {
        return landDao.selectLandBySq(landSq);
    }

    public List<LandVo> selectLandList(LandVo landVo) throws Exception {
        return landDao.selectLandList(landVo);
    }

    public int insertLand(LandVo param) throws Exception {
        return landDao.insertLand(param);
    }

}
