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
	//定义显示的数据
	private String data[][]=new String[][]{{"求代购清华大学《白蛇传》戏票2张", "6天10小时"},
			{"求代购清华大学《白蛇传》戏票2张", "6天10小时"},{"求代购清华大学《白蛇传》戏票2张", "6天10小时"},
			{"求代购清华大学《白蛇传》戏票2张", "6天10小时"},{"求代购清华大学《白蛇传》戏票2张", "6天10小时"},
			{"求代购清华大学《白蛇传》戏票2张", "6天10小时"},{"求代购清华大学《白蛇传》戏票2张", "6天10小时"}};

	
	//保存所有的list数据
	private List<Map<String, String>> list = new
			ArrayList<Map<String, String>>();
	//定义listview组件
	private ListView datalist;
	//适配器
	private SimpleAdapter simpleAdapter = null;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        //将组建内容显示到屏幕上
        setContentView(R.layout.activity_main);
        //取得listview组件
        datalist= (ListView) findViewById(R.id.datalist);
        //循环设置数据
        for(int x=0; x<data.length; x++){
        	//定义map集合
        	Map<String, String> map = new HashMap<String, String>();
        	//设置conten组件显示数据
        	map.put("content", data[x][0]);
        	//设置time组件显示数据
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
