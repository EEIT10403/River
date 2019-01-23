package sabre.model;

import java.util.List;

public interface F_ContactDAO {

	public abstract F_ContactBean findByPrimaryF_serialNum(int F_serialNum);

	public abstract List<F_ContactBean> findAll();

	public abstract F_ContactBean create(F_ContactBean bean);

	public abstract boolean remove(int F_serialNum);

}