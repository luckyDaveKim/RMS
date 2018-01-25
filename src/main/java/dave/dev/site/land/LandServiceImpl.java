package dave.dev.site.land;

import dave.dev.com.base.BaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

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

    public int insertLand(LandVo param) throws Exception {
        return landDao.insertLand(param);
    }

}
