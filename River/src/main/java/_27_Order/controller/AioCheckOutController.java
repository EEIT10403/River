package _27_Order.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import allPay.payment.integration.AllInOne;
import allPay.payment.integration.domain.*;
import allPay.payment.integration.exception.AllPayException;

@Controller
public class AioCheckOutController {
	AllInOne all;
	@RequestMapping(value = "/frontEnd/aioCheckOut", method = RequestMethod.GET)
	public String aioCheckOut(Model model){
		model.addAttribute("info", "�ڥI�_�I�ڿ�ܭ�");
		return "aioCheckOut";
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutALL", method = RequestMethod.GET)
	public ModelAndView aioCheckOutALL(){
		return new ModelAndView("aioCheckOutALL", "command", new AioCheckOutALL());
	}
	
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutALL", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutALL(AioCheckOutALL aio){
		all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		//�������}�o��
		invoice = null;
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("item1");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		aio.setHoldTradeAMT("0");
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(AllPayException e){
			throw new Error(e.getNewExceptionMessage());
		}
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutATM", method = RequestMethod.GET)
	public ModelAndView aioCheckOutATM(){
		return new ModelAndView("aioCheckOutATM", "command", new AioCheckOutATM());
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutATM", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutATM(AioCheckOutATM aio, @RequestParam(value="ChooseSubPayment")String payment){
		all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		//�����}�o��
		invoice.setRelateNumber(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 30));
		invoice.setCustomerID("123456");
		invoice.setCarruerType("1");
		invoice.setTaxType("1");
		invoice.setCarruerNum("");
		invoice.setDonation("2");
		invoice.setLoveCode("X123456");
		invoice.setPrint("0");
		//DB�̭����
		invoice.setInvoiceItemName("�q��");
		invoice.setInvoiceItemCount("1");
		invoice.setInvoiceItemWord("�x");
		invoice.setInvoiceItemPrice("50");
		invoice.setInvoiceItemTaxType("1");
		//�Ȥ��J�t�Ωұo����T
		invoice.setCustomerName("Mark");
		invoice.setCustomerAddr("�x�_");
		invoice.setCustomerPhone("0911429215");
		//�t�ΨM�w����Ѽ�
		invoice.setDelayDay("1");
		//�t�γ]�w�r�y���O
		invoice.setInvType("07");
		//�R�[���
		aio.setChooseSubPayment(payment);
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("�q��");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		aio.setHoldTradeAMT("0");
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(AllPayException e){
			throw new Error(e.getNewExceptionMessage());
		}
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutCVS", method = RequestMethod.GET)
	public ModelAndView aioCheckOutCVS(){
		return new ModelAndView("aioCheckOutCVS", "command", new AioCheckOutCVS());
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutCVS", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutCVS(AioCheckOutCVS aio, @RequestParam(value="ChooseSubPayment")String payment){
		all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		//�����}�o��
		invoice.setRelateNumber(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 30));
		invoice.setCustomerID("123456");
		invoice.setCarruerType("1");
		invoice.setTaxType("1");
		invoice.setCarruerNum("");
		invoice.setDonation("2");
		invoice.setLoveCode("X123456");
		invoice.setPrint("0");
		//DB�̭����
		invoice.setInvoiceItemName("�q��|�q��");
		invoice.setInvoiceItemCount("1|1");
		invoice.setInvoiceItemWord("�x|�x");
		invoice.setInvoiceItemPrice("50|50");
		invoice.setInvoiceItemTaxType("1|1");
		//�Ȥ��J�t�Ωұo����T
		invoice.setCustomerName("Mark");
		invoice.setCustomerAddr("�x�_");
		invoice.setCustomerPhone("0911429215");
		//�t�ΨM�w����Ѽ�
		invoice.setDelayDay("1");
		//�t�γ]�w�r�y���O
		invoice.setInvType("07");
		//�R�[���
		aio.setChooseSubPayment(payment);
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("�q��50��#�q��50��");
		aio.setTotalAmount("100");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		aio.setHoldTradeAMT("0");
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(AllPayException e){
			throw new Error(e.getNewExceptionMessage());
		}
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutDevide", method = RequestMethod.GET)
	public ModelAndView aioCheckOutDevide(){
		return new ModelAndView("aioCheckOutDevide", "command", new AioCheckOutDevide());
	}
	
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutDevide", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutDevide(AioCheckOutDevide aio){
		all = new AllInOne("");
		System.out.println(aio.getRemark());
		InvoiceObj invoice = new InvoiceObj();
		//�������}�o��
		invoice = null;
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("item1");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		aio.setHoldTradeAMT("0");
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		//��x������ �ϥΨ�d�������`�I�ڪ��B�C
//		aio.setInstallmentAmount("60");
		
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(AllPayException e){
			throw new Error(e.getNewExceptionMessage());
		}
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutOneTime", method = RequestMethod.GET)
	public ModelAndView aioCheckOutOneTime(){
		return new ModelAndView("aioCheckOutOneTime", "command", new AioCheckOutOneTime());
	}
	
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutOneTime", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutDevide(AioCheckOutOneTime aio){
		all = new AllInOne("");
		System.out.println(aio.getRemark());
		InvoiceObj invoice = new InvoiceObj();
		//�������}�o��
		invoice = null;
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("item1");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		aio.setHoldTradeAMT("0");
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(AllPayException e){
			throw new Error(e.getNewExceptionMessage());
		}
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutPeriod", method = RequestMethod.GET)
	public ModelAndView aioCheckOutPeriod(){
		return new ModelAndView("aioCheckOutPeriod", "command", new AioCheckOutPeriod());
	}
	
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutPeriod", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutPeriod(AioCheckOutPeriod aio){
		all = new AllInOne("");
		System.out.println(aio.getRemark());
		InvoiceObj invoice = new InvoiceObj();
		//�������}�o��
		invoice = null;
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("item1");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		aio.setHoldTradeAMT("0");
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		//�t�Ӧۦ�]�w�w���w�B�W�h
		aio.setPeriodAmount("50");
		aio.setPeriodType("M");
		aio.setFrequency("1");
		aio.setExecTimes("99");
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(AllPayException e){
			throw new Error(e.getNewExceptionMessage());
		}
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutTenpay", method = RequestMethod.GET)
	public ModelAndView aioCheckOutTenpay(){
		return new ModelAndView("aioCheckOutTenpay", "command", new AioCheckOutTenpay());
	}
	
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutTenpay", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutDevide(AioCheckOutTenpay aio){
		all = new AllInOne("");
		System.out.println(aio.getRemark());
		InvoiceObj invoice = new InvoiceObj();
		//�������}�o��
		invoice = null;
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("item1");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		aio.setHoldTradeAMT("0");
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(AllPayException e){
			throw new Error(e.getNewExceptionMessage());
		}
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutWebATM", method = RequestMethod.GET)
	public ModelAndView aioCheckOutWebATM(){
		return new ModelAndView("aioCheckOutWebATM", "command", new AioCheckOutWebATM());
	}
	
	@RequestMapping(value = "frontEnd/aioCheckOut/aioCheckOutWebATM", method = RequestMethod.POST, produces="text/html;charset=UTF-8")
	public @ResponseBody String aioCheckOutWebATM(AioCheckOutWebATM aio, @RequestParam(value="ChooseSubPayment")String payment){
		all = new AllInOne("");
		InvoiceObj invoice = new InvoiceObj();
		//�����}�o��
		invoice.setRelateNumber(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 30));
		invoice.setCustomerID("123456");
		invoice.setCarruerType("1");
		invoice.setTaxType("1");
		invoice.setCarruerNum("");
		invoice.setDonation("2");
		invoice.setLoveCode("X123456");
		invoice.setPrint("0");
		//DB�̭����
		invoice.setInvoiceItemName("�q��");
		invoice.setInvoiceItemCount("1");
		invoice.setInvoiceItemWord("�x");
		invoice.setInvoiceItemPrice("50");
		invoice.setInvoiceItemTaxType("1");
		//�Ȥ��J�t�Ωұo����T
		invoice.setCustomerName("Mark");
		invoice.setCustomerAddr("�x�_");
		invoice.setCustomerPhone("0911429215");
		//�t�ΨM�w����Ѽ�
		invoice.setDelayDay("1");
		//�t�γ]�w�r�y���O
		invoice.setInvType("07");
		//�R�[���
		aio.setChooseSubPayment(payment);
		//�t�Өt�Φۦ沣��
		aio.setMerchantTradeNo(UUID.randomUUID().toString().replaceAll("-", "").substring(0, 20));
		Date date = new Date();
		//�t�ӥi�ۦ�M�w����ɶ�
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		aio.setMerchantTradeDate(sdf.format(date));
		//�q�t��DB���X���ӫ~��T
		aio.setItemName("�q��");
		aio.setTotalAmount("50");
		aio.setTradeDesc("item desc");
		//�t�ӥi�ۦ�M�w�O�_���𼷴�
		aio.setHoldTradeAMT("0");
		//��ݳ]�w�I�ڧ����q���^�Ǻ��}
		aio.setReturnURL("http://211.23.128.214:5000");
		try{
			String html = all.aioCheckOut(aio, invoice);
			System.out.println(html);
			return html;
		} catch(AllPayException e){
			throw new Error(e.getNewExceptionMessage());
		}
	}
}
