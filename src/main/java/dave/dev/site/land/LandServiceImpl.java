package dave.dev.site.land;

import dave.dev.com.base.BaseService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("landService")
public class LandServiceImpl extends BaseService implements LandService {

    @Resource(name = "landDao")
    private LandDao landDao;

    public LandVo selectLandInfo(LandVo param) throws Exception {
        return landDao.selectLand(param);
    }

}
