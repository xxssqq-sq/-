## 关于本项目

本系统使用了工厂方法模式、单例模式、门面模式、策略模式、观察者模式一共5种模式实现了从蛋糕店订购订购蛋糕的系统。蛋糕店可接收顾客订单，使用观察者模式使顾客订单通知每个店员。使用单例模式确保只能创建一个蛋糕店对象。使用门面模式使订单信息可在数据库中存取。接到订单后，使用工厂方法根据客户不同的要求从柜台中拿出蛋糕。结账时，可采取不同的打折策略：八折、总价减8元、不打折，使用策略模式实现不同的打折方案。

## 使用工具

IDEA（生成类图）

Windows(运行exe文件)

Navicat （创建数据库）

Ssh（连接服务器映射数据库端口）

## 包含文件

README.MD

ordercake

设计模式答辩.ppt

Ordercake.exe

## 代码详解

### 测试代码( Client.java)

```java
public class Client {
	private static Object String;

	public static void main (String arg[]){
		CakeShop starCakeShop = CakeShop.getCakeShop();

		new WestVilla(starCakeShop, "草莓水果");//生成一个具体对象
		starCakeShop.getNewName("西13");//更新信息
		starCakeShop.notifyCustomer();//广播
		OrderCake cake = new OrderCake();
		System.out.println("今日促销一律8折优惠");
		cake.setM(8);//折扣
		cake.setStyle(new DiscountStyleThree());//选择打折方式
		cake.setPrice(80) ;//传入原价
		System.out.println("本次订购成功完成，需要支付的金额为"+cake.getMoney(cake.getPrice(),cake.getM())+"，原价80");
		System.out.println("=================================");

		new EastVilla(starCakeShop, "甜奶");
		starCakeShop.getNewName("东18");
		starCakeShop.notifyCustomer();
		System.out.println("=================================");

		starCakeShop.getNewName("东12");
		starCakeShop.notifyCustomer();
		System.out.println("=================================");

		System.out.println("=================================");
		System.out.println("=========例子测试完毕==============");


	}

}
```



### 策略模式（package net.xsl.ordercake.discount;）

1）类图

![image-20210109102952954](file:///Users/huahua/Documents/learn_list/%E7%AC%94%E8%AE%B0/image-20210109102952954.png?lastModify=1610159388)

2）详解

接口 DiscountStyle.java：

```java
public interface DiscountStyle {
public double disCount(double price,double m);
}

```

折方式一 DiscountStyleOne.java：

```java
public class DiscountStyleOne implements DiscountStyle{
public double disCount(double price,double m) {
  return price;
}
}
```

打折方式二 DiscountStyleTwo.java：

```java
public class DiscountStyleTwo implements DiscountStyle{
public double disCount(double price,double m) {
  price = price - m;
  return price;
}
}
```

打折方式三 DiscountStyleThree.java：

```java
public class DiscountStyleThree implements DiscountStyle{
public double disCount(double price,double m) {
  price = price * m/10;
  return price;
}
}
```

### 观察者模式、单例模式（package net.xsl.ordercake.order）

1）类图

![image-20210108165536734](../image-20210108165536734.png)

2）类详解

shop抽象被观察者接口

CakeShop具体被观察者（里面又实现了单例模式）

Customer抽象观察者接口

EastVilla WestVilla具体观察者



### 门面模式（package net.xsl.ordercake.jdbc）

1）类图![image-20210109102433471](../image-20210109102433471.png)

2）链接数据库

```java
        public Connection getConnection() {   
            try {  
            	//Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://10.1.122.74:13306/cakeshop","root","admin");
            } catch (Exception e) {  
                System.out.println("数据库连接失败" + e.getMessage());  
            }  
            return conn;  
        }    
```



![image-20210108165709722](../image-20210108165709722.png)

3）JdbcFacade.java函数详解

jdbcInsert()插入数据

jdbcDelete()删除数据

jdbcClose()关闭连接

jdbcSelect()查找数据

createStatement()创建连接

jdbcUpdate()更新数据

### 工厂方法模式（package net.xsl.ordercake.order）

1)类图

![image-20210109101735750](../image-20210109101735750.png)

2）结构详解

这里抽象工厂是factory，提供了创建产品的接口，调用者通过它访问具体工厂的工厂方法创建产品。

具体工厂是chocolatefactory、milkfactory、fruitfactory主要是实现抽象工厂中的抽象方法，完成具体产品的创建。

抽象产品是chocolatecake milkcake fruitycake主要是实现抽象工厂中的抽象方法，完成具体产品的创建。

具体产品是中间这一行类：实现了抽象产品角色所定义的接口，由具体工厂来创建，它同具体工厂之间一一对应。

## 感谢

感谢谢昊老师的指导，一学期课程中学会了许多设计模式和工具的使用。