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

  public LandVo selectLand(LandVo landVo) throws Exception {
    return landDao.selectLand(landVo);
  }

  public List<LandVo> selectLandList(LandVo landVo) throws Exception {
    return landDao.selectLandList(landVo);
  }

  public List<LandVo> selectBoughtLandList(LandVo landVo) throws Exception {
    return landDao.selectBoughtLandList(landVo);
  }

  public List<LandVo> selectLeasedLandList(LandVo landVo) throws Exception {
    return landDao.selectLeasedLandList(landVo);
  }

  public List<LandVo> selectRentedLandList(LandVo landVo) throws Exception {
    return landDao.selectRentedLandList(landVo);
  }

  public int updateLand(LandVo landVo) throws Exception {
    return landDao.updateLand(landVo);
  }

  public int insertLand(LandVo landVo) throws Exception {
    return landDao.insertLand(landVo);
  }

  public int updateLandSaleState(LandVo landVo) throws Exception {
    return landDao.updateLandSaleState(landVo);
  }

  public int deleteLand(LandVo landVo) throws Exception {
    return landDao.deleteLand(landVo);
  }

}
