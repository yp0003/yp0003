package com.yfann.web.action.oa;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.validation.SkipValidation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.yfann.web.action.CommonAction;
import com.yfann.web.common.ApplicationValue;
import com.yfann.web.common.OaApplicationValue;
import com.yfann.web.common.OaCookieUtils;
import com.yfann.web.common.OaUUIDCreate;
import com.yfann.web.pojo.OaEmployee;
import com.yfann.web.pojo.OaMenu;
import com.yfann.web.pojo.OaRole;
import com.yfann.web.service.OaEmployeeService;
import com.yfann.web.service.OaMenuService;
import com.yfann.web.vo.MailContext;
import com.yfann.web.vo.OaLoginMessage;
import com.yfann.web.vo.OaRegisterMessage;

/**
 * OA系统功能
 * 
 * @author Simon
 *
 */
public class OaLoginAction extends CommonAction {
	private static final long serialVersionUID = 8574746594084487602L;

	private OaRegisterMessage oaRegisterMessage = new OaRegisterMessage();
	private OaLoginMessage oaLoginMessage = new OaLoginMessage();
	private OaCookieUtils oaCookieUtils = new OaCookieUtils();
	final Logger logger = LoggerFactory.getLogger(OaLoginAction.class);

	private OaEmployee oaEmployee;
	@Autowired
	private OaEmployeeService oaEmployeeService;
	@Autowired
	private OaMenuService oaMenuService;

	/** 注册页面验证码 */
	private String validateCode;
	private String remPass;
	
	/** 文件输入流 */
	private InputStream jsonInputStream;

	@SkipValidation
	public String getOaMenu() throws Exception {
		oaEmployee = (OaEmployee) session.getAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		oaEmployee = oaEmployeeService.getEmpById(oaEmployee.getId());
		List<OaRole> oaRoleList = oaEmployee.getOaRoleList();
		Set<OaMenu> oaMenuSet = new HashSet<OaMenu>();
		List<String> url = new ArrayList<String>();
		for (OaRole r : oaRoleList) {
			oaMenuSet.addAll(r.getOaMenuList());
		}
		List<OaMenu> list = new ArrayList<OaMenu>(oaMenuSet);
		List<OaMenu> listAll = oaMenuService.getAllOaMenu();
		A: for(OaMenu mm:listAll){
			if (!StringUtils.isNotEmpty(mm.getUrl()))
				continue;
			for (OaMenu m : list) {
				if(mm.getUrl().equals(m.getUrl())){
					continue A;
				}
			}
			url.add(mm.getUrl());
		}
		//把该用户不能访问的URL放到session,待用
		session.setAttribute("urls", url);
		Collections.sort(list);
		ActionContext.getContext().getValueStack().push(list);
		return SUCCESS;

	}

	// 跳转到欢迎页
	@SkipValidation
	public String welcome() {
		return "welcome";
	}

	// 跳转到主页
	@SkipValidation
	public String forwardIndex() throws Exception {
		return "forwardIndex";
	}

	// 用户退出
	@SkipValidation
	public String logout() {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.removeAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION);
		Cookie cookie = oaCookieUtils.delCookie(request);
		if (cookie != null)
			response.addCookie(cookie);
		return "forwardLogin";
	}

	// 跳转到登录界面
	@SkipValidation
	public String forwardLogin() {
		request = ServletActionContext.getRequest();
		oaEmployee = oaCookieUtils.getEmpCookie(request);
		return "forwardLogin";
	}

	// 验证登录信息
	@SkipValidation
	public String validateLoginInfo() throws Exception {
		if ("".equals(oaEmployee.getEmployeeId())) {
			// oaLoginMessage.setEmployeeIdMessage("用户名不能为空！");
			addActionError("用户名不能为空！");
			return "forwardLogin";
		}
		if ("".equals(oaEmployee.getNowPassword())) {
			// oaLoginMessage.setPasswordMessage("密码不能为空！");
			addActionError("密码不能为空！");
			return "forwardLogin";
		}
		if ("".equals(validateCode)) {
			// oaLoginMessage.setPasswordMessage("请填写验证码！");
			addActionError("请填写验证码！");
			return "forwardLogin";
		}
		// 对比验证码
		String valiCode = (String) session.getAttribute("valiCode").toString();
		if (!valiCode.equals(validateCode)) {
			// oaLoginMessage.setValiCodeMessage("验证码不正确!");
			addActionError("验证码不正确!");
			return "forwardLogin";
		}

		OaEmployee oaEmployeeTemp = oaEmployeeService.validateOaEmployee(oaEmployee.getEmployeeId());
		if (null == oaEmployeeTemp) { // 没有此用户
			addActionError("用户不存在，请先注册！");
			return "forwardLogin";
		} else if (null != oaEmployeeTemp
				&& !oaEmployeeTemp.getNowPassword().equals(oaEmployee.getNowPassword())) {// 存在此用户，但是用户名密码对不上
			addActionError("用户名输入有误！请输入正确的用户名密码！");
			return "forwardLogin";
		} else {// 存在此用户并输入正确

			if (null != remPass && "on".equals(remPass)) {// 判断是否记住用户名密码

				Cookie cookie = oaCookieUtils.addCookie(oaEmployee);
				response = ServletActionContext.getResponse();
				response.addCookie(cookie);// 添加cookie到response中

			}
			session.setAttribute(OaApplicationValue.EMPLOYEE_KEY_ON_SESSION, oaEmployeeTemp);// 添加用户到session中
			// 保存最后一次登录时间
			oaEmployeeTemp.setLastLoginTime(new Date());
			oaEmployee = oaEmployeeTemp;
			oaEmployeeService.updateOaEmployee(oaEmployeeTemp);
			return "loginSuccess";
		}

	}

	// 跳转到注册界面
	@SkipValidation
	public String forwardRegister() {
		return "forwardRegister";
	}

	// 员工注册
	public String register() throws Exception {
		if (oaEmployee != null) {
			// 对比验证码
			if (StringUtils.isNotBlank(oaEmployee.getEmployeeId())) {
				// 获取session中验证码
				String valiCode = (String) session.getAttribute("valiCode").toString();
				if (!valiCode.equals(validateCode)) {
					addActionError("验证码不正确!");
					return forwardRegister();
				}
			}
		}
		// 保存用户
		try {
			if (oaEmployee != null && StringUtils.isNotBlank(oaEmployee.getNowPassword())) {
				// 设置主键
				oaEmployee.setId(OaUUIDCreate.getUUID());
			}
			oaEmployeeService.saveOaEmployee(oaEmployee);
		} catch (Exception e) {
			logger.error("系统错误");
			logger.error(e.getMessage());
			throw new Exception(e.getMessage());
		}
		
		return "loginSuccess";
	}

	// 转向找回密码页面
	@SkipValidation
	public String toFindPassword() {
		return "tofindpassword";
	}

	/** 找回密码 */
	@SkipValidation
	public String findPassword() {
		if (oaEmployee != null) {
			try {
				OaEmployee emp = oaEmployeeService.validateOaEmployee(oaEmployee.getEmployeeId());
				MailContext mailContext = new MailContext();
				mailContext.setMailSubject(ApplicationValue.MAIL_FIND_PASSWORD_SUBJECT);
				mailContext.setTextContext("尊敬的" + oaEmployee.getEmployeeId() + "您好,您的密码为"
						+ emp.getNowPassword() + "请妥善保存好您的密码.");
				if (oaEmployee.getEmail().equals(emp.getEmail())) {
					oaEmployeeService.sendMail(oaEmployee.getEmail(), mailContext);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "forwardLogin";
	}

	// 绘制验证码图片
	@SkipValidation
	public void validateCode() throws Exception {
		// 通知浏览器，图片不要缓存
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setHeader("Expires", "-1");
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");

		int width = 80;
		int height = 25;
		// 搞出代表内存图片的对象BufferedImage
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		// 取到画笔：开始画
		Graphics g = image.getGraphics();
		// 背景
		g.setColor(Color.WHITE);
		g.fillRect(0, 0, width, height);

		// 画边框
		g.setColor(Color.GRAY);
		g.drawRect(1, 1, width - 2, height - 2);
		// 画干扰线
		g.setColor(Color.GRAY);
		Random r = new Random();
		for (int i = 0; i < 30; i++)
			g.drawLine(r.nextInt(width), r.nextInt(height), r.nextInt(width), r.nextInt(height));

		// 写随机验证码

		g.setColor(Color.RED);
		g.setFont(new Font("宋体", Font.BOLD | Font.ITALIC, 18));
		// 数字
		int x = 10;
		StringBuffer valiCode = new StringBuffer();
		String valiCodeTemp = "";
		for (int i = 0; i < 4; i++) {
			valiCodeTemp = r.nextInt(10) + "";
			g.drawString(valiCodeTemp, x, 20);
			valiCode.append(valiCodeTemp);
			x += 15;
		}
		session.removeAttribute("valiCode");
		session.setAttribute("valiCode", valiCode);
		ImageIO.write(image, "jpg", response.getOutputStream());
	}

	@SkipValidation
	public OaRegisterMessage getOaRegisterMessage() {
		return oaRegisterMessage;
	}
	@SkipValidation
	public void setOaRegisterMessage(OaRegisterMessage oaRegisterMessage) {
		this.oaRegisterMessage = oaRegisterMessage;
	}
	@SkipValidation
	public OaLoginMessage getOaLoginMessage() {
		return oaLoginMessage;
	}
	@SkipValidation
	public void setOaLoginMessage(OaLoginMessage oaLoginMessage) {
		this.oaLoginMessage = oaLoginMessage;
	}
	@SkipValidation
	public OaEmployee getOaEmployee() {
		return oaEmployee;
	}
	@SkipValidation
	public void setOaEmployee(OaEmployee oaEmployee) {
		this.oaEmployee = oaEmployee;
	}
	@SkipValidation
	public String getValidateCode() {
		return validateCode;
	}
	@SkipValidation
	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}
	@SkipValidation
	public String getRemPass() {
		return remPass;
	}
	@SkipValidation
	public void setRemPass(String remPass) {
		this.remPass = remPass;
	}
	@SkipValidation
	public InputStream getJsonInputStream() {
		return jsonInputStream;
	}
	@SkipValidation
	public void setJsonInputStream(InputStream jsonInputStream) {
		this.jsonInputStream = jsonInputStream;
	}

	
	
}
