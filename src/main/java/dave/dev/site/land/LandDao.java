package dave.dev.site.land;

import dave.dev.com.base.BaseDao;
import org.springframework.stereotype.Repository;

@Repository("landDao")
public class LandDao extends BaseDao {

    public LandVo selectLand(LandVo param) throws Exception {
        return (LandVo) super.select("landDAO.selectLand", param);
    }

}
