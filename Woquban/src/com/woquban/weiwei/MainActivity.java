package com.woquban.weiwei;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.widget.ListView;
import android.widget.SimpleAdapter;

public class MainActivity extends Activity {
	//������ʾ������
	private String data[][]=new String[][]{{"������廪��ѧ�����ߴ���ϷƱ2��", "6��10Сʱ"},
			{"������廪��ѧ�����ߴ���ϷƱ2��", "6��10Сʱ"},{"������廪��ѧ�����ߴ���ϷƱ2��", "6��10Сʱ"},
			{"������廪��ѧ�����ߴ���ϷƱ2��", "6��10Сʱ"},{"������廪��ѧ�����ߴ���ϷƱ2��", "6��10Сʱ"},
			{"������廪��ѧ�����ߴ���ϷƱ2��", "6��10Сʱ"},{"������廪��ѧ�����ߴ���ϷƱ2��", "6��10Сʱ"}};

	
	//�������е�list����
	private List<Map<String, String>> list = new
			ArrayList<Map<String, String>>();
	//����listview���
	private ListView datalist;
	//������
	private SimpleAdapter simpleAdapter = null;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        //���齨������ʾ����Ļ��
        setContentView(R.layout.activity_main);
        //ȡ��listview���
        datalist= (ListView) findViewById(R.id.datalist);
        //ѭ����������
        for(int x=0; x<data.length; x++){
        	//����map����
        	Map<String, String> map = new HashMap<String, String>();
        	//����conten�����ʾ����
        	map.put("content", data[x][0]);
        	//����time�����ʾ����
        	map.put("time_rest", data[x][1]);
        	list.add(map);
        }
        
        simpleAdapter = new SimpleAdapter(this, 
        		list,
        		R.layout.data_list,
        		new String[]{"content", "time_rest"},
        		new int[] {R.id.content, R.id.time_rest});
        datalist.setAdapter(simpleAdapter);
        
        
        
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.activity_main, menu);
        return true;
    }
    
}
