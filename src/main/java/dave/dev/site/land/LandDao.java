package dave.dev.site.land;

import dave.dev.com.base.BaseDao;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("landDao")
public class LandDao extends BaseDao {

    public LandVo selectLand(LandVo landVo) throws Exception {
        return (LandVo) super.select("landDao.selectLand", landVo);
    }

    public List<LandVo> selectLandList(LandVo landVo) throws Exception {
        return super.list("landDao.selectLandList", landVo);
    }

    public int insertLand(LandVo landVo) throws Exception {
        return super.insert("landDao.insertLand", landVo);
    }

    public int updateLand(LandVo landVo) throws Exception {
        return super.update("landDao.updateLand", landVo);
    }

    public int updateLandSaleState(LandVo landVo) throws Exception {
        return super.insert("landDao.updateLandSaleState", landVo);
    }

    public int deleteLand(LandVo landVo) throws Exception {
        return super.insert("landDao.deleteLand", landVo);
    }

}