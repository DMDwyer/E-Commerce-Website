package model;


import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Selenium {

	public Selenium(){
	}
	
	public static void main (String[] args)
	{
		//Selenium s = new Selenium();
		//s.image("VPF7132");
	}

	public static String url  (String search)
	{

		
		DesiredCapabilities capabilities = DesiredCapabilities.phantomjs();
		capabilities.setCapability("phantomjs.binary.path","C:/Users/David/Documents/phantomjs.exe");
		WebDriver driver = new PhantomJSDriver(capabilities);
		
		
		driver.get("https://www.vapormatic.ie/");
		driver.findElement(By.id("desc_search")).sendKeys(search,Keys.ENTER);

	    WebElement myDynamicElement = (new WebDriverWait(driver, 10))
	              .until(ExpectedConditions.presenceOfElementLocated(By.id("search_selection_content")));
		
	    String url = driver.getCurrentUrl();

	    System.out.print(url);

	    driver.quit();
		
		return url;

	}


	public static String image  (String search)
	{

		
		DesiredCapabilities capabilities = DesiredCapabilities.phantomjs();
		capabilities.setCapability("phantomjs.binary.path","C:/Users/David/Documents/phantomjs.exe");
		WebDriver driver = new PhantomJSDriver(capabilities);
		
		
		driver.get("https://www.vapormatic.ie/");
		driver.findElement(By.id("desc_search")).sendKeys(search,Keys.ENTER);

	   
	    WebElement myDynamicElement = (new WebDriverWait(driver, 10))
	              .until(ExpectedConditions.presenceOfElementLocated(By.id("search_selection_content")));
		
	    
	    WebElement img = driver.findElement(By.id("part-image-part"));
	    WebElement element = img.findElement(By.tagName("img"));
	    String src = element.getAttribute("src");
	    
	    System.out.print(src);
	    
	    driver.quit();
		
		return src;

	}

	

}


