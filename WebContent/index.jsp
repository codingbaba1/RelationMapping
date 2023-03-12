<%@page import="com.cebs.beans.IDProof"%>
<%@page import="com.cebs.beans.Person"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.cebs.beans.Store"%>
<%@page import="com.cebs.beans.Category"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.cebs.hibernate.util.HibernateUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	Session sess= HibernateUtility.getSession();
	Transaction tran=sess.beginTransaction();
	
	Person p=new Person();
	p.setName("Dhiraj");
	IDProof []docs={new IDProof(100,"PAN"),new IDProof(101,"VoterID")};
	p.setDocs(docs);
	sess.save(p);
	tran.commit();
	
	
	
	
/* 	
	Category category=new Category();
	category.setName("Laptops");
	String []pro={"HP","Apple","Sony","Dell"};
	category.setProducts(pro);
	Store st=new Store();
	st.setStoreName("FlipKart");
	category.setStore(st);
	sess.save(category);
 */
	/* out.println("Data Saved");
	
	Query <Category> query=sess.createQuery("from com.cebs.beans.Category");
	List<Category> categories=query.list();
	for(Category cat:categories)
	{
		out.println(cat.getId()+"&nbsp;&nbsp;&nbsp;&nbsp;");
		out.println(cat.getName()+"&nbsp;&nbsp;&nbsp;&nbsp;");
		out.println(cat.getStore().getStoreName()+"&nbsp;&nbsp;&nbsp;&nbsp;");
	}
 */
%>
</body>
</html>



























