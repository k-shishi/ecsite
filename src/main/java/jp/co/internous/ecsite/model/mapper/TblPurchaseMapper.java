package jp.co.internous.ecsite.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import jp.co.internous.ecsite.model.dto.HistoryDto;

@Mapper
public interface TblPurchaseMapper {

    List<HistoryDto> findHistory(int userId);

    int insert(@Param("userId") int userId, @Param("goodsId") int goodsId, @Param("goodsName") String goodsName,
            @Param("itemCount") int itemCount, @Param("total") int total);

}
