package _27_Order.model;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.transaction.Transactional;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class OrderItemService {
	@Autowired
	private OrderItemDAO orderItemDAO = null;

	public OrderItemBean findByPrimaryKey(String Id) {
		return orderItemDAO.findByPrimaryKey(Id);
	}

	public List getSalesSum() {
		return orderItemDAO.getSalesSum();
	}

	public List<OrderItemBean> findAll() {
		return orderItemDAO.findAll();
	}

	public List<OrderItemBean> findItemsByOrder_No(String Order_No) {
		return orderItemDAO.findItemsByOrder_No(Order_No);

	}

	public OrderItemBean insert(OrderItemBean bean) {
		OrderItemBean result = null;
		if (bean != null) {
			result = orderItemDAO.create(bean);
		}
		return result;
	}

	public OrderItemBean update(OrderItemBean bean) {
		OrderItemBean result = null;
		if (bean != null) {
			result = orderItemDAO.update(bean);
		}

		return result;
	}

//	public abstract boolean removeByOrder_No(TravelerBean bean);
//	public abstract boolean removeOneData(String Id);

	public boolean removeByOrder_No(OrderItemBean bean) {
		boolean result = false;
		if (bean != null) {
			result = orderItemDAO.removeByOrder_No(bean);
		}
		return result;
	}

	public boolean removeOneData(String Id) {
		boolean result = false;
		if (Id != null) {
			result = orderItemDAO.removeOneData(Id);
		}
		return result;
	}

	public void export(String[] titles, ServletOutputStream out) throws Exception {
		try {
			// 第一步，創建一個workbook，對應一個Excel文檔
			HSSFWorkbook workbook = new HSSFWorkbook();
			// 第二步，在webbook中添加一個sheet,對應Excel文檔中的sheet
			HSSFSheet hssfSheet = workbook.createSheet("sheet1");
			// 第三步，在sheet中添加表頭第0行,注意老版本poi對Excel的行數列數有限制short
			HSSFRow hssfRow = hssfSheet.createRow(0);
			// 第四步，創建單元格，並設置值表頭 設置表頭居中
			HSSFCellStyle hssfCellStyle = workbook.createCellStyle();
			// 居中樣式
//	            hssfCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);

			HSSFCell hssfCell = null;
			for (int i = 0; i < titles.length; i++) {
				hssfCell = hssfRow.createCell(i);// 列索引從0開始
				hssfCell.setCellValue(titles[i]);// 列名1
				hssfCell.setCellStyle(hssfCellStyle);// 列居中顯示
			}

			// 第五步，寫入實體數據
			List<OrderItemBean> oBeans = orderItemDAO.findAll();

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			if (oBeans != null && !oBeans.isEmpty()) {
				for (int i = 0; i < oBeans.size(); i++) {
					hssfRow = hssfSheet.createRow(i + 1);
					OrderItemBean bean = oBeans.get(i);
//  String[] titles = { "Order_No", "Product_Id", "Ticket_type", "Prod_Name","Quantity","UnitPrice","Total_Amount" }; 

					// 第六步，創建單元格，並設置值
					String Order_No = "";
					if (bean.getOrder_No() != null) {
						Order_No = bean.getOrder_No();
					}
					hssfRow.createCell(0).setCellValue(Order_No);

					String Product_Id = "";
					if (bean.getProduct_Id() != null) {
						Product_Id = bean.getProduct_Id();
					}
					hssfRow.createCell(1).setCellValue(Product_Id);

					String Ticket_type = "";
					if (bean.getTicket_type() != null) {
						Ticket_type = bean.getTicket_type();
					}
					hssfRow.createCell(2).setCellValue(Ticket_type);
					String Prod_Name = "";
					if (bean.getProd_Name() != null) {
						Prod_Name = bean.getProd_Name();
					}
					hssfRow.createCell(3).setCellValue(Prod_Name);
					int Quantity = 0;
					if (bean.getQuantity() != 0) {
						Quantity = bean.getQuantity();
					}
					hssfRow.createCell(4).setCellValue(Quantity);
					int UnitPrice = 0;
					if (bean.getUnitPrice() != 0) {
						UnitPrice = bean.getUnitPrice();
					}
					hssfRow.createCell(5).setCellValue(UnitPrice);
					int Total_Amount = 0;
					if (bean.getTotal_Amount() != 0) {
						Total_Amount = bean.getTotal_Amount();
					}
					hssfRow.createCell(6).setCellValue(Total_Amount);
				}
			}

			// 第七步，將文檔輸出到客户端瀏覽器
			try {
				workbook.write(out);
				out.flush();
				out.close();

			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("導出信息失敗！");
		}
	}

}
