package view;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Font;
import java.util.ArrayList;

import org.jfree.chart.JFreeChart;
import org.jfree.chart.axis.CategoryAxis;
import org.jfree.chart.axis.CategoryLabelPositions;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.labels.CategoryItemLabelGenerator;
import org.jfree.chart.labels.ItemLabelAnchor;
import org.jfree.chart.labels.ItemLabelPosition;
import org.jfree.chart.labels.StandardCategoryItemLabelGenerator;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.DatasetRenderingOrder;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.chart.renderer.category.LineAndShapeRenderer;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.ui.TextAnchor;

import model.CntPLevelDTO;
import model.CntPQDTO;
import model.ScoreListDTO;
import model.detailDTO;

public class KChart {

//	ArrayList<CntPQDTO> listDTO = null;

	public JFreeChart barChartStudentScore(ArrayList<detailDTO> listDTO) {
		int suc_cnt = 0, tot_cnt = 0, suc_pct = 0;
		String strName = "";
		

		DefaultCategoryDataset dataset1 = new DefaultCategoryDataset();

		String strRow, strCol;
		int iScore;

		for (int i = 0; i < listDTO.size(); i++) {

			strName = listDTO.get(i).getSname();
			iScore = listDTO.get(i).getQI();
			strRow = "획득점수";
			strCol = strName;
			dataset1.addValue(iScore, strRow, strCol);
		}

		return barChart(dataset1);
	}

	public JFreeChart barChartTeamScore(ArrayList<ScoreListDTO> listDTO) {
		int suc_cnt = 0, tot_cnt = 0, suc_pct = 0;
		String strTeam = "", fScore = "";
		

		DefaultCategoryDataset dataset1 = new DefaultCategoryDataset();

		String strRow, strCol;
		int iScore;

		for (int i = 0; i < listDTO.size(); i++) {

			strTeam = listDTO.get(i).getTeamN();
			fScore = listDTO.get(i).getFscore();

			iScore = Integer.parseInt(fScore);
			strRow = "합산점수";
			strCol = strTeam;
			dataset1.addValue(iScore, strRow, strTeam);
		}

		return barChart(dataset1);
	}

	public JFreeChart barChartLevelCount(ArrayList<CntPLevelDTO> listDTO) {
		int suc_cnt = 0, tot_cnt = 0, suc_pct = 0;
		String strQLevel = "";

		System.out.printf("===== 난이도 성공률 조회 ===== %n");
		System.out.printf("\t 난이도 \t 성공 \t 시도 \t 퍼센트 %n");
		for (int i = 0; i < listDTO.size(); i++) {

			strQLevel = listDTO.get(i).getStrLevel();
			suc_cnt = listDTO.get(i).getiSucCnt();
			tot_cnt = listDTO.get(i).getiTryCnt();
			suc_pct = listDTO.get(i).getiPercent();

			System.out.printf("\t %s \t %s \t %s \t %s %n", strQLevel, suc_cnt, tot_cnt, suc_pct);
		}

		DefaultCategoryDataset dataset1 = new DefaultCategoryDataset();

		String strRow, strCol;

		for (int i = 0; i < listDTO.size(); i++) {

			strQLevel = listDTO.get(i).getStrLevel();
			suc_cnt = listDTO.get(i).getiSucCnt();

			strRow = "suc_cnt";
			strCol = strQLevel;
			dataset1.addValue(suc_cnt, strRow, strCol);
		}

		for (int i = 0; i < listDTO.size(); i++) {

			strQLevel = listDTO.get(i).getStrLevel();
			tot_cnt = listDTO.get(i).getiTryCnt();

			strRow = "tot_cnt";
			strCol = strQLevel;
			dataset1.addValue(tot_cnt, strRow, strCol);
		}

		return barChart(dataset1);
	}

	public JFreeChart barChartLevelPercent(ArrayList<CntPLevelDTO> listDTO) {
		int suc_cnt = 0, tot_cnt = 0, suc_pct = 0;
		String strQLevel = "";

		System.out.printf("===== 난이도 성공률 조회 ===== %n");
		System.out.printf("\t 난이도 \t 성공 \t 시도 \t 퍼센트 %n");
		for (int i = 0; i < listDTO.size(); i++) {

			strQLevel = listDTO.get(i).getStrLevel();
			suc_cnt = listDTO.get(i).getiSucCnt();
			tot_cnt = listDTO.get(i).getiTryCnt();
			suc_pct = listDTO.get(i).getiPercent();

			System.out.printf("\t %s \t %s \t %s \t %s %n", strQLevel, suc_cnt, tot_cnt, suc_pct);
		}

		DefaultCategoryDataset dataset1 = new DefaultCategoryDataset();

		String strRow, strCol;

		for (int i = 0; i < listDTO.size(); i++) {

			strQLevel = listDTO.get(i).getStrLevel();
			suc_pct = listDTO.get(i).getiPercent();

			strRow = "SucPct";
			strCol = strQLevel;
			dataset1.addValue(suc_pct, strRow, strCol);
		}

		return barChart(dataset1);
	}

	public JFreeChart barChartCount(ArrayList<CntPQDTO> listDTO) {
		int qid = 0, suc_cnt = 0, tot_cnt = 0, suc_pct = 0;

		System.out.printf("===== 문제별 성공률 조회 ===== %n");
		System.out.printf("\t 문제 \t 성공 \t 시도 \t 퍼센트 %n");
		for (int i = 0; i < listDTO.size(); i++) {

			qid = listDTO.get(i).getiQId();
			suc_cnt = listDTO.get(i).getiSucCnt();
			tot_cnt = listDTO.get(i).getiTryCnt();
			suc_pct = listDTO.get(i).getiPercent();

			System.out.printf("\t %s \t %s \t %s \t %s %n", qid, suc_cnt, tot_cnt, suc_pct);
		}

		DefaultCategoryDataset dataset1 = new DefaultCategoryDataset();
		// *********막대 기능
		String strRow, strCol;

		for (int i = 0; i < listDTO.size(); i++) {

			qid = listDTO.get(i).getiQId();
			suc_cnt = listDTO.get(i).getiSucCnt();

			strRow = "suc_cnt";
			strCol = Integer.toString(qid);
			dataset1.addValue(suc_cnt, strRow, strCol);
		}

		for (int i = 0; i < listDTO.size(); i++) {

			qid = listDTO.get(i).getiQId();
			tot_cnt = listDTO.get(i).getiTryCnt();

			strRow = "tot_cnt";
			strCol = Integer.toString(qid);
			dataset1.addValue(tot_cnt, strRow, strCol);
		}

		return barChart(dataset1);
	}

	public JFreeChart barChartPercent(ArrayList<CntPQDTO> listDTO) {
		int qid = 0, suc_cnt = 0, tot_cnt = 0, suc_pct = 0;

		System.out.printf("===== 문제별 성공률 조회 ===== %n");
		System.out.printf("\t 문제 \t 성공 \t 시도 \t 퍼센트 %n");
		for (int i = 0; i < listDTO.size(); i++) {

			qid = listDTO.get(i).getiQId();
			suc_cnt = listDTO.get(i).getiSucCnt();
			tot_cnt = listDTO.get(i).getiTryCnt();
			suc_pct = listDTO.get(i).getiPercent();

			System.out.printf("\t %s \t %s \t %s \t %s %n", qid, suc_cnt, tot_cnt, suc_pct);
		}

		DefaultCategoryDataset dataset1 = new DefaultCategoryDataset();

		String strRow, strCol;

		for (int i = 0; i < listDTO.size(); i++) {

			qid = listDTO.get(i).getiQId();
			suc_pct = listDTO.get(i).getiPercent();

			strRow = "SucPct";
			strCol = Integer.toString(qid);
			dataset1.addValue(suc_pct, strRow, strCol);
		}

		return barChart(dataset1);
	}

	public JFreeChart barChart(DefaultCategoryDataset dataset1) {

		final BarRenderer renderer = new BarRenderer();

		final CategoryItemLabelGenerator generator = new StandardCategoryItemLabelGenerator();

		final ItemLabelPosition p_center = new ItemLabelPosition(

				ItemLabelAnchor.CENTER, TextAnchor.CENTER

		);

		final ItemLabelPosition p_below = new ItemLabelPosition(

				ItemLabelAnchor.OUTSIDE6, TextAnchor.TOP_LEFT

		);

		Font f = new Font("Gulim", Font.BOLD, 14);

		Font axisF = new Font("Gulim", Font.PLAIN, 14);

		renderer.setBaseItemLabelGenerator(generator);

		renderer.setBaseItemLabelsVisible(true);

		renderer.setBasePositiveItemLabelPosition(p_center);

		renderer.setBaseItemLabelFont(f);

		renderer.setSeriesPaint(0, new Color(0, 162, 255));

		final CategoryPlot plot = new CategoryPlot();

		plot.setDataset(dataset1);

		plot.setRenderer(renderer);

		plot.setOrientation(PlotOrientation.VERTICAL); // 그래프 표시 방향

		plot.setRangeGridlinesVisible(true); // X축 가이드 라인 표시여부

		plot.setDomainGridlinesVisible(true); // Y축 가이드 라인 표시여부

		// 렌더링 순서 정의 : dataset 등록 순서대로 렌더링 ( 즉, 먼저 등록한게 아래로 깔림 )

		plot.setDatasetRenderingOrder(DatasetRenderingOrder.FORWARD);

		// X축 세팅

		plot.setDomainAxis(new CategoryAxis()); // X축 종류 설정

		plot.getDomainAxis().setTickLabelFont(axisF); // X축 눈금라벨 폰트 조정

		plot.getDomainAxis().setCategoryLabelPositions(CategoryLabelPositions.STANDARD); // 카테고리 라벨 위치 조정

		// Y축 세팅

		plot.setRangeAxis(new NumberAxis()); // Y축 종류 설정

		plot.getRangeAxis().setTickLabelFont(axisF); // Y축 눈금라벨 폰트 조정

		// 세팅된 plot을 바탕으로 chart 생성

		final JFreeChart chart = new JFreeChart(plot);

		return chart;
	}

}
