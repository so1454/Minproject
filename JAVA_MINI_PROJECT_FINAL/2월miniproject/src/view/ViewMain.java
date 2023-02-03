package view;

import java.util.ArrayList;

import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;

import model.CntPLevelDAO;
import model.CntPLevelDTO;
import model.CntPQDAO;
import model.CntPQDTO;
import view.KChart;

public class ViewMain {

	public void ViewMain() {
//      System.out.println("*** Start ***");

		chartPercentQuestion();
		try {
			Thread.sleep(100);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

		chartCountQuestion();
		try {
			Thread.sleep(100);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		chartPercentLevel();
		try {
			Thread.sleep(100);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		chartCountLevel();


//      System.out.println("*** Finish ***");
	}

	public void chartCountLevel() {
		ArrayList<CntPLevelDTO> listDTO = null;

		CntPLevelDAO DAO = null;

		DAO = new CntPLevelDAO();

		listDTO = DAO.SelectAll();

		KChart chartTest = new KChart();
		JFreeChart chart = chartTest.barChartLevelCount(listDTO);

		ChartFrame frame1 = new ChartFrame("난이도별 성공, 시도 횟수", chart);

		frame1.setSize(800, 400);
		frame1.setLocation(900, 500);
		frame1.setVisible(true);
		frame1.setAlwaysOnTop(true);
	}

	public void chartPercentLevel() {
		ArrayList<CntPLevelDTO> listDTO = null;

		CntPLevelDAO DAO = null;

		DAO = new CntPLevelDAO();

		listDTO = DAO.SelectAll();

		KChart chartTest = new KChart();
		JFreeChart chart = chartTest.barChartLevelPercent(listDTO);

		ChartFrame frame1 = new ChartFrame("난이도별 성공률", chart);

		frame1.setSize(800, 400);
		frame1.setLocation(0, 500);
		frame1.setVisible(true);
		frame1.setAlwaysOnTop(true);
	}

	public void chartPercentQuestion() {
		ArrayList<CntPQDTO> listDTO = null;

		CntPQDAO DAO = null;

		DAO = new CntPQDAO();

		listDTO = DAO.SelectAll();

		KChart chartTest = new KChart();
		JFreeChart chart = chartTest.barChartPercent(listDTO);

		ChartFrame frame1 = new ChartFrame("문제별 성공률", chart);

		frame1.setSize(800, 400);
		frame1.setLocation(0, 0);
		frame1.setVisible(true);
		frame1.setAlwaysOnTop(true);
	}

	public void chartCountQuestion() {
		ArrayList<CntPQDTO> listDTO = null;

		CntPQDAO DAO = null;

		DAO = new CntPQDAO();

		listDTO = DAO.SelectAll();

		KChart chartTest = new KChart();
		JFreeChart chart = chartTest.barChartCount(listDTO);

		ChartFrame frame1 = new ChartFrame("문제별 성공, 시도수", chart);

		frame1.setSize(800, 400);

		frame1.setLocation(900, 0);
		frame1.setVisible(true);
		frame1.setAlwaysOnTop(true);
	}

}