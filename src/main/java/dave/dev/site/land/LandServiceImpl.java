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

  public LandVo selectLand(LandVo landVo) {
    return landDao.selectLand(landVo);
  }

  public List<LandVo> selectLandList(LandVo landVo) {
    return landDao.selectLandList(landVo);
  }

  public List<LandVo> selectBoughtLandList(LandVo landVo) {
    return landDao.selectBoughtLandList(landVo);
  }

  public List<LandVo> selectLeasedLandList(LandVo landVo) {
    return landDao.selectLeasedLandList(landVo);
  }

  public List<LandVo> selectRentedLandList(LandVo landVo) {
    return landDao.selectRentedLandList(landVo);
  }

  public int updateLand(LandVo landVo) {
    return landDao.updateLand(landVo);
  }

  public int insertLand(LandVo landVo) {
    return landDao.insertLand(landVo);
  }

  public int updateLandSaleState(LandVo landVo) {
    return landDao.updateLandSaleState(landVo);
  }

  public int deleteLand(LandVo landVo) {
    return landDao.deleteLand(landVo);
  }

}
