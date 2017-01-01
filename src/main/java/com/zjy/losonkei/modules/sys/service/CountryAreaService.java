package com.zjy.losonkei.modules.sys.service;

import com.zjy.losonkei.common.service.CrudService;
import com.zjy.losonkei.modules.sys.dao.CountryAreaDao;
import com.zjy.losonkei.modules.sys.entity.CountryArea;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 地区Service
 * @author zjy
 * @version 2017-01-01
 */
@Service
@Transactional(readOnly = true)
public class CountryAreaService extends CrudService<CountryAreaDao, CountryArea> {

	public List<CountryArea> findProvinceList() {
		CountryArea entity = new CountryArea();
		entity.setLevel("0");
		return super.findList(entity);
	}

	public List<CountryArea> findCityList(String provinceId) {
		CountryArea entity = new CountryArea();
		entity.setParentId(provinceId);
		entity.setLevel("1");
		return super.findList(entity);
	}

	public List<CountryArea> findAreaList(String cityId) {
		CountryArea entity = new CountryArea();
		entity.setParentId(cityId);
		entity.setLevel("2");
		return super.findList(entity);
	}

}
