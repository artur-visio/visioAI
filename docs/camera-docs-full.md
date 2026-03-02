# Camera Documentation (YCTX ShowDoc)

> Auto-generated from ShowDoc API


## Table of Contents

- **Root Pages**
  - 扉页
  - 球机特殊预置点--即将淘汰
  - 球机特殊预置点--新版
- **P2P/HTTP/MQTT/GB28181 Data Interaction**
  - 信令请求接口简述
  - HTTP登录(P2P不受用)
  - 设备信息和能力级获取
  - 获取设备当前运行状态
  - 主子码流配置获取与设置
  - 有线网络配置获取与设置
  - WI-FI配置获取与设置
  - WiFi列表获取
  - 移动侦测配置获取与设置
  - 区域入侵配置获取与设置
  - 录像配置获取与设置
  - 音频配置获取与设置
  - TF卡信息获取与格式化
  - 时区配置获取与设置
  - 用户名、密码、固件信息、升级
  - RTMP配置获取与设置
  - OSD配置获取与设置
  - 灯光配置获取与设置
  - GB28181配置获取与设置
  - GAT1400配置获取与设置
  - 定时抓拍配置获取与设置
  - 报警输出状态获取与输出控制
  - 报警输入通道配置获取与设置
  - IP冲突校验
  - 变焦曲线校准、辅助聚焦、镜头初始化
  - 重启、恢复出厂、文件列表开关
  - 魔镜AI网关、魔镜海外平台配置
  - 报警音频列表、音频上传
  - 工作模式配置获取与设置
  - web杂项配置
  - 遮挡检测配置获取与设置
  - ROI配置设置与获取
  - 画面隐私遮挡区域设置与获取
  - 设备静默配置获取与设置
  - 报警忽略配置(不接受GB\1400\APP推送消息)
  - 联动配置说明
  - 固件克隆(P2P不受用)
  - 预置点参数获取与设置
  - 巡航和智能设置
  - OBS配置获取与设置
  - 日志界面
  - 远程音频播放接口
  - SMARTAE配置
  - 透明串口配置与获取(P2P可用)
  - MWP协议配置
- **AI Camera Interface - Dynamic Algorithm Loading**
  - AI算法支持列表获取和算法切换
  - AI类算法配置获取与设置
  - 人脸抓拍算法配置信息
  - 人脸识别算法配置信息
  - 人脸数据录入(批量、单个)、列表查询(需当前运行算法为人脸检测算法)
  - 人车非检测、电瓶车检测、消防通道检测算法配置信息
  - 车牌信息批量录入、列表查询(需当前运行算法为车牌算法)
  - 消防通道背景设定(仅消防通道检测算法)
  - 电瓶车载人检测配置信息
  - 安全帽检测(基于头肩)配置信息
  - 火焰检测配置信息
  - 离岗检测配置信息
  - 车牌检测配置信息
  - 客流统计算法(基于头肩)配置信息
  - 客流统计(基于头肩)数据获取（需当前运行算法为基于头肩检测的客流统计算法）
  - 车辆预警算法配置信息
  - 厨房三白检测配置信息
  - 电瓶车闸道算法配置信息
  - 消防通道车辆检测配置信息
  - 人脸签到算法配置信息
  - 陌生人检测算法配置信息
  - 烟雾检测配置信息
  - AI检测图片裁剪
  - 超员检测配置信息
  - 车型检测算法配置信息
  - 人形算法参数配置
  - AI事件本地存储记录获取
  - AI算法通用配置
- **SDK Windows Examples**
  - 搜索设备IP
  - AI订阅与退订
  - 对讲说明
  - 重启与恢复出厂
  - 修改IP
  - 文件下载
  - 录像查询
  - 回放控制
  - 时间设置
  - 手动抓拍
  - 固件升级
  - 人脸库配置
  - 透明串口消息订阅与退订
  - 强制产生关键帧视频
- **Ground Lock MQTT Protocol**
  - MQTT地锁控制总概
  - MQTT协议消息Topic、消息Body
  - MQTT平台功能列表定义
  - 附录
- **GA/T1400 Extended Protocol**
  - API概览
  - 火焰/烟雾检测
  - 离岗
  - 消防通道
  - 全景抓拍
  - 安全帽检测
  - 心跳/指令查询/人流统计/电动车头盔计数
  - 指令执行状态上报
  - 同步人脸库-图片下发
  - 设备人脸库上报
  - 人脸识别数据上报
  - LINUX 人脸提取特征值工具说明
  - 同步人脸库-特征值下发
- **GB/T28181 Extended Protocol**
  - 官方文档
  - 报警信息扩展
  - 4g模块信息上报
  - 人流统计上报
  - 已废弃-私有参数配置能力集获取
  - 已废弃-私有参数获取
  - 已废弃-私有参数定义
- **GB28181 Private Params**
  - 私有参数获取说明
  - 私有参数设置说明
  - 设备信息和能力级获取
  - 主子码流配置获取与设置
  - 有线网络配置获取与设置
  - wifi配置获取与设置
  - 移动侦测配置获取与设置
  - 区域入侵配置获取与设置
  - 录像配置获取与设置
  - 音频输入输出配置获取与设置
  - TF卡信息获取与格式化
  - 时区配置获取与设置
  - OSD配置获取与设置
  - 灯光亮度/夜视模式配置获取与设置
  - GB28181配置获取与设置
  - GAT1400配置获取与设置
  - 定时抓拍配置获取与设置
  - 报警输出配置获取与控制
  - 变焦曲线校准
  - 日夜切换模式配置获取与设置
  - 杂项配置获取与设置
  - 远程音频播放
- **GB28181 AI Algorithm Config**
  - 算法支持列表获取与算法切换
  - 算法配置获取与设置
- **AI Info Definition**
  - 火焰/烟雾
  - 电动车
  - 消防通道
  - 安全帽
  - 离岗
  - 电动车头盔/超载
  - 人脸抓拍/人脸识别/陌生人
  - 车辆抓拍/车辆预警
  - 车牌识别
  - 区域入侵
  - 移动侦测
  - 厨房三白
  - 超员/低于额定人员告警
  - 客流统计
  - 定时抓拍
- **ISP**
  - 图像参数
- **WEB Config**
  - NAS配置
- **MWP Protocol**
  - 前言介绍
  - 相关docker搭建
  - gozero制作的demo示例
  - minio配置流程
- **MWP RESTful Interface**
  - 摄像机端获取MQTT地址与OSS地址
- **MWP Called by MQTT**
  - MQTT用户或摄像机连接鉴权
  - 用户或摄像机上下线通知
- **MWP Called by ZLM**
  - 直播流请求
  - 直播流关闭
  - 直接流无人观看
- **MWP MQTT Commands**
  - 系统相关
  - 摄像机配置
  - RTP直播
  - RTP回放
  - 录像查询
  - PTZ控制
  - 人脸库-更新/删除/查询
  - 截图

# Root Pages

## 扉页

> Page ID: 298031460

# 前言
感谢您选择我司的摄像机，并为之赋予更加广阔的应用场景，为帮助合作伙伴更加快捷的跟摄像机交互， 开发属于自己一些功能以及平台特性， 我司将最大限度开放摄像机的相关功能以及相关函数， 其中有标准协议的，尽量优先使用标准协议，在标准协议不太完善的部分，我司会扩展一些接口协议出来，这样即可以避免重复造轮子，又可以做到物尽其用．由于工作量巨大繁复，难免会有疏漏与错误，如发现请即时告知，帮助我们完善这个文档．

---

## 球机特殊预置点--即将淘汰

> Page ID: 298031341


#通用预置点
看守位: 0
预置点: 设置/调用 1-128
校正镜头曲线: 调用 200
当前限位内找清晰点：调用240
镜头初始化：调用 241
PTZ重启：调用 242
保存当前聚焦位置：调用 243 // 要将当前位置保存到预置曲线时调用
校正镜头曲线(不加限位)：调用 244
恢复出厂设置：调用 246
清除所有预置点：调用 248

#巡航线  （巡航-通过设置对应预置点，巡航线在cruise.json）

启动巡航: 调用 226
停止巡航: 调用 227


#线扫
线扫左设置: 设置 201
线扫右设置: 设置 202
线扫启动: 调用 203
//线扫时间设置: 设置 204+n, n为停留秒数
设置线扫速度: 设置 205+n, n为速度1~64

#巡航线 预留1~16条 （云台板自带）
巡航停留时间设置: 设置 206+n, n为停留秒数
设置巡航速度: 设置 207+n, n为速度1~64
启动巡航线1: 调用 210, 对应1-16的预置点
启动巡航线2: 调用 211, 对应17-32的预置点
启动巡航线3: 调用 212, 对应33-48的预置点
启动巡航线4: 调用 213, 对应49-64的预置点
启动巡航线5: 调用 214, 对应65-80的预置点
启动巡航线6: 调用 215, 对应81-96的预置点
启动巡航线7: 调用 216, 对应97-112的预置点
启动巡航线8: 调用 217, 对应113-128的预置点
~~启动巡航线9: 调用 218, 对应129-144的预置点
启动巡航线10: 调用 219, 对应145-160的预置点
启动巡航线11: 调用 220, 对应161-176的预置点
启动巡航线12: 调用 221, 对应177-192的预置点~~
~~// 下为预留
启动巡航线13: 调用 222, 对应177-192的预置点
启动巡航线14: 调用 223, 对应177-192的预置点
启动巡航线15: 调用 224, 对应177-192的预置点
启动巡航线16: 调用 225, 对应177-192的预置点~~

#跟踪 (大球机)
跟踪模式：看守位预置点	设置208号预置位
跟踪模式：打开看守位跟踪	调用208号预置位
跟踪模式：打开巡航线跟踪	调用209号预置位
跟踪模式：关闭跟踪功能	调用204号预置位



---

## 球机特殊预置点--新版

> Page ID: 298031944

**固件版本将从2025年11月1日开始实施**
- 预置点有效范围：1-224，不同的云台板可能没有这么多,YMT(128个),GPIO型（16个）
- 特殊预置点：
 
| 预置点 | 功能 |说明|
| --- | --- |--- |
| 0 | 看守位 |  |
| 226 | 启动巡航 |  |
| 227 | 停止巡航 |  |
| **设置**228 | 线扫开始位置设置 | 老版本为调用201 |
| **设置**229 | 线扫结束位置设置 | 老版本为调用202 |
| 调用228 | 启动线扫 | 老版本为调用203 |
| 调用229 | 停止线扫 |  |
| 240 | 限位内找清晰点 |  |
| 241 | 镜头初始化 |  |
| 242 | PTZ重启 |  |
| 243 | 保存当前聚焦位置 |  |
| 244 | 校正镜头曲线(不加限位) |  |
| 246 | 恢复出厂设置 |  |
| 248 | 清除所有预置点 |  |
| 251 | 校正镜头曲线 | 原来的200 |

- 灯光测试
231+n:
	- 1x：第1组亮, x为0表示100%亮度，15表示第1组50%的亮度
	- 2x：第2组亮
	- 3x：第3组亮
	- 4x：第4组亮
	- 5x：第5组亮
	- &gt;100为掩码: 如125的25看二进制位为B11001, 就是1、4、5组一起亮
	



---

# P2P/HTTP/MQTT/GB28181 Data Interaction

## 信令请求接口简述

> Page ID: 298031288

[TOC]

##### 简要描述

P2P/HTTP/MQTT/GB28181均可使用

##### 一、差异描述
请先下载相关平台的SDK, 下载地址: [下载SDK](http://ts.vs98.com/sdk)

- 1、P2P信令与HTTP概述
	- ` P2P交互是使用SDK与摄像机互联，包括设备连接与数据交互的过程，可进行非局域网下的通信与设备控制 `
	
	- ` HTTP请求交互是基于内网网络下的本地设备接口请求，需要调用登录接口，通过token校验保证设备的安全性，从而进行正常的数据交互`
	

- 2、P2P信令与HTTP请求方式
		P2P使用以下信令进行请求和响应
			IOTYPE_USER_JSON_CONTROL_REQ    = 0x08ba,
			IOTYPE_USER_JSON_CONTROL_RESP   = 0x08bb,
			
		HTTP使用API进行请求和响应
			Host:摄像机IP地址	Port:80
			method:GET/POST
			http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=version
			
- 3、P2P信令与HTTP请求示例
	- ` P2P请求 `
```c
			char cmd[64];
			memset(cmd, 0x00, sizeof(cmd));   
			sprintf(cmd, &quot;{\&quot;cmd\&quot;:\&quot;version_get\&quot;,\&quot;data\&quot;:{}}&quot;);
			vsnet_send_msg(handle, IOTYPE_USER_JSON_CONTROL_REQ, cmd, strlen(cmd)+1);
```
	**注意必须要strlen(cmd)+1,将0结束符发过去**
	- ` P2P返回 `
```JSON
			// 在各SDK的callback回调函数中，msgcode为IOTYPE_USER_JSON_CONTROL_RESP
			{
				&quot;cmd&quot;: &quot;version_get&quot;,	//同请求cmd一致
				&quot;data&quot;: {
					&quot;busybox_ver&quot;: &quot;20210106192351&quot;,
					&quot;chipsn&quot;: &quot;ed634bd10000bd8e&quot;,
					&quot;hid&quot;: &quot;D00230000200645&quot;,
					&quot;kernel_ver&quot;: &quot;20230926174611&quot;,
					&quot;model&quot;: &quot;DH-M40FCIW8F_Z&quot;,
					&quot;p2p&quot;: &quot;PPDH-000689-HVZZF&quot;,
					&quot;version&quot;: &quot;20240319182338&quot;
					},
				&quot;result&quot;: 1	//1为请求成功  0为失败 
			}
```
	- ` HTTP请求 `
```JSON			
			var xhr = new XMLHttpRequest(); // 创建XMLHttpRequest对象
			xhr.open('GET', &quot;http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=version&quot;);
			xhr.timeout = 500; // 设置超时时间为500（单位为毫秒）
			
			// 注册超时事件处理函数
			xhr.ontimeout = function() {
				
			};

			// 注册完成事件处理函数
			xhr.onload = function() {
				var responseText = xhr.responseText;
				var res = JSON.parse(responseText);
				console.log(res)
			};
			xhr.send(); // 发送请求
```
	- `响应数据`
```JSON
	{
		&quot;status&quot;: 0,	//0为成功   -1为失败
		&quot;data&quot;: {
			&quot;busybox_ver&quot;: &quot;20210106192351&quot;,
			&quot;chipsn&quot;: &quot;ed634bd10000bd8e&quot;,
			&quot;hid&quot;: &quot;D00230000200645&quot;,
			&quot;kernel_ver&quot;: &quot;20230926174611&quot;,
			&quot;model&quot;: &quot;DH-M40FCIW8F_Z&quot;,
			&quot;p2p&quot;: &quot;PPDH-000689-HVZZF&quot;,
			&quot;version&quot;: &quot;20240319182338&quot;
		},
		&quot;msg&quot;: &quot;success&quot;	//请求提示信息
	}
```			
- 4、P2P信令与HTTP请求异同
	- ` 相同点 `
		P2P信令与HTTP的返回数据一致，都存放在返回JSON数据的[data]字段下
	- ` 不同点 `
		1.P2P发送获取信息请求需携带对应请求的cmd参数(如上图示例)，带参请求需将携带参数存放在上传JSON的[data]字段中
		2.HTTP请求通过API进行GET请求时，无须进行带参，带参POST请求时只需将设置参数上传即可，无须像P2P带参存放在data字段中








---

## HTTP登录(P2P不受用)

> Page ID: 298031289


[TOC]


##### 请求URL
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=login `
	  
##### 请求方式: POST(请使用表单提交方式application/x-www-fomm-urencoded)

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|user |是  |string |用户名   |
|pass |是  |string | 密码    |

##### 返回示例 

```JSON
  {
    &quot;check&quot;: 0,
    &quot;token&quot;: &quot;xxxxxxxxxxxxxxxxxxxxxxxxxxxxx&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|check |int   |是否通过校验  1:校验成功 0:校验失败|
|token |string   |校验返回的token值  需将返回的token写入cookie中，键值名为&quot;token&quot;|

##### 备注 

	若check返回0，则数据不返回token字段

---

## 设备信息和能力级获取

> Page ID: 298031290


[TOC]

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=dev `
	  
##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;dev_get&quot;, //操作命令
		&quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;: {
		&quot;max_kbps&quot;:   6144,	//支持的最大码率
		&quot;max_fps&quot;:    25,	//支持最大编码帧率
        &quot;bm_type&quot;:    [{
                            &quot;name&quot;:  &quot;h264&quot;,
                            &quot;value&quot;:  0
                     }, {
                            &quot;name&quot;:  &quot;h265&quot;,
                            &quot;value&quot;:  1
                     }],	//支持的编码方式
              &quot;stream0&quot;:[{
                     &quot;name&quot;:  &quot;2880x1620&quot;,
                     &quot;value&quot;:  0
              }, {
                     &quot;name&quot;:  &quot;2560x1440&quot;,
                     &quot;value&quot;:  1
              }, {
                     &quot;name&quot;:  &quot;1920x1080&quot;,
                     &quot;value&quot;:  2
              }, {
                     &quot;name&quot;:  &quot;1280x720&quot;,
                     &quot;value&quot;:  3
              }, {
                     &quot;name&quot;:  &quot;640x360&quot;,
                     &quot;value&quot;:  4
              }],	//主码流编码支持的分辨率和对应的下标
       &quot;stream1&quot;:[{
                     &quot;name&quot;:  &quot;1920x1080&quot;,
                     &quot;value&quot;:  2
              }, {
                     &quot;name&quot;:  &quot;1280x720&quot;,
                     &quot;value&quot;:  3
              }, {
                     &quot;name&quot;:  &quot;640x360&quot;,
                     &quot;value&quot;:  4
              }],	//子码流编码支持的分辨率和对应的下标
          &quot;lte&quot;:1,	//是否支持4G	 1-支持 0-不支持 
          &quot;af&quot;:1,	//是否支持变焦	1-支持 0-不支持
          &quot;gat1400&quot;:1,	//是否支持GAT1400		1-支持 0-不支持
          &quot;gb28181&quot;:  0,	//是否支持国标	0-不支持 	1-支持单国标   2-支持双国标
          &quot;rtmp&quot;:     0,	//是否支持rtmp		1-支持 0-不支持
          &quot;net&quot;: 1,	//是否支持有线		1-支持 0-不支持
          &quot;wifi&quot;: 0,	//是否支持wifi		1-支持 0-不支持
		  &quot;net_reboot&quot;: 1,	//是否支持断网重启		1支持  0-不支持
          &quot;light&quot;:     1,	//是否支持白光灯		1-支持 0-不支持
          &quot;web_rtc&quot; : 1,	//支持webrtc		1-支持 0-不支持
          &quot;ivp_size&quot;:  &quot;640x360&quot;,	//入侵检测参考分辨率
          &quot;ptz&quot;: 0,	//是否支持ptz		1-支持 0-不支持
		  &quot;ptz_tracker&quot;: 0,	//是否支持智能追踪		1-支持 0-不支持
          &quot;ai_choose&quot; : 1,	//是否支持AI算法切换		1-支持 0-不支持
          &quot;ai_type&quot; : 1,	//当前运行的算法枚举值ChoseType_e;
          &quot;alarm_out&quot;:    2, 	//支持的报警输出路数
		  &quot;sound_file_num&quot; : 30,//设备支持的最大报警音频数量
          &quot;alarm_in&quot;:1,		//是否支持报警输入		1-支持 0-不支持
          &quot;pre_record&quot;:1,	//是否支持预录像		1-支持 0-不支持
		  &quot;ai_isp&quot;:1,	//是否支持AI ISP		1-支持 0-不支持
		  &quot;od&quot;: 1,		//是否支持遮挡检测       1-支持 0-不支持（字段不存在也表示不支持）
		  &quot;silent&quot;: 1,	//是否支持静默配置       1-支持 0-不支持（字段不存在也表示不支持）
		  &quot;roi&quot;: 1,		//是否支持ROI设置      1-支持 0-不支持（字段不存在也表示不支持）
		  &quot;cover&quot;: 1,	//是否支持隐私遮挡设置       1-支持 0-不支持（字段不存在也表示不支持）
		  &quot;lang_list&quot; : [&quot;chs&quot;,&quot;en&quot;],	//设备支持的语言种类列表  chs-中文 en-英文
		  &quot;smart_encode&quot; : 1,	//是否支持智能编码 1-支持 0-不支持（字段不存在也表示不支持）
		  &quot;obs&quot;: 1,	//是否支持云存储       1-支持 0-不支持（字段不存在也表示不支持）
		  &quot;visit_file_list&quot;: 1,	//是否支持文件列表访问       1-支持 0-不支持（字段不存在也表示不支持）
		  &quot;rc_list&quot;:      [{//设备支持的编码方式列表
                   &quot;rc_name&quot;:      &quot;avbr&quot;,
                   &quot;rc_value&quot;:     0
          }, {
                   &quot;rc_name&quot;:      &quot;cbr&quot;,
                   &quot;rc_value&quot;:     1
          }],
		  &quot;less_osd&quot;：1,        //1 osd支持2个 0 正常8个osd
		  &quot;invade&quot;:1,          //1 支持区域入侵 0 不支持区域入侵
		  &quot;mult_invade&quot;:1,       // 1 区域入侵支持 人形车型 0 区域入侵只支持人形
		  &quot;draw_line_rect&quot;:1  //1支持画框划线 0 不支持画框划线
	},
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|data |obj   |设备能力级信息|
|msg |string   |请求返回的提示信息|

##### 备注 

	 设备能力级将决定设备拥有对应功能接口访问权限

---

## 获取设备当前运行状态

> Page ID: 298031934


[TOC]

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=run_status `
	  
##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;run_status_get&quot;, //操作命令
		&quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;cruise&quot;: 0
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cruise |int   |当前巡航状态  0:不是巡航 1:巡航中|

##### 备注 

	 

---

## 主子码流配置获取与设置

> Page ID: 298031291


[TOC]
##### 一、主子码流配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- `  http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=video //获取主码流`
- `  http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=video1 //获取子码流`

##### P2P信令
```JSON
	{
	&quot;cmd&quot;:&quot;video_get&quot;, //操作命令 video_get主码流   video1_get子码流
	&quot;data&quot;:{}
	}
``` 

##### 数据返回
```JSON
	  {
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			 &quot;bm_type&quot;:1, // 码流类型 ： 0-H264  1-H265
			 &quot;fbl&quot; : 0, 	//分辨率下标 (主码流设备信息接口返回中的 stream0的对应分辨率的value,子码流  使用stream1)
			 &quot;frame&quot;:15,   //帧率 ，必须小于或等于设备信息接口中返回中的max_fps
			 &quot;bitrate&quot;:3000,     //码率
			 &quot;I_interval&quot;:4000,    //I帧间隔（毫秒）
			 &quot;quality&quot; : 0,       //图像质量
			 &quot;rc_mode&quot; : 0,       //编码方式
			 &quot;smart_encode&quot; : 0   //智能编码开关（需设备支持智能编码）
		},
		&quot;msg&quot; : &quot;success&quot;
	  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|data |obj   |码流配置信息|
|msg |string   |请求返回的提示信息|

|data数据键值|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|bm_type |int   |码率类型方式|0--H264      1--H265|
|frame |int   |帧率-|最小值：2 ，最大值：设备信息中返回的max_fps|
|fbl |int   |分辨率下标 |主码流使用设备信息接口返回的stream0中对应分辨率的value,子码流使用stream1|
|bitrate |int   |码率 |最小值:50 ,最大值:设备信息接口中返回的max_kbps|
|I_interval |int   |I帧最大间隔|最小值：1000，最大值：5000 （若未返回此字段， 默认填充4000)|
|quality |int   |图像质量	|0-最好 1-中等 2-一般（若未返回此字段， 默认填充0）|
|rc_mode |int   |编码方式	|0-AVBR 1-VBR 2-CBR（若未返回此字段， 默认填充0）|
|smart_encode |int   |智能编码开关	|0-关闭 1-打开|

	
##### 二、主子码流配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_video //主码流配置设置`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_video_1 //子码流配置设置`

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;video_set&quot;, //操作命令 video_set设置主码流  video1_set设置子码流
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|bm_type |是   |int|0--H264      1--H265|
|frame |是   |int|最小值：2 ，最大值：设备信息中返回的max_fps|
|fbl |是   |int |主码流使用设备信息接口返回的stream0中对应分辨率的value,子码流使用stream1|
|bitrate |是   |int |最小值:50 ,最大值:设备信息接口中返回的max_kbps|
|I_interval |否   |int|最小值：1000，最大值：5000 （若未返回此字段， 默认填充4000)|
|quality |否   |int	|0-最好 1-中等 2-一般（若未返回此字段， 默认填充0）|
|rc_mode |否   |int	|0-AVBR 1-VBR 2-CBR（若未返回此字段， 默认填充0）|
|smart_encode |否 |int   |智能编码开关	0-关闭 1-打开|

##### HTTP返回示例
```JSON
{
	&quot;status&quot;: 0,
	&quot;msg&quot; : &quot;success&quot;
}
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
{
	&quot;cmd&quot;:&quot;video_set&quot;,//操作命令,与请求一致
	&quot;result&quot;:1,//0 失败  1成功
	&quot;data&quot;:{}
}
```
##### P2P返回参数说明 
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 有线网络配置获取与设置

> Page ID: 298031293


[TOC]
#####	一、有线网络配置获取
##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=network `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;net_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;dhcp&quot;: 1,
		&quot;dns&quot;: &quot;114.114.114.114;8.8.8.8;&quot;,
		&quot;gateway&quot;: &quot;192.168.1.1&quot;,
		&quot;ip&quot;: &quot;192.168.1.188&quot;,
		&quot;netmask&quot;: &quot;255.255.255.0&quot;
    }，
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |有线网络信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|dhcp |int   |dhcp/static 获取IP|0--static      1--dhcp|
|dns |string   |dns解析地址|默认：114.114.114.114;8.8.8.8;|
|gateway |string   |网络网关地址 |网关IP|
|ip |string   |IP |本机IP地址 |
|netmask |string   |子网掩码 |默认：255.255.255.0|

#####	二、有线网络配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_network `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;net_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|dhcp |是   |int|0--static      1--dhcp|
|dns |是   |string|默认：114.114.114.114;8.8.8.8;|
|gateway |是   |string |网关IP|
|ip |是   |string |IP地址 	注:需校验设置IP的占用情况，使用IP冲突校验接口|
|netmask |是   |string |默认：255.255.255.0|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;net_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## WI-FI配置获取与设置

> Page ID: 298031295



[TOC]
#####	一、Wi-Fi网络配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=wifi `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;wifi_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;dhcp&quot;: 1,
		&quot;dns&quot;: &quot;114.114.114.114;8.8.8.8;&quot;,
		&quot;gateway&quot;: &quot;192.168.1.1&quot;,
		&quot;ip&quot;: &quot;192.168.1.188&quot;,
		&quot;netmask&quot;: &quot;255.255.255.0&quot;,
		&quot;wifi_pass&quot;: &quot;xuhui321&quot;,
		&quot;wifi_ssid&quot;: &quot;cdyctx&quot;
    }，
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |wifi网络信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|dhcp |int   |dhcp/static 获取IP|0--static      1--dhcp|
|dns |string   |dns解析地址|默认：114.114.114.114;8.8.8.8;|
|gateway |string   |网络网关地址 |网关IP|
|ip |string   |IP |本机IP地址 |
|netmask |string   |子网掩码 |默认：255.255.255.0|
|wifi_ssid |string   |当前连接WIFI的SSID |可能为空|
|wifi_pass |string   |当前连接WIFI的登录密码 |可能为空 |

#####	二、Wi-Fi网络配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_wifi `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;wifi_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|wifi_ssid |是   |string |wifi名称|
|wifi_pass |是   |string |wifi密码 |

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;wifi_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## WiFi列表获取

> Page ID: 298031823



[TOC]
#####	一、Wi-Fi列表获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=wifi_list `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;wifi_list_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;: {
		&quot;wifi_list&quot;: [{
			&quot;signal&quot;: 100,
			&quot;ssid&quot;: &quot;TPS_CD_WIFI&quot;,
			&quot;status&quot;: 1
		}, {
			&quot;signal&quot;: 100,
			&quot;ssid&quot;: &quot;cdyctx&quot;,
			&quot;status&quot;: 1
		}, {
			&quot;signal&quot;: 100,
			&quot;ssid&quot;: &quot;cdyctx100m&quot;,
			&quot;status&quot;: 1
		}, {
			&quot;signal&quot;: 100,
			&quot;ssid&quot;: &quot;IPCam_98000000000C&quot;,
			&quot;status&quot;: 1
		}, {
			&quot;signal&quot;: 92,
			&quot;ssid&quot;: &quot;cdyctx01&quot;,
			&quot;status&quot;: 1
		}, {
			&quot;signal&quot;: 92,
			&quot;ssid&quot;: &quot;ChinaNet-Kypk&quot;,
			&quot;status&quot;: 1
		}, {
			&quot;signal&quot;: 88,
			&quot;ssid&quot;: &quot;DIRECT-5E-HP 4104dw LJ&quot;,
			&quot;status&quot;: 1
		}, {
			&quot;signal&quot;: 76,
			&quot;ssid&quot;: &quot;DIRECT-D38DB632&quot;,
			&quot;status&quot;: 1
		}, {
			&quot;signal&quot;: 70,
			&quot;ssid&quot;: &quot;Ambitek&quot;,
			&quot;status&quot;: 1
		}, {
			&quot;signal&quot;: 70,
			&quot;ssid&quot;: &quot;Reexen_CD_科学&quot;,
			&quot;status&quot;: 1
		}, {
			&quot;signal&quot;: 62,
			&quot;ssid&quot;: &quot;CGP&quot;,
			&quot;status&quot;: 1
		}]
	},
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果&lt;br&gt;  0: 请求成功&lt;br&gt;	-1: 请求失败|
|data |obj   |wifi列表信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|
|:-----  |:-----|
|wifi_list |list   |wifi列表信息集合|

|wifi_list[i]数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|ssid |string   |wifi名称| 字符串|
|signal |int   |信号强度| 0-100|
|status |int   |状态| 1-未连接&lt;br&gt;4-已连接|


---

## 移动侦测配置获取与设置

> Page ID: 298031297


[TOC]
##### 一、移动侦测配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=motion `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;alarm_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;all_time&quot;: 1,
		&quot;enable&quot;: 0,
		&quot;frequency&quot;: 1,
		&quot;level&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;gat1400_snapinterval&quot; : 15,
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		],
		&quot;sound_file_no&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0],
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot; : 0,
		&quot;trig_light&quot;: 0,
		&quot;trig_light_delay&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_msgpush&quot;: 0,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_record&quot;: 0,
		&quot;trig_speaker&quot;: 0,
		&quot;trig_speaker_repeat&quot;: 0
    }，
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |移动侦测配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |移动侦测开关|0--关闭      1--开启|
|frequency |int   |侦测频率|不在使用|
|level |int   |移动侦测灵敏度 |0-4, 0为迟钝,4为灵敏|
|gat1400_snapinterval |int   |1400上报间隔 |秒数 3-300|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|sound_file_no |int   |报警音频下标，由报警音频列表接口获取|默认0|

|data联动配置项类|说明|
|:-----  |------|    
|trig_xxx   |[详见联动配置说明](http://192.168.1.3:81/web/#/601874687/298031301 &quot;Heading link&quot;)	|

##### 二、移动侦测配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_motion `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;alarm_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |否   |int|0--关闭      1--开启|
|frequency |否   |int|不在使用|
|level |否   |int |0-4, 0为迟钝,4为灵敏|
|gat1400_snapinterval |否   |int | 秒数 15-300|
|all_time |否   |int |0--非全天      1-全天|
|period |否   |list |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|sound_file_no |否   |int，由报警音频列表接口获取|默认0|
|联动配置类 |否   |	|[详见联动配置说明](http://192.168.1.3:81/web/#/601874687/298031301 &quot;Heading link&quot;)	|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;alarm_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 区域入侵配置获取与设置

> Page ID: 298031299


[TOC]
#####	一、区域入侵配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=invade `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;invade_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回

```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;all_time&quot;: 1,
		&quot;enable&quot;: 0,
		&quot;type&quot;: 0,
		&quot;level&quot;: 2,
		&quot;display_detection_box&quot;:1,
		&quot;gat1400_snapinterval&quot; : 15,
		&quot;netcore_snapinterval&quot; : 15,
		&quot;show_area&quot;: 0,
		&quot;light_not_flicker&quot;: 0,
		&quot;invade_detect_type&quot;:1,
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		],
		&quot;points&quot;: [
			[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;],
			[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;],
			[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;],
			[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;]
		],
		&quot;region_trigs&quot;: [{
                        &quot;control_speaker&quot;:      1,
                        &quot;control_light&quot;:        1,
                        &quot;control_alarmout&quot;:     [0, 0]
                }, {
                        &quot;control_speaker&quot;:      1,
                        &quot;control_light&quot;:        1,
                        &quot;control_alarmout&quot;:     [0, 0]
                }, {
                        &quot;control_speaker&quot;:      1,
                        &quot;control_light&quot;:        1,
                        &quot;control_alarmout&quot;:     [0, 0]
                }, {
                        &quot;control_speaker&quot;:      1,
                        &quot;control_light&quot;:        1,
                        &quot;control_alarmout&quot;:     [0, 0]
                }],
		&quot;refer_size&quot;: 41943400,
		&quot;sound_file_no&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0],
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 0,
		&quot;trig_light&quot;: 0,
		&quot;trig_light_delay&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_msgpush&quot;: 0,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_record&quot;: 0,
		&quot;trig_speaker&quot;: 0,
		&quot;trig_speaker_repeat&quot;: 0,
		&quot;crossline_enable&quot;:     0,
        &quot;crossline_start&quot;:      &quot;320:384&quot;,
        &quot;crossline_end&quot;:        &quot;320:0&quot;,
        &quot;crossline_event&quot;:      3,
        &quot;crossline_sound_file_no&quot;:      0,
        &quot;crossline_points&quot;:     [[&quot;0:0&quot;, &quot;640:0&quot;, &quot;640:384&quot;, &quot;0:384&quot;]],
        &quot;crossline_region_trigs&quot;:       [{
                        &quot;control_speaker&quot;:      0,
                        &quot;control_light&quot;:        0,
                        &quot;control_alarmout&quot;:     [0, 0]
                }],
        &quot;linger_enable&quot;:        1,
        &quot;linger_repeat_report&quot;: 1,
        &quot;linger_repeat_report_interval_time&quot;:   5,
        &quot;linger_enterleave_points&quot;:     [[&quot;0:0&quot;, &quot;320:0&quot;, &quot;320:384&quot;, &quot;0:384&quot;]],
        &quot;linger_sound_file_no&quot;: 0,
        &quot;linger_time&quot;:  10,
        &quot;linger_region_trigs&quot;:  [{
                        &quot;control_speaker&quot;:      0,
                        &quot;control_light&quot;:        0,
                        &quot;control_alarmout&quot;:     [0, 0]
                }],
        &quot;enterleave_enable&quot;:    1,
        &quot;enterleave_type&quot;:      3,
        &quot;enter_sound_file_no&quot;:     0,
       &quot;leave_sound_file_no&quot;:     0,
        &quot;enterleave_region_trigs&quot;:      [{
                        &quot;control_speaker&quot;:      0,
                        &quot;control_light&quot;:        0,
                        &quot;control_alarmout&quot;:     [0, 0]
                }]
    }，
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |区域入侵配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |移动侦测开关|0--关闭      1--开启|
|type |int   |区域入侵类型|0 或者无此项 区域入侵  1 越界检测  &lt;/br&gt;  2 徘徊-进入-离开检测|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|show_area |int   |是否显示区域|	2-不显示  1-显示|
|level |int   |移动侦测灵敏度 |0-4, 0为迟钝,4为灵敏|
|gat1400_snapinterval |int   |1400上报间隔 |秒数 15-300|
|netcore_snapinterval |int   |本地AI推送间隔 |秒数 5-300|
|invade_detect_type |int   |区域入侵支持的检测类型  |1 人形 2 车型 3 人形+车型  是否支持车型受到设备能力集中的mult_invade 控制 |
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |入侵检测区域坐标	|在参考分辨率下的区域坐标（4-8边形），最大支持4个|
|refer_size |int   |区域入侵画面参考分辨率| 宽：(refer_size&gt;&gt;16)&amp;0xffff	高：refer_size&amp;0xffff|
|sound_file_no |int   |报警音频下标，由报警音频列表接口获取|默认0|
|region_trigs |Array   |区域联动配置 | 最多支持4个区域的联动配置|
|region_trigs[i].control_speaker |int   |区域联动配置.声音联动 | 1 开启  0 关闭 trig_speaker|
|region_trigs[i].control_light |int   |区域联动配置.灯光联动 | 1 开启  0 关闭 trig_light为总开关|
|region_trigs[i].control_alarmout[0] |int   |区域联动配置.报警输出1联动 | 1 开启  0 关闭|
|region_trigs[i].control_alarmout[1] |int   |区域联动配置.报警输出2联动 | 1 开启  0 关闭|
|~~trig_alarm_out~~ |~~list~~   |~~联动报警输出list~~|~~元素值 0 -不开启联动 1-开启联动 (设备报警输出数量需大于0) 此项已去除 替换为region_trigs[i].control_alarmout~~|
|crossline_enable |int   |越界检测使能 仅type 为 1 时有效 |0--关闭      1--开启|
|crossline_start |string   |越界检测坐标起点 仅type 为 1 时有效|&quot;x:y&quot; refer_size为参考的x y坐标 起点指向终点的左侧为A区域 右侧为B区域|
|crossline_end |string   |越界检测坐标终点 仅type 为 1 时有效|&quot;x:y&quot; refer_size为参考的x y坐标 起点指向终点的左侧为A区域 右侧为B区域|
|crossline_event |int   |越界检测使能 仅type 为 1 时有效 |1 A到B 2 B 到 A 3 双向|
|crossline_sound_file_no |int   |报警音频下标，由报警音频列表接口获取 仅type 为 1 时有效|默认0|
|crossline_points |list   |越界检测区域坐标 仅type 为 1 时有效|在参考分辨率下的区域坐标（4-8边形），最大支持1个|
|crossline_region_trigs |Array   |越界检测区域联动配置 | 最多支持1个区域的联动配置|
|crossline_region_trigs[0].control_speaker |int   |区域联动配置.声音联动 | 1 开启  0 关闭 trig_speaker|
|crossline_region_trigs[0].control_light |int   |区域联动配置.灯光联动 | 1 开启  0 关闭 trig_light为总开关|
|crossline_region_trigs[0].control_alarmout[0] |int   |区域联动配置.报警输出1联动 | 1 开启  0 关闭|
|crossline_region_trigs[0].control_alarmout[1] |int   |区域联动配置.报警输出2联动 | 1 开启  0 关闭|
|linger_enable |int   |徘徊检测使能 仅type 为 2 时有效 |0--关闭      1--开启|
|linger_repeat_report_interval_time |int   |徘徊检测是否持续上报 仅type 为 2 时有效|2-30秒|
|linger_enterleave_points |list   |徘徊-进入-离开 检测区域坐标 仅type 为 2 时有效|在参考分辨率下的区域坐标（4-8边形），最大支持1个|
|linger_sound_file_no |int   |报警音频下标，由报警音频列表接口获取 仅type 为 2 时有效|默认0|
|linger_time |int   |运行最长徘徊时间 仅type 为 2 时有效|5-180秒|
|linger_region_trigs |Array   |徘徊检测区域联动配置 仅type 为 2 时有效| 最多支持1个区域的联动配置|
|linger_region_trigs[0].control_speaker |int   |区域联动配置.声音联动 | 1 开启  0 关闭 trig_speaker|
|linger_region_trigs[0].control_light |int   |区域联动配置.灯光联动 | 1 开启  0 关闭 trig_light为总开关|
|linger_region_trigs[0].control_alarmout[0] |int   |区域联动配置.报警输出1联动 | 1 开启  0 关闭|
|linger_region_trigs[0].control_alarmout[1] |int   |区域联动配置.报警输出2联动 | 1 开启  0 关闭|
|enterleave_enable |int   |进入离开检测使能 仅type 为 2 时有效 |0--关闭      1--开启|
|enterleave_type |int   |徘徊检测使能 仅type 为 2 时有效 |1 进入 2 离开 3 进入&amp;离开|
|enter_sound_file_no |int   |进入报警音频下标，由报警音频列表接口获取 仅type 为 2 时有效|默认0|
|leave_sound_file_no |int   |离开报警音频下标，由报警音频列表接口获取 仅type 为 2 时有效|默认0|
|enterleave_region_trigs |Array   |进入离开检测区域联动配置 仅type 为 2 时有效| 最多支持1个区域的联动配置|
|enterleave_region_trigs[0].control_speaker |int   |区域联动配置.声音联动 | 1 开启  0 关闭 trig_speaker|
|enterleave_region_trigs[0].control_light |int   |区域联动配置.灯光联动 | 1 开启  0 关闭 trig_light为总开关|
|enterleave_region_trigs[0].control_alarmout[0] |int   |区域联动配置.报警输出1联动 | 1 开启  0 关闭|
|enterleave_region_trigs[0].control_alarmout[1] |int   |区域联动配置.报警输出2联动 | 1 开启  0 关闭|

|data联动配置项类|说明|
|:-----  |------|    
|trig_xxx   |[详见联动配置说明](http://yctx.vs98.com:1381/web/#/601874687/298031301 &quot;Heading link&quot;)	|

#####	二、区域入侵配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_invade `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;invade_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数
参考 返回参数说明

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;invade_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 录像配置获取与设置

> Page ID: 298031302


[TOC]
#####	一、录像配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=record `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;record_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;all_time&quot;: 1,
		&quot;enable&quot;: 1,
		&quot;period&quot;: [
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		],
		&quot;pre_record&quot;: 10 //预录像时长 0-15秒
       },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |录像配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |录像开关	|0--关闭      1--开启|
|all_time |int   |全天录像	|0--非全天      1--全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|pre_record |int   |预录时长 |时长 0-15秒 |

#####	二、录像配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_record `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;record_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |否   |int	|0--关闭      1--开启|
|all_time |否   |int	|0--非全天      1--全天|
|period |否   |list |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|pre_record |否   |int |时长 0-15秒 |

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;record_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|


---

## 音频配置获取与设置

> Page ID: 298031303


[TOC]
#####	一、音频配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=audioinout `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;voice_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
	{
	&quot;status&quot;: 0,
	&quot;data&quot;: {
		&quot;enable_in&quot;: 1,
		&quot;in_volume&quot;: 100,
		&quot;enable_out&quot;: 1,
		&quot;out_volume&quot;: 100
	},
	&quot;msg&quot;: &quot;success&quot;
}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |音频配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable_in |int   |麦克风采集开关|0--关闭    1--开启|
|enable_out |int   |喇叭开关|0--关闭    1--开启|
|in_volume |int   |麦克风采集音量 |0-100|
|out_volume |int   |喇叭音量 |0-100|

#####	二、音频配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_audio_inout `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;voice_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable_in |否 |int   |0--关闭      1--开启|
|enable_out |否 |int   |0--关闭      1--开启|
|in_volume |否 |int   |音量大小0-100|
|out_volume |否 |int   |音量大小0-100 |

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;voice_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## TF卡信息获取与格式化

> Page ID: 298031304


[TOC]
#####	一、TF卡信息获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=tf `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;tf_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  : {
		&quot;format_process&quot;: 0, //格式化进度 0-100
		&quot;free&quot;: &quot;51333&quot;, //sd卡剩余容量
		&quot;size&quot;: &quot;60872&quot;, //sd卡容量
		&quot;status&quot;: 1 //sd卡状态  TUTK_SD_STSTUS_XXX
       },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |TF卡信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|format_process |int   |格式化进度	| 0-100|
|free |int   |剩余容量|	单位M|
|size |int   |总容量 | 单位M|
|status |int   |sd卡状态 |0-sd卡不存在 1-正常  2-未格式化 3-格式化成功 4-只读 5-格式化中|

#####	二、TF卡格式化

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_tf `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;tf_format&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;tf_format&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 时区配置获取与设置

> Page ID: 298031305


[TOC]
#####	一、时区配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=timezone `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;timezone_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;: {
           &quot;timezone&quot;: 480, //时区X60
		   &quot;ntp_svr&quot;: &quot;xxxxxx&quot;,
		   &quot;ntp_interval&quot; : 60,
		   &quot;timing_mode&quot; : 0
       },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |时区配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|timezone |int   |时区分钟数|-720到720|
|ntp_svr |string   |ntp校时服务地址| 服务器地址|
|ntp_interval |int   |ntp校时间隔（秒数） | 界面显示使用分钟|
|timing_mode |int   |ntp校时方式 |0-默认校时 1-指定NTP服务器 2-onvif校时 3-国标校时 4-1400校时|

#####	二、时区设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_timezone `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;timezone_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|timezone |否 |int   |-720到720(分钟)|
|ntp_svr |否 |string   |服务器地址|
|ntp_interval |否 |int   | 秒数，60-1440分钟（需乘以60）|
|timing_mode |是 |int   | 0-默认校时 1-指定NTP服务器 2-onvif校时 3-国标校时 4-1400校时|
|time |否 |int   | 时间戳 :本地时间戳 (仅限同步本地电脑时间使用，时区使用配置时区) |

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;timezone_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 用户名、密码、固件信息、升级

> Page ID: 298031306


[TOC]
#####	一、设备用户名获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=user `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;user_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON 
  {
    &quot;status&quot;: 0,
    &quot;data&quot;: {
		&quot;user&quot;: &quot;admin&quot;
	},
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |用户名信息信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|user |string   |用户名|字符串|

#####	二、设备密码设置

##### HTTP请求
- ` Method: POST `
- ` Params: 详见请求参数`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_user `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;pass_set&quot;, //操作命令
	   &quot;data&quot;:{
	   		//详见请求参数
	   }
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|user |是 |string   |用户名同用户名获取接口返回一致|
|pass |是 |string   |新密码  长度小于64|

##### HTTP返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;pass_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

#####	三、固件信息获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=version `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;version_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
``` 
  {
    &quot;status&quot;: 0,
    &quot;data&quot;: {
		&quot;busybox_ver&quot; : &quot;20240307170011&quot;,
		&quot;kernel_ver&quot; : &quot;20240307170011&quot;,
		&quot;chipsn&quot;: &quot;3516d5002749096423e2090831c785d74cd8030a00025c2700000007&quot;,
        &quot;hid&quot;: &quot;D00230000200643&quot;,
        &quot;model&quot;: &quot;YC-H401CIW6_NN&quot;,
        &quot;p2p&quot;: &quot;123456789ABCDEFGHIJK&quot;,
        &quot;version&quot;: &quot;20240307170011&quot;
	},
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |固件信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|busybox_ver |string   |busybox版本|字符串|
|kernel_ver |string   |kernel版本|字符串|
|chipsn |string   |chipsn|字符串|
|hid |string   |硬件ID|字符串|
|model |string   |设备型号|字符串|
|p2p |string   |P2PId |字符串|
|version |string   |固件版本信息|字符串|

#####	四、固件升级(P2P不受用)

##### HTTP请求
- ` Method: POST `
- ` Params: formdata`
- ` Key: file`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=update `
	  
##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|



---

## RTMP配置获取与设置

> Page ID: 298031307


[TOC]
#####	一、RTMP配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=rtmp `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;rtmp_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;addr&quot;: &quot;xxxxx&quot;,
		&quot;audio&quot;: 0,
		&quot;enable&quot;: 0,
		&quot;stream_no&quot;: 0
     },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |RTMP配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |开关|0--关闭      1--开启|
|audio |int   |音频开关|0--关闭      1--开启|
|addr |string   |rtmp推流地址 | 字符串|
|stream_no |int   |主子码流 |0-主码流  1-子码流|

#####	二、RTMP配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_rtmp `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;rtmp_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |是 |int   |0--关闭      1--开启|
|audio |是 |int   |0--关闭      1--开启|
|addr |是 |string   |rtmp推流地址  字符串|
|stream_no |是 |int   |0-主码流  1-子码流|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;rtmp_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## OSD配置获取与设置

> Page ID: 298031308


[TOC]
#####	一、音频配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=osd `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;osd_get&quot;, //操作命令
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;osd_list&quot;: [{
			&quot;enable&quot;: 1,
			&quot;x&quot;: 8,
			&quot;y&quot;: 4
		}, {
			&quot;enable&quot;: 1,
			&quot;text&quot;: &quot;osd_text_line&quot;,
			&quot;x&quot;: 8,
			&quot;y&quot;: 340
		}, {
			&quot;enable&quot;: 0,
			&quot;text&quot;: &quot;&quot;,
			&quot;x&quot;: -2,
			&quot;y&quot;: 250
		}, {
			&quot;enable&quot;: 0,
			&quot;text&quot;: &quot;&quot;,
			&quot;x&quot;: -2,
			&quot;y&quot;: 268
		}, {
			&quot;enable&quot;: 0,
			&quot;text&quot;: &quot;&quot;,
			&quot;x&quot;: -2,
			&quot;y&quot;: 286
		}, {
			&quot;enable&quot;: 0,
			&quot;text&quot;: &quot;&quot;,
			&quot;x&quot;: -2,
			&quot;y&quot;: 304
		}, {
			&quot;enable&quot;: 0,
			&quot;text&quot;: &quot;&quot;,
			&quot;x&quot;: -2,
			&quot;y&quot;: 322
		}, {
			&quot;enable&quot;: 0,
			&quot;text&quot;: &quot;&quot;,
			&quot;x&quot;: -2,
			&quot;y&quot;: 340
		}],
		&quot;date_format&quot;: 4,
		&quot;time_format&quot;: 3,
		&quot;af_display&quot;:1
    },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |OSD配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|:-----|-----                           |
|date_format |int   |日期格式|0:M/d/yyyy  example: 3/6/2013 1:MM/dd/yyyy  example: 03/06/2013 2:dd/MM/yyyy  example: 06/03/2013 3:yyyy/MM/dd  example: 2013/03/06 4:yyyy-MM-dd  example: 2013-06-03 5:dddd, MMMM dd, yyyy  example: Wednesday, March 06, 2013	6:MMMM dd, yyyy  example: March 06, 2013 7:dd MMMM, yyyy  example: 06 March, 2013|
|time_format |int   |时间格式|0:h:mm:ss tt  example: 2:14:21 PM 1:hh:mm:ss tt  example: 02:14:21 PM 2:H:mm:ss  example: 14:14:21 3:HH:mm:ss  example: 14:14:21|
|af_display |int   |osd显示倍数|0-不显示  1-显示|
|osd_list |list   |支持的8个OSD的集合 |osd_list[0]为时间日期OSD，其余为自定义OSD|

|osd_list元素|类型|说明|取值范围|
|:-----  |:-----|:----- |-----                           |
|enable |int   |OSD显示与否|0-不显示  1-显示|
|text |string   |OSD文字信息| OSD长度&lt;= 64|
|x |int   |支持的8个OSD的集合 | 8-靠左   -1-居中  -2-靠右|
|y |int   |支持的8个OSD的集合 |340-底部倒数第0行	322-底部倒数第一行 304-底部倒数第二行 286-底部倒数第三行 268-底部倒数第四行 250-底部倒数第五行|

#####	二、OSD配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_osd `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;osd_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|date_format |是 |int |0:M/d/yyyy  example: 3/6/2013 1:MM/dd/yyyy  example: 03/06/2013 2:dd/MM/yyyy  example: 06/03/2013 3:yyyy/MM/dd  example: 2013/03/06 4:yyyy-MM-dd  example: 2013-06-03 5:dddd, MMMM dd, yyyy  example: Wednesday, March 06, 2013	6:MMMM dd, yyyy  example: March 06, 2013 7:dd MMMM, yyyy  example: 06 March, 2013|
|time_format |是 |int  |0:h:mm:ss tt  example: 2:14:21 PM 1:hh:mm:ss tt  example: 02:14:21 PM 2:H:mm:ss  example: 14:14:21 3:HH:mm:ss  example: 14:14:21|
|af_display |int   |osd显示倍数|0-不显示  1-显示|
|osd_list |是 |list  |osd_list[0]为时间日期OSD，其余为自定义OSD|

|osd_list参数名|必选|类型|说明|
|:-----  |:-----|:----- |-----                           |
|enable |是 |int   |0-不显示  1-显示|
|text |是 |string  | OSD长度&lt;= 64|
|x |是 |int   | 8-靠左   -1-居中  -2-靠右|
|y |是 |int   |340-底部倒数第0行	322-底部倒数第一行 304-底部倒数第二行 286-底部倒数第三行 268-底部倒数第四行 250-底部倒数第五行|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;osd_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|


---

## 灯光配置获取与设置

> Page ID: 298031309


[TOC]
#####	一、灯光配置获取(需设备支持灯光)

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=light_mode `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;light_mode_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
``` 
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
         &quot;light_level&quot;: 50,
         &quot;light_wkmode&quot;: 0
     },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |灯光配置配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|light_level |int   |灯光亮度|0-100	灯光亮度等级|
|light_wkmode |int   |灯光工作模式|0-红外(红外模式不可设置),1-全彩,2-智能全彩|

#####	二、灯光配置设置(需设备支持灯光)

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_light_mode `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;light_mode_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|light_level |否 |int   |0-100	灯光亮度等级|
|light_wkmode |否 |int   |1-红外,2-全彩,3-智能全部|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;light_mode_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## GB28181配置获取与设置

> Page ID: 298031310


[TOC]
#####	一、GB28181配置获取（需设置支持GB28181）

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=gb28181 //国标一`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=gb28181_1 //国标二（需支持双国标）`

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;gb_get&quot;, //操作命令  gb_get-国标一  gb_1_get-国标二（需支持双国标）
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
        &quot;alarm_id&quot;: &quot;34020000001340000010&quot;,
        &quot;channel_id&quot;: &quot;34020000002020000001&quot;,
        &quot;dev_port&quot;: 5060,
        &quot;device_id&quot;: &quot;34020000001320000001&quot;,
        &quot;enable&quot;: 0,
        &quot;expire_time&quot;: 3600,
        &quot;hart_num&quot;: 3,
        &quot;hart_time&quot;: 30,
        &quot;proto_type&quot;: 0,
        &quot;protocol_version&quot;: 0,
        &quot;server_addr&quot;: &quot;192.168.1.8&quot;,
        &quot;server_domain&quot;: &quot;3402000000&quot;,
        &quot;server_id&quot;: &quot;34020000002000000001&quot;,
        &quot;server_pass&quot;: &quot;12345678&quot;,
        &quot;server_port&quot;: 5060,
        &quot;latitude&quot;:&quot;39.904989&quot;,
        &quot;longitude&quot;:&quot;116.407526&quot;,
        &quot;stream_num&quot;: 0
     },
     &quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |国标配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |国标开关	|0--关闭      1--开启|
|server_id |string   |SIP服务器id |字符串|
|server_addr |string   |SIP服务器地址 |字符串|
|server_domain |string   |SIP域 |字符串|
|server_port |int   |SIP服务器端口	|整型 |
|server_pass |string   |密码 |字符串|
|dev_port |int   |设备本地端口	|整型 |
|device_id |string   |设备id |字符串|
|alarm_id |string   |报警id |字符串|
|expire_time |int   |注册有效时长	|	秒数1-86400区间 |
|hart_time |int   |心跳周期	|	秒数1-86400区间 |
|hart_num |int   |心跳超时数	|	秒数2-30区间 |
|proto_type |int   |网络方式	|	0-UDP   1-TCP |
|protocol_version |int   |国标协议版本	|	0-2016版本   1-2022版本 |
|stream_num |int   |码流	|	0-主码流   1-子码流 |
|latitude |string   |纬度	|	纬度字符串 WGS-84坐标系 点表示法|
|longitude |string   |经度	|	经度字符串 WGS-84坐标系 点表示法 |
#####	二、GB28181配置设置（需设置支持GB28181）

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_gb28181 //国标一设置`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_gb28181_1 //国标二设置（需支持双国标）`

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;gb_set&quot;, //操作命令		gb_set-国标一   gb_1_set-国标二（需支持双国标）
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |是 |int   |0--关闭      1--开启|
|server_id |是 |string   |字符串|
|server_addr |是 |string   |字符串|
|server_domain |是 |string   |字符串|
|server_port |是 |int   |整型 |
|server_pass |是 |string   |字符串|
|dev_port |是 |int   |设备本地端口,若支持双国标，国标一和国标二的本地端口不能一致|
|device_id |是 |string   |字符串|
|alarm_id |是 |string   |字符串|
|expire_time |是 |int   |秒数1-86400区间 |
|hart_time |是 |int   |秒数1-86400区间 |
|hart_num |是 |int   |秒数2-30区间 |
|proto_type |是 |int   |0-UDP   1-TCP 若支持双国标，国标一与国标二的协议类型必须一致|
|protocol_version |是 |int   |国标协议版本	0-2016版本   1-2022版本 |
|stream_num |是 |int   |0-主码流   1-子码流 |
|latitude |否 |string   |纬度字符串 WGS-84坐标系 点表示法|
|longitude |否 |string   |经度字符串 WGS-84坐标系 点表示法|
##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;gb_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

#####	三、GB28181状态获取（需设置支持GB28181）

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=28181_state //国标一状态`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=28181_1_state //国标二状态（需支持双国标）`

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;28181_state_get&quot;, //操作命令  28181_state_get-国标一  28181_1_state_get-国标二（需支持双国标）
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;state&quot;: 0
     },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |国标状态信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|state |int   |国标状态	|0--空闲  1--注册中 2--等待中  3--未注册|


---

## GAT1400配置获取与设置

> Page ID: 298031311


[TOC]
#####	一、GAT1400配置获取(需设备支持1400协议)

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=gat1400 `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;gat_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;channel_id&quot;: &quot;45010001491119000101&quot;,
		&quot;device_id&quot;: &quot;45010001491119000101&quot;,
		&quot;enable&quot;: 0,
		&quot;gat_1400_addr&quot;: &quot;http://116.199.15.60:2530&quot;,
		&quot;heart_num&quot;: 3,
		&quot;heart_time&quot;: 30,
		&quot;re_upload&quot;:1,
		&quot;report_image_mode&quot;:3,
		&quot;password&quot;: &quot;catv12345&quot;,
		&quot;user&quot;: &quot;admin&quot;
    },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |1400配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |1400协议开关|0--关闭      1--开启|
|channel_id |string   |通道ID |字符串（32）最长32 建议和国标编码对齐 使用20位|
|gat_1400_addr |string   |1400服务器地址|字符串（256）|
|user |string   |1400用户名 |字符串(16)|
|password |string   |密码 |字符串(16)|
|hart_time |int   |心跳周期	|	秒数5-300区间 |
|hart_num |int   |心跳超时数	|	秒数2-10区间 |
|re_upload |int   |是否开启断网重传&lt;/br&gt;（需要设备支持SD卡 或者emmc作为sd卡使用）	|	0 关闭 1 开启 |
|report_image_mode |int   |上传图片控制	|	1 全景图 2 小图 3 全景图+小图（默认）仅人脸、车辆、车牌生效|
|device_id |string   |设备id |字符串（32）最长32 建议和国标编码对齐 使用20位|

#####	二、GAT1400配置设置(需设备支持1400协议)

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_gat1400 `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;gat_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
	
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |否 |int   |0--关闭      1--开启|
|channel_id |否 |string   |字符串|
|gat_1400_addr |否 |string   |字符串|
|user |否 |string   |字符串|
|password |否 |string   |字符串|
|hart_time |否 |int   |	秒数5-300区间 |
|hart_num |否 |int   |	秒数2-10区间 |
|re_upload |是   |int|	是否开启断网重传&lt;/br&gt;（需要设备支持SD卡 或者emmc作为sd卡使用）&lt;/br&gt;0 关闭 1开启 |
|report_image_mode |int   |上传图片控制	|	1 全景图 2 小图 3 全景图+小图（默认）仅人脸、车辆、车牌生效|
|device_id |否 |string   |字符串|
##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;gat_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

#####	三、GAT1400状态获取（需设备设置支持1400协议）

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=1400_state `

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;1400_state_get&quot;, //操作命令
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;state&quot;: 0
     },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |国标状态信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|state |int   |国标状态	|0--注册中  1--连接成功|

#####	四、获取数据库中人脸记录条数（需设备设置人脸算法）

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=dbnum `

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;dbnum_get&quot;, //操作命令
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;total_num&quot;: 0
     },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |国标状态信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|total_num |int   |记录条数	|整型|

---

## 定时抓拍配置获取与设置

> Page ID: 298031312


[TOC]
#####	一、定时抓拍配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=timedcapture `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;timedcap_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;all_time&quot;: 1,
		&quot;enable&quot;: 0,
		&quot;interval_time&quot;: 60,
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
     },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |定时抓拍配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |定时抓拍开关|0--关闭      1--开启|
|all_time |int   |是否全天|0--非全天      1--全天|
|interval_time |int   |抓拍间隔 | 秒数 10 - 28800|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|

#####	二、定时抓拍配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_timedcapture `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;timedcap_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |否 |int   |0--关闭      1--开启|
|all_time |否 |int   |0--非全天      1--全天|
|interval_time |否 |int   |抓拍间隔 秒数 10 - 28800|
|period |否 |list   |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;timedcap_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 报警输出状态获取与输出控制

> Page ID: 298031313


[TOC]
#####	一、报警输出通道状态获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=alarm_out `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;alarm_out_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;gpio_alarm_out&quot;: [{
			&quot;state&quot;: 1
		}, {
			&quot;state&quot;: 1
		}]
     },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |报警输出状态信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|gpio_alarm_out |list   |通道集合 |list[i].state 	0-不可用  1-正常状态 2-正在工作中|

#####	二、报警输出通道控制

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_alarm_work `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;alarm_work&quot;, //操作命令
		&quot;data&quot;:{
			&quot;channel&quot; : 0, //报警输出通道   0-第一通道  1-第二通道
			&quot;auto_close&quot;:1,//可选项，是否根据报警输出延时时间自动关闭 1,自动关闭 0 或者没有这一项 必须手动关闭
            &quot;open&quot; : 0 //报警输出开关 0-关闭   1-打开  auto_close 不为1 必须手动关闭
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|channel |是 |int   |通道下标 0-第一通道  1-第二通道|
|auto_close |否 |int   |自动关闭 1 是 2 否|
|open |是 |int   |0-关闭   1-打开 （注：auto_close 不为1 的时候 开启报警输出，必须手动关闭 )|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;alarm_work&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|


---

## 报警输入通道配置获取与设置

> Page ID: 298031314


[TOC]
#####	一、报警输入配置获取(需设备支持报警输入)

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=alarm_in `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;alarm_in_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;alarm_in&quot;: [{
			&quot;all_time&quot;: 1,
			&quot;enable&quot;: 0,
			&quot;light_not_flicker&quot;: 0,
			&quot;mode&quot;: 0,
			&quot;gat1400_snapinterval&quot; : 15,
			&quot;name&quot;: &quot;AlarmIn0&quot;,
			&quot;period&quot;: [
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
			],
			&quot;sound_file_no&quot;: 0,
			&quot;trig_alarm_out&quot;: [0, 0],
			&quot;trig_gb28181&quot;: 1,
			&quot;trig_gat1400&quot; : 0,
			&quot;trig_light&quot;: 0,
			&quot;trig_light_delay&quot;: 0,
			&quot;trig_light_flicker&quot;: 0,
			&quot;trig_msgpush&quot;: 0,
			&quot;trig_onvif&quot;: 0,
			&quot;trig_record&quot;: 0,
			&quot;trig_speaker&quot;: 0,
			&quot;trig_speaker_repeat&quot;: 0
		}, {
			&quot;all_time&quot;: 1,
			&quot;enable&quot;: 0,
			&quot;light_not_flicker&quot;: 0,
			&quot;mode&quot;: 0,
			&quot;gat1400_snapinterval&quot; : 15,
			&quot;name&quot;: &quot;AlarmIn1&quot;,
			&quot;period&quot;: [
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
				[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
			],
			&quot;sound_file_no&quot;: 0,
			&quot;trig_alarm_out&quot;: [0, 0],
			&quot;trig_gb28181&quot;: 1,
			&quot;trig_gat1400&quot; : 0,
			&quot;trig_light&quot;: 0,
			&quot;trig_light_delay&quot;: 0,
			&quot;trig_light_flicker&quot;: 0,
			&quot;trig_msgpush&quot;: 0,
			&quot;trig_onvif&quot;: 0,
			&quot;trig_record&quot;: 0,
			&quot;trig_speaker&quot;: 0,
			&quot;trig_speaker_repeat&quot;: 0
		}],
       &quot;alarm_in_state&quot;: [0, 1] //通道状态 1可用  0不可用
    },
	&quot;msg&quot; : &quot;success&quot;
  }
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |音频配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarm_in |list   |报警输入通道配置集合| alarm_in[i] 输入通道配置信息|
|alarm_in_state |list   |报警输入通道状态集合|alarm_in_state[i] 输入通道状态信息|

|alarm_in[i]|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |报警输入使能开关| 0--关闭  1--开启|
|all_time |int |是否全天工作	| 0--非全天  1--全天|
|name |string  |通道名称 |字符串 |
|mode |int |触发电平	| 0--闭路报警  1--开路报警|
|gat1400_snapinterval |int |1400上报间隔	| 秒数 15-300|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|sound_file_no |int   |报警音频下标，由报警音频列表接口获取|默认0|
|trig_xxx   ||联动配置项|[详见联动配置说明](http://192.168.1.3:81/web/#/601874687/298031301 &quot;Heading link&quot;)	|

|alarm_in_state[i]|类型|说明|取值范围|
|:-----  |:-----|-----                           |
| |int   |报警输入通道状态| 1可用  0不可用|

#####	二、报警输入配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_alarm_in `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;alarm_in_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|alarm_in |是 |list   |报警输入通道配置集合 |

|alarm_in[i]|必选|类型|取值范围|
|:-----  |:-----|-----                           |
|enable |是 |int   |报警输入使能开关| 0--关闭  1--开启|
|all_time |是 |int |是否全天工作	| 0--非全天  1--全天|
|name |是 |string  |通道名称 |字符串 |
|mode |是 |int |触发电平	| 0--闭路报警  1--开路报警|
|gat1400_snapinterval |否   |int | 秒数 15-300|
|period |是	|list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|sound_file_no |是 |int   |报警音频下标，由报警音频列表接口获取|默认0|
|trig_xxx |是 |联动配置项|[详见联动配置说明](http://192.168.1.3:81/web/#/601874687/298031301 &quot;Heading link&quot;)	|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;alarm_in_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|


---

## IP冲突校验

> Page ID: 298031315


[TOC]
#####	IP冲突校验

##### HTTP请求
- ` Method: POST `
- ` Params: 请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=cfg_ip_check `

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;ip_check&quot;, //操作命令
	   &quot;data&quot;:{
	   		&quot;ip&quot; :  &quot;192.168.1.216&quot;
	   }
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
                         |
|ip |是 |string  |校验的IP地址 不为空|

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;check_result&quot;: -1   //-1表示冲突   1表示可用
     },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |音频配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|check_result |int   |IP校验结果|-1-冲突   1-可用|


---

## 变焦曲线校准、辅助聚焦、镜头初始化

> Page ID: 298031316


[TOC]
#####	变焦曲线校准、辅助聚焦、镜头初始化(需设备支持变焦)

##### 变焦曲线校准
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_align_curve `
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;align_curve&quot;, //操作命令
	   &quot;data&quot;:{}
	}
```

#####	辅助聚焦
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_focus_assist `
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;focus_assist&quot;, //操作命令
	   &quot;data&quot;:{}
	}
```

#####	镜头初始化
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_lens_init `
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;lens_init&quot;, //操作命令
	   &quot;data&quot;:{}
	}
```

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;align_curve&quot;,//focus_assist、lens_init 操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 重启、恢复出厂、文件列表开关

> Page ID: 298031317


[TOC]
#####	一、重启

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=reboot `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;restart&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;restart&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

#####	二、恢复出厂

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=reset `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;reset&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;reset&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

#####	三、开启文件列表(P2P不受用)

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?cfg_ftp&amp;enable=1   1-开启 0-关闭 `
	  
##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败	若请求成功则可跳转到文件列表页面url：http://192.168.1.2/record/|
|msg |string   |请求返回的提示信息|


---

## 魔镜AI网关、魔镜海外平台配置

> Page ID: 298031318


[TOC]
#####	一、魔镜AI网关配置获取(P2P不受用)

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=ai `

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;ai_gateway&quot;: &quot;xxxxxxxxxx&quot;//魔镜AI网关地址
     },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |魔镜AI网关配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|ai_gateway |string   |魔镜AI网关地址 |字符串|

#####	二、魔镜AI网关配置设置(P2P不受用)

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_ai `

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|ai_gateway |是 |string |魔镜AI网关地址 不为空|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

#####	三、魔镜海外平台配置获取(P2P不受用)

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=mj_hw `

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;:  {
		&quot;server_addr&quot;: &quot;xxxxxxxxxx&quot;,//魔镜AI网关地址
		&quot;tls_heart_time&quot; : 30,
		&quot;tls_heart_num&quot; : 3
		
     },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |魔镜海外平台配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|server_addr |string   |魔镜AI网关地址 |字符串|
|tls_heart_time |int   |心跳周期 | 秒 5-300|
|tls_heart_num |int   |心跳超时次数 |2-10	|

#####	四、魔镜海外平台配置设置(P2P不受用)

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_mj_hw `

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|server_addr |是 |string   |字符串 不为空|
|tls_heart_time	|否 |int   |心跳周期  秒 5-300|
|tls_heart_num |否 |int   |心跳超时次数 2-10	|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|



---

## 报警音频列表、音频上传

> Page ID: 298031319


[TOC]
#####	一、报警音频列表获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=alarm_file_list `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;alarm_file_list_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
	&quot;status&quot;: 0,
	&quot;data&quot;: {
		&quot;sound_file&quot;: [{
				&quot;title&quot;: &quot;警报音&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/md_alarm0.alaw&quot;,
				&quot;builtin&quot;: 1
			},
			{
				&quot;title&quot;: &quot;请注意，您已进入监控区域&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/md_alarm.alaw&quot;,
				&quot;builtin&quot;: 1
			},
			{
				&quot;title&quot;: &quot;危险区域，请勿靠近&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/md_alarm1.alaw&quot;,
				&quot;builtin&quot;: 1
			},
			{
				&quot;title&quot;: &quot;您好，欢迎光临&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/md_alarm2.alaw&quot;,
				&quot;builtin&quot;: 1
			},
			{
				&quot;title&quot;: &quot;请佩戴口罩&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/mask_fail.alaw&quot;,
				&quot;builtin&quot;: 1
			},
			{
				&quot;title&quot;: &quot;陌生人员禁止靠近&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/moshengren.alaw&quot;,
				&quot;builtin&quot;: 1
			},
			{
				&quot;title&quot;: &quot;电瓶车禁止进入&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/ebike.alaw&quot;,
				&quot;builtin&quot;: 1
			},
			{
				&quot;title&quot;: &quot;重要岗位,请勿离开&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/off_duty.alaw&quot;,
				&quot;builtin&quot;: 1
			},
			{
				&quot;title&quot;: &quot;警告,检测到火焰&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/fire.alaw&quot;,
				&quot;builtin&quot;: 1
			},
			{
				&quot;title&quot;: &quot;消防通道,请勿占用&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/fpod.alaw&quot;,
				&quot;builtin&quot;: 1
			},
			{
				&quot;title&quot;: &quot;前方来车,请注意安全&quot;,
				&quot;filename&quot;: &quot;/opt/res/chs/audio/car_attention.alaw&quot;,
				&quot;builtin&quot;: 1
			}
		]
	},
	&quot;msg&quot;: &quot;success&quot;
}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |报警音频信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|sound_file |list   |报警音频列表集合|sound_file[i]	|

|sound_file[i]|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|title |string   |报警音频文字|字符串	|
|filename |string   |报警音频资源地址	|字符串	|
|builtin |int   |是否为内置音频| 1- 内置  0-上传|

#####	二、报警音频上传(HTTP上传受用)

##### HTTP请求
- ` Method: POST `
- ` Params: formdata`
- ` Key: file`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=sound_upload `
	  
##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败  请求成功将继续调用以下接口进行音频文件名绑定|
|msg |string   |请求返回的提示信息|

#####	三、报警音频上传（P2P上传受用)
## 发送文件上传请求
```c
VSMsgUploadFileReq req;
memset(&amp;req, 0, sizeof(req));

req.fileName = fileName; // 发送上传请求必须项
if (文件全后缀 == &quot;alaw&quot;)
      req.upf_type = VS_UPF_SOUND_FILE;
else
    // 提示文件格式不正确，不能上传

req.fileSize = 上传的文件大小; // 发送上传请求必须项

vsnet_send_msg(handle, IOTYPE_USER_IPCAM_UPLOAD_UPDATE_FILE_REQ, (UINT8 *)&amp;req, sizeof(req));
```

## 指令响应示例
```c
/**
 * 请不要在回调里面进行任何的耗时处理，底层的网络处理线程使用的是固定线程池技术，回调中阻塞会影响接收的效率
 */
VOID VSAPI dev_msg_cb(VSNET_HANDLE net_handle, UINT16 msg_code, UINT8* buf, UINT32 len, LPVOID context)
{
    switch(msg_code)
    {
        //其它消息处理
        ...

        // 上传文件请求响应
        case IOTYPE_USER_IPCAM_UPLOAD_UPDATE_FILE_RESP:{
            VSMsgUploadFileResp *resp = (VSMsgUploadFileResp *)buf;
			// 下面开始上传文件，防止在回调中处理耗时或阻塞，可另起线程进行上传
			// 修改自定义结构体种的状态
			upload.working = true;
			upload.stop = false;

			// 每次传输的块大小
			const UINT32 SND_FILE_BUF_SIZE = 200 &lt;&lt; 10;
			
			// 每次从文件中读取的大小
			INT32	fnRet;
			
			// 申请一块内存保存从文件中读取的数据
			UINT8 	*ptr = (UINT8 *)malloc(sizeof(VSMsgFileTransmit) + SND_FILE_BUF_SIZE);
			
			// 需要添加一个头部信息在读取文件数据前
			VSMsgFileTransmit *file_tran = (VSMsgFileTransmit *)ptr;
			
			// 打开文件指针
			FILE    *pfile = fopen(upload.filename.toLocal8Bit(), &quot;rb&quot;);
			
			// 用于记录已读取发送的数据大小，可用于计算上传进度
			UINT32  sended = 0;
			
			memset(file_tran, 0, sizeof(VSMsgFileTransmit));
			file_tran-&gt;file_id = resp.file_id;
			
			// 没有手动停上传和读取到文件尾，将一直读取文件发送
			while (!upload.stop &amp;&amp; !feof(pfile)) {
			
				// 从文件种读取SND_FILE_BUF_SIZE大小的数据
				fnRet = (INT32)fread(ptr + sizeof(VSMsgFileTransmit), 1, SND_FILE_BUF_SIZE, pfile);
				
				if (fnRet &gt;= 0) {
					// 记录读取发送的数据大小
					sended += fnRet;
					// 从文件种读取的数据大小和设置的大小不同，设置上传结束标志位为1
					file_tran-&gt;flag_end = fnRet != SND_FILE_BUF_SIZE ? 1 : 0;
					// 发送文件数据
					int result = vsnet_send_msg(handle, IOTYPE_USER_FILE_TRANSMIT, ptr, fnRet + sizeof(VSMsgFileTransmit));
					
					// 发送失败，退出循环，不再继续读取文件发送
					if (result != 0)
						break;
						
					// 发送成功，计算已上传的数据进度upload
					uplaod.percent = sended * 100 / upload.filesize;
				} else {
					// 发送文件上传结束
					VSMsgFileTransmitResp trans_resp;
					memset(&amp;trans_resp, 0, sizeof(trans_resp));

					trans_resp.file_id = resp.file_id;
					trans_resp.result = false;
					vsnet_send_msg(handle, IOTYPE_USER_FILE_TRANSMIT_RESP, (UINT8 *)&amp;trans_resp, sizeof(trans_resp));
					break;
				}
		}
		// 释放内存
		free(ptr);
		// 关闭文件指针
		fclose(pfile);
		// 修改自定义结构体中的状态
		upload.working = false;
	}
	break;

	default:
		break;
    }
}
```

#####	四、报警音频上传文件名绑定

##### HTTP请求
- ` 需调用报警音频上传接口[&lt;二&gt;和&lt;三&gt;]成功后，调用此接口`
- ` Method: POST `
- ` Params: 见请求参数`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_sound_name `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;sound_name_set&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|sound_title |是 |string   |上传音频文字内容|
|sound_name |是 |string  |上传音频文件名称设定|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

#####	五、报警音频操作(播放、删除&lt;仅上传音频&gt;)

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_sound_set `
	  
##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;sound_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|cmd |是 |int   |1-播放  2-删除&lt;仅上传音频&gt;   3-修改文件名称|
|sound_sn |是 |int  |音频文件下标 sound_file的顺序|
|sound_name |否 |string  |音频文件新名称 需cmd为3该参数有效|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;sound_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|


---

## 工作模式配置获取与设置

> Page ID: 298031320


[TOC]
#####	一、工作模式配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=light_work `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;light_work_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;antiflicker&quot;: 0,
			&quot;wdr&quot;: 0,
			&quot;flip&quot;: 0,
			&quot;mirror&quot;: 0,
			&quot;ai_isp_mode&quot;: 0,
			&quot;af_mode&quot;: 0,
			&quot;light_work&quot;: {
				&quot;enable&quot;: 0,
				&quot;worktime&quot;: &quot;0:0-0:0&quot;
			},
			&quot;light_level&quot;: 50
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |工作模式配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|antiflicker |int   |工频抗闪|0--关闭  50-50HZ    60--60HZ|
|wdr |int   |宽动态|0--关闭    1--开启  需设备支持wdr|
|flip |int   |图像翻转 |0-不翻转  1-翻转|
|mirror |int   |图像镜像 |0-不镜像  1-镜像|
|ai_isp_mode |int   |AI ISP |0-降噪  1-轻量级降噪   2-细节   3-轻量级细节 需支持AIISP|
|af_mode |int   |聚焦模式 |0-自动聚焦  1-手动聚焦|
|light_level |int   |灯光亮度 | -1：关闭   0-自动 &gt;0亮度等级 |
|light_work |obj   |灯光工作模式 | obj|

|light_work数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |灯光工作模式|0--日夜自动切换  1-日夜定时切换|
|worktime |string   |时间段| 一天的时间设置 例如: &quot;1:0-20:0&quot;|

#####	二、工作模式配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_light_work `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;light_work_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|antiflicker |否 |int   |0--关闭  50-50HZ    60--60HZ|
|wdr |否 |int   |0--关闭    1--开启  需设备支持wdr|
|flip |否 |int   |0-不翻转  1-翻转|
|mirror |否 |int   |0-不镜像  1-镜像|
|ai_isp_mode |否 |int   |0-降噪  1-轻量级降噪   2-细节   3-轻量级细节 需支持AIISP|
|af_mode |否 |int   |0-自动聚焦  1-手动聚焦|
|light_level |否|int   | -1：关闭   0-自动 &gt;0亮度等级 |
|light_mode |否 |int   |0--日夜自动切换  1-日夜定时切换|
|light_period |否 |string   |一天的时间设置 例如: &quot;1:0-20:0&quot;|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;light_work_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|


---

## web杂项配置

> Page ID: 298031321


[TOC]
#####	一、WEB杂项配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=other `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;other_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;onvif_check_auth&quot;: 1,
			&quot;rtsp_check_auth&quot;: 0,
			&quot;frame_reduction&quot; : 0,
			&quot;draw_stream&quot;:3,
			&quot;alarm_delay&quot;: [5, 5],
			&quot;event_merge&quot; : 0,
			&quot;merge_duration&quot; : 10,
			&quot;language&quot; : &quot;chs&quot;,
			&quot;disable_reboot&quot; : 0
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |杂项配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|onvif_check_auth |int   |onvif密码校验|0--不校验    1--校验|
|rtsp_check_auth |int   |rtsp校验密码|0--不校验    1--校验|
|frame_reduction |int   |自动降帧开关  默认开启|0--不降帧  1--降帧 (某些平台可能没有此配置)|
|draw_stream |int   |智能检测画框总开关  |0--不画框 &lt;/br&gt; 1--主码流画框&lt;/br&gt; 2--子码流画框&lt;/br&gt; 3--主子码流画框 &lt;/br&gt;（web展示时,有此项才进行展示）|
|alarm_delay |list   |报警输出对应通道延时配置秒数：5-600  需设备支持报警输出|秒数5-600|
|event_merge |int   |AI信息本地存储事件合并开关|0--不合并    1--合并|
|merge_duration |int   |AI信息本地存储事件合并时长| 秒数15-60|
|language |string   |设备运行时语言类型| chs-中文   en-英文|
|disable_reboot |int   |禁用断网重启功能| 0-断网重启  1-断网不重启|

#####	二、WEB杂项配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_other `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;other_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|onvif_check_auth |否 |int  |0--不校验    1--校验|
|rtsp_check_auth |否 |int   |0--不校验    1--校验|
|frame_reduction |否 |int   |0--不降帧  1--降帧 (某些平台可能没有此配置)|
|draw_stream |int   |智能检测画框总开关  |0--不画框  1主码流画框 2 子码流画框 3 主子码流画框 |
|alarm_delay |否 |list   |秒数5-600(需设备支持报警输出)|
|event_merge |否 |int   |0--不合并    1--合并(需设备支持本地AI存储)|
|merge_duration |否 |int   | 秒数15-60(需设备支持本地AI存储)|
|language |否 |string   |设备运行时语言简写 chs-中文  en-英文（需设备能力级里支持该语言种类）|
|disable_reboot |否 |int   |禁用断网重启功能 0-断网重启  1-断网不重启|


##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;other_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 遮挡检测配置获取与设置

> Page ID: 298031453


[TOC]
#####	一、遮挡检测配置获取（需设备支持遮挡检测）
##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=occ `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;occ_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;: {
        &quot;enable&quot;: 0,
        &quot;level&quot;: 2,
        &quot;trig_speaker&quot;: 1,
        &quot;trig_speaker_repeat&quot;: 0,
        &quot;sound_file_no&quot;: 0,
        &quot;trig_record&quot;: 0,
        &quot;trig_msgpush&quot;: 0,
        &quot;trig_gb28181&quot;: 0,
        &quot;trig_onvif&quot;: 0,
        &quot;trig_gat1400&quot;: 0,
        &quot;trig_light&quot;: 0,
        &quot;light_not_flicker&quot;: 0,
        &quot;trig_light_flicker&quot;: 0,
        &quot;trig_light_delay&quot;: 0,
        &quot;trig_alarm_out&quot;: [
            0,
            0
        ],
        &quot;points&quot;: [
            [
                &quot;0:0&quot;,
                &quot;800:0&quot;,
                &quot;800:480&quot;,
                &quot;0:480&quot;
            ]
        ]
    },
    &quot;msg&quot;: &quot;success&quot;
}
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |遮挡检测配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |遮挡检测开关|0--关闭      1--开启|
|level |int   |遮挡检测灵敏度 |0-4, 0为迟钝,4为灵敏（暂未使用）|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |遮挡检测区域坐标	|在参考分辨率下的区域坐标（四边形），只支持一个区域，目前未使用到，默认全屏|
|sound_file_no |int   |报警音频下标，由报警音频列表接口获取|默认0|

|data联动配置项类|说明|(暂未联动)

#####	二、遮挡检测配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_occ `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;occ_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |否 |int   |遮挡检测开关0--关闭      1--开启|
|level |否 |int   |遮挡检测灵敏度 0-4, 0为迟钝,4为灵敏（暂未使用）|
|all_time |否 |int   |全天侦测 0--非全天      1-全天|
|period |否 |list   |非全天侦测时间段 从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|sound_file_no |否 |int   |报警音频下标，由报警音频列表接口获取 默认0|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;occ_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|


---

## ROI配置设置与获取

> Page ID: 298031454


[TOC]
#####	一、ROI配置获取(需设备支持ROI配置)
##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=roi `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;roi_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
	&quot;status&quot;: 0,
	&quot;data&quot;: {
		&quot;enable&quot;: 0,
		&quot;level&quot;: 0,
		&quot;work_chn&quot;: 0,
		&quot;refer_size&quot;: 125830200,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;]
	},
	&quot;msg&quot;: &quot;success&quot;
}
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |ROI配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |ROI生效开关|0--关闭      1--开启|
|level |int   |ROI质量等级| 暂未生效 0最好|
|work_chn |int  |生效码率类型| 0-主码流  1-子码流|
|points |list   |ROI区域坐标	|在参考分辨率下的区域坐标（矩形），只支持一个区域|
|refer_size |int   |ROI参考分辨率| 宽：(refer_size&gt;&gt;16)&amp;0xffff	高：refer_size&amp;0xffff|

#####	二、ROI配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_roi `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;roi_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |否 |int   |ROI生效开关 0--关闭      1--开启|
|level |否 |int   |ROI质量等级 暂未生效 0最好|
|work_chn |否 |int  |生效码率类型 0-主码流  1-子码流|
|points |否 |list   |ROI区域坐标	在参考分辨率下的区域坐标（矩形），只支持一个区域|
|refer_size |否 |int   |ROI参考分辨率 宽：(refer_size&gt;&gt;16)&amp;0xffff	高：refer_size&amp;0xffff|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;roi_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|



---

## 画面隐私遮挡区域设置与获取

> Page ID: 298031455


[TOC]
#####	一、画面隐私遮挡区域配置获取(需设备支持隐私遮挡区域设置)
##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=cover `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;cover_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
{
    &quot;status&quot;: 0,
    &quot;data&quot;: {
        &quot;cover_list&quot;: [
            {&quot;x&quot;: 0,&quot;y&quot;: 0,&quot;w&quot;: 0,&quot;h&quot;: 0,&quot;enable&quot;: 0},
            {&quot;x&quot;: 0,&quot;y&quot;: 0,&quot;w&quot;: 0,&quot;h&quot;: 0,&quot;enable&quot;: 0},
			{&quot;x&quot;: 0,&quot;y&quot;: 0,&quot;w&quot;: 0,&quot;h&quot;: 0,&quot;enable&quot;: 0},
			{&quot;x&quot;: 0,&quot;y&quot;: 0,&quot;w&quot;: 0,&quot;h&quot;: 0,&quot;enable&quot;: 0}
        ],
        &quot;refer_width&quot;: 640,
        &quot;refer_height&quot;: 360
    },
    &quot;msg&quot;: &quot;success&quot;
}
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |画面隐私遮挡区域配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|cover_list |list   |画面隐私遮挡区域集合||
|refer_width |int   |参考分辨率宽度| 画面宽度|
|refer_height |int   |参考分辨率高度| 画面高度|

|cover_list[i]|类型|说明|取值范围|
|:-----  |:-----|-----        
|enable |int   |区域显示或不显示| 0-不显示   2-显示|
|x |int   |区域的原点x坐标 | 基于参考分辨率|
|y |int   |区域的原点y坐标| 基于参考分辨率|
|w |int   |区域的宽| 基于参考分辨率|
|h |int   |区域的高| 基于参考分辨率|

#####	二、画面隐私遮挡区域配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_cover `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;cover_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|cover_list |是 |list   |画面隐私遮挡区域集合|
|refer_width |是 |int   |参考分辨率宽度，画面宽度，同获取数据一致|
|refer_height |是 |int   |参考分辨率高度，画面高度，同获取数据一致|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;cover_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|




---

## 设备静默配置获取与设置

> Page ID: 298031456


[TOC]
#####	一、静默配置配置获取(需设备支持静默配置)
##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=silent `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;silent_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
{
	&quot;status&quot;: 0,
	&quot;data&quot;: {
		&quot;enable&quot;: 0,
		&quot;silence_type_array&quot;: [1,2,3],
		&quot;period&quot;: [&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
	},
	&quot;msg&quot;: &quot;success&quot;
}
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |设备静默配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |静默设置开关|0--关闭      1--开启|
|silence_type_array |list   |需要静默类型| 1 声音 2 灯光 3 报警输出|
|period |list   |静默时间段 |最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|

#####	二、静默配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_silent `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;silent_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |是 |int   |静默设置开关 0--关闭      1--开启|
|silence_type_array |是 |list   |需要静默类型：1 声音 2 灯光 3 报警输出|
|period |是 |list   |静默时间段，最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;silent_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|




---

## 报警忽略配置(不接受GB\1400\APP推送消息)

> Page ID: 298031914


[TOC]
#####	一、报警忽略配置配置获取
##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=alarm_ignore `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;alarm_ignore_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
{
	&quot;status&quot;: 0,
	&quot;data&quot;: {
		&quot;enable&quot;: 0,
		&quot;ignore_time_mode&quot;:0,
		&quot;ignore_type&quot;:0
	},
	&quot;msg&quot;: &quot;success&quot;
}
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |设备静默配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |报警忽略开关|0--关闭      1--开启|
|ignore_time_mode |int   |报警忽略时长类型| 1-5分钟 2-10分钟 3-1小时 4-当天|
|ignore_type |int   |报警忽略报警类型 |0-无类型 1-区域入侵 2-AI事件类 3-区域入侵和AI事件类|

#####	二、静默配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_alarm_ignore `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;alarm_ignore_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |是 |int   |报警忽略设置开关 0--关闭      1--开启|
|ignore_time_mode |是 |int   |报警忽略时长类型：1-5分钟 2-10分钟 3-1小时 4-当天|
|ignore_type |是 |int   |报警忽略事件类型 0-无类型 1-区域入侵 2-AI事件类 3-区域入侵和AI事件类|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;alarm_ignore_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|





---

## 联动配置说明

> Page ID: 298031301

[TOC]

##### 通用联动配置说明
|联动型字段|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|trig_alarm_out |list   |联动报警输出list	|元素值 0 -不开启联动 1-开启联动 (设备报警输出数量需大于0)|
|trig_gb28181 |int   |联动国标消息	|0-不开启联动   1-开启联动  (需设备支持国标)|
|trig_gat1400 |int   |联动1400消息	|0-不开启联动   1-开启联动  (需设备支持1400协议)|
|trig_onvif |int   |联动onvif消息	|0-不开启联动   1-开启联动|
|trig_speaker |int   |联动告警音	|0-不开启联动   1-开启联动|
|trig_speaker_repeat |int   |告警音重复次数	|0-6次  注：为重复次数，不是报警音次数|
|trig_record |int   |联动SD卡录像	|0-不开启录像  1-开启录像|
|trig_obs_record |int   |联动OBS对象存储录像	|0-不开启录像   1-开启录像 需要设备能力集支持obs=1，如果能力集没有支持该选项 web端不进行展示|
|trig_msgpush |int   |联动消息推送	|0-不开启联动   1-开启联动|
|trig_light |int   |联动告警灯光	|1-开启联动 (需设备支持灯光)  非1为未开启或不支持|
|light_not_flicker |int   |灯光告警类型	|0=闪烁, 1=常亮，(需设备支持灯光)|
|trig_light_delay |int   |联动告警灯光延时时长	|0-10秒(需设备支持灯光)|


---

## 固件克隆(P2P不受用)

> Page ID: 298031459


[TOC]
#####	一、配置克隆
##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=clone_config&amp;clone_type=clone_config `
	  

##### 数据返回
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|无 |blob   |请求成功，直接返回固件包，二进制文件|

#####	二、全量克隆

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=clone_config&amp;clone_type=clone_all `

##### 数据返回
|参数名|类型|说明|
|:-----  |:-----|-----                        |
|无 |blob   |请求成功，直接返回固件包，二进制文件|


---

## 预置点参数获取与设置

> Page ID: 298031664


[TOC]
###	一、预置点获取(需设备支持云台配置)
##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=preset`
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;preset_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
	&quot;status&quot;: 0,
	&quot;data&quot;: {
		&quot;max_num&quot;: 16,
		&quot;id_list&quot;: [1,200]
	},
	&quot;msg&quot;: &quot;success&quot;
}
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |预置点信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|max_num |int   |设备支持最大预置点数 设置和调用预置点 id不能超过这个值| 16-设备支持16个预置点，只支持普通预置点， 255-设备支持255个预置点，支持普通预置点和特殊预置点 参考球机预置点|
|id_list | list|预置点|有效的预置点|


###	二、预置点调用

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_goto_preset`

```JSON
{
	&quot;id&quot;:15
}
```
##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;goto_preset_set&quot;, //操作命令
		&quot;data&quot;:{
			&quot;id&quot;:15
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|id |是 |int   |预置点|


##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;goto_preset_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

###	三、预置点设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_set_preset`

```JSON
{
	&quot;id&quot;:15
}

```
##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;set_preset_set&quot;, //操作命令
		&quot;data&quot;:{
			&quot;id&quot;:15
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|id |是 |int   |预置点|


##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;set_preset_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|


---

## 巡航和智能设置

> Page ID: 298031860


[TOC]
###	一、巡航或者智能追踪配置获取(需设备支持云台配置)
##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?cfg_get&amp;name=cruis`
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;cruise_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
	&quot;status&quot;: 0,
	&quot;data&quot;: {
			&quot;wk_mode&quot;:1,
			&quot;level&quot;:3,
			&quot;staytime&quot;:10,
			&quot;intervalatime&quot;:20,
			&quot;all_time&quot;:1,
			&quot;period&quot;:[
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;0:0~12:0&quot;,
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				]
			],
			&quot;points&quot;:[[
				&quot;1&quot;,
				&quot;2&quot;,
				&quot;4&quot;,
				&quot;3&quot;,
				&quot;6&quot;,
				&quot;5&quot;,
				&quot;9&quot;,
				&quot;8&quot;,
				&quot;10&quot;,
				&quot;7&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;
			],[
				&quot;5&quot;,
				&quot;6&quot;,
				&quot;7&quot;,
				&quot;8&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;
			],[
				&quot;9&quot;,
				&quot;10&quot;,
				&quot;11&quot;,
				&quot;12&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;
			]]
	},
	&quot;msg&quot;: &quot;success&quot;
}
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |预置点信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|wk_mode |int   | 0 关闭， 1 是智能追踪， 2 是巡航| 取值范围 0,1,2|
|cruise_line | int|生效巡航线| 用户可以配置多条巡航线，有此字段指示生效巡航线是哪条，取值0~15 对应'points' 巡航线， 默认0|
|level | int|速度| 0~2， 默认0|
|staytime | int|巡航点位停留时间 （单位秒）| |
|intervalatime | int|巡航过程中看守位停留时间（单位秒）| |
|all_time | int|巡航时间配置，1 表示所有时间， 0 表示按'period'配置时间巡航| 0~1， 默认1|
|period | list|巡航时间，仅'all_time' 为0 时有效| 最多支持 7x5个时间配置，精确到分 |
|points | list|巡航线 | 最多支持 16条巡航线，同一时间仅一条巡航线生效，由 'cruise_line' 指定 |



###	二、巡航或者智能追踪设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_cruis`

```JSON
{
			&quot;wk_mode&quot;:1,
			&quot;level&quot;:3,
			&quot;staytime&quot;:10,
			&quot;intervalatime&quot;:20,
			&quot;all_time&quot;:1,
			&quot;period&quot;:[
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;0:0~12:0&quot;,
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				]
			],
			&quot;points&quot;:[[
				&quot;1&quot;,
				&quot;2&quot;,
				&quot;4&quot;,
				&quot;3&quot;,
				&quot;6&quot;,
				&quot;5&quot;,
				&quot;9&quot;,
				&quot;8&quot;,
				&quot;10&quot;,
				&quot;7&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;
			],[
				&quot;5&quot;,
				&quot;6&quot;,
				&quot;7&quot;,
				&quot;8&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;
			],[
				&quot;9&quot;,
				&quot;10&quot;,
				&quot;11&quot;,
				&quot;12&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;
			]]
	}

```
##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;cruise_set&quot;, //操作命令
		&quot;data&quot;:{
			&quot;wk_mode&quot;:1,
			&quot;level&quot;:3,
			&quot;staytime&quot;:10,
			&quot;intervalatime&quot;:20,
			&quot;all_time&quot;:1,
			&quot;period&quot;:[
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;0:0~12:0&quot;,
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				],
				[
					&quot;13:0~15:30&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;,
					&quot;0:0~0:0&quot;
				]
			],
			&quot;points&quot;:[[
				&quot;1&quot;,
				&quot;2&quot;,
				&quot;4&quot;,
				&quot;3&quot;,
				&quot;6&quot;,
				&quot;5&quot;,
				&quot;9&quot;,
				&quot;8&quot;,
				&quot;10&quot;,
				&quot;7&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;
			],[
				&quot;5&quot;,
				&quot;6&quot;,
				&quot;7&quot;,
				&quot;8&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;
			],[
				&quot;9&quot;,
				&quot;10&quot;,
				&quot;11&quot;,
				&quot;12&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;,
				&quot;0&quot;
			]]
	}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|wk_mode |int   | 0 关闭， 1 是智能追踪， 2 是巡航| 取值范围 0,1,2|
注: 其他字段见获取说明


##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;cruise_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|



---

## OBS配置获取与设置

> Page ID: 298031902


[TOC]
#####	一、OBS云存储配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=obs `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;obs_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;obs_type&quot; : 3,
			&quot;ak&quot;: &quot;YOUR_ALIBABA_ACCESS_KEY_ID&quot;,
			&quot;sk&quot; : &quot;YOUR_ALIBABA_ACCESS_KEY_SECRET&quot;,
			&quot;bucket&quot;: &quot;cdyc-lh&quot;,
			&quot;prefix&quot;: &quot;oss_prefix&quot;,
			&quot;end_point&quot; : &quot;oss-cn-chengdu.aliyuncs.com&quot;,
			&quot;file_def_attr&quot; : &quot;x-amz-acl:public-read-write&quot;,
			&quot;expire&quot; : 7,
			&quot;upload_mode&quot; : 1,
			&quot;record_file_time&quot; : 10,
			&quot;record_mode&quot; : 1，
			&quot;record_audio&quot;:0,
			&quot;all_time&quot;:1,
			&quot;period&quot;: [
                    [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                    [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                    [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                    [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                    [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                    [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                    [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;]
                ]
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |OBS配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |云存储开关|0--关闭    1--开启|
|obs_type |int   |云存储类型|1-华为云存储  2-亚马逊云存储  3-阿里云存储|
|ak |string  |云存储ak|不为空|
|sk |string  |云存储sk|不为空|
|bucket |string  |云存储桶名|不为空|
|prefix |string  |云存储二级路径|可为空 例: oss/test/xxx |
|end_point |string  |云存储存储节点|不为空|
|file_def_attr |string  |文件描述属性| 可为空，阿里云存储不需要该字段|
|expire |int   |文件过期时间| 7-15天|
|upload_mode |int   |文件上传方式| 1.管道方式上传  2-文件上传|
|record_file_time |int   |文件录像时长| 8-15秒|
|record_mode |int   |云存类型  |1-全天云存 2-事件联动云存|
|rec_strm_type | int | 存储码流类型 | 0-主码流 1-子码流|
|record_audio |int   |是否录制音频  |0 不录制 1 录制|
|all_time |int   |全天录制 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
#####	二、OBS配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_obs `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;obs_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |否   |int |0--关闭    1--开启|
|obs_type |否   |int |1-华为云存储  2-亚马逊云存储  3-阿里云存储|
|ak |是  |string|云存储ak,不为空|
|sk |是  |string|云存储sk,不为空|
|bucket |是  |string|云存储桶名，不为空|
|prefix |否 |string  |云存储二级路径 可为空， 例: oss/test/xxx |
|end_point |是  |string|云存储存储节点,不为空|
|file_def_attr |否  |string| 云存储存文件描述信息，可为空，阿里云存储不需要该字段|
|expire |否 |int   |文件过期时间 7-15天|
|upload_mode |否  |int   |文件上传方式 1.管道方式上传  2-文件上传|
|record_file_time |否 |int   |文件录像时长 8-15秒|
|record_mode |否 |int   |云存类型  1-全天云存 2-事件联动云存|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;obs_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|


---

## 日志界面

> Page ID: 298031922


[TOC]
#####	一、日志列表获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=log_list `

##### 数据返回
```JSON
	{
    &quot;source&quot;: {
        &quot;0&quot;: &quot;UNKNOWN&quot;,
        &quot;0x14&quot;: &quot;PC端用户&quot;,
        &quot;0x13&quot;: &quot;国标用户&quot;,
        &quot;0x12&quot;: &quot;app用户&quot;,
        &quot;0x11&quot;: &quot;web用户&quot;,
        &quot;0x10&quot;: &quot;系统&quot;
    },
    &quot;level&quot;: {
        &quot;0x103&quot;: &quot;报警&quot;,
        &quot;0x102&quot;: &quot;异常&quot;,
        &quot;0x101&quot;: &quot;操作&quot;,
        &quot;0x100&quot;: &quot;信息&quot;
    },
    &quot;model&quot;: {
        &quot;0x1030&quot;: &quot;网络&quot;,
        &quot;0x1011&quot;: &quot;复位线程&quot;,
        &quot;0x1010&quot;: &quot;主线程&quot;,
        &quot;0x1020&quot;: &quot;SD卡格式化&quot;,
        &quot;0x1041&quot;: &quot;web_wss&quot;,
        &quot;0x1040&quot;: &quot;web&quot;
    }
}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|----- |
|source |obj   |触发源|
|level | obj  |日志等级|
|model |obj   |模块列表|


#####	二、日志内容获取

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=log_content `

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|page |是 |int   |第几页|
|num |是 |int   |每页返回的条数，默认值20 ， 支持选择[20,50,100]|
|source |否 |int   |触发源，0xFF 代表全部，其他值见列表返回|
|level |否 |int   | 日志等级，0xFFF 代表全部，其他值见列表返回 |
|model |否 |int  | 模块，0xFFFF 代表全部，其他值见列表返回 |
|begin_time |否 |int  | 开始时间戳 单位秒 |
|end_time|否 |int  | 结束时间戳 单位秒 |


##### 数据返回
```JSON
	{
    &quot;total&quot;: 14002,
    &quot;logs&quot;: [
        {
            &quot;source&quot;: &quot;系统&quot;,
            &quot;level&quot;: &quot;信息&quot;,
            &quot;model&quot;: &quot;主线程&quot;,
            &quot;event&quot;: &quot;机器复位&quot;,
            &quot;time&quot;: &quot;2025-04-18 19:07:58&quot;
        },
        {
            &quot;source&quot;: &quot;系统&quot;,
            &quot;level&quot;: &quot;信息&quot;,
            &quot;model&quot;: &quot;主线程&quot;,
            &quot;event&quot;: &quot;机器复位&quot;,
            &quot;time&quot;: &quot;2025-04-18 19:07:58&quot;
        }
    ],
    &quot;size&quot;: 2
}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|total |int   |筛选条件的总条数|
|logs | arr  |返回的结果|
|size |int   |当前返回条数|

|logs数据|类型|说明|
|:-----  |:-----|-----                           |
|source |string   | 触发源|
|level |string   |日志等级 |
|model |string   |模块|
|event |string   |事件|
|time |string   |触发时间|


#####	三、日志下载

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=log_download `

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|source |否 |int   |触发源，0xFF 代表全部，其他值见列表返回|
|level |否 |int   | 日志等级，0xFFF 代表全部，其他值见列表返回 |
|model |否 |int  | 模块，0xFFFF 代表全部，其他值见列表返回 |
|begin_time |否 |int  | 开始时间戳 单位秒 |
|end_time|否 |int  | 结束时间戳 单位秒 |


##### 数据返回
|参数名|类型|说明|
|:-----  |:-----|-----                        |
|无 |blob   |请求成功，直接返回文件|


---

## 远程音频播放接口

> Page ID: 298031928

[TOC]
#####	一、远程音频播放

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_play_audio`

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;play_audio&quot;, //操作命令  
	   &quot;data&quot;:{
			&quot;file_url&quot; : &quot;http://xxxxxxxa/xasax/xaaa.alaw&quot;,
			&quot;repeat&quot; : 5
	   }
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|file_url |是 |string   |音频文件的网络连接地址,注：音频格式必须为8K 16位单通道的 alaw、pcm|
|repeat |否 |int   |音频播放次数  1-10 , 若无此参数，则仅播放一次|

##### P2P数据返回
```JSON
{
   	&quot;cmd&quot;:&quot;play_audio&quot;,
   	&quot;result&quot;:1
}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|total |int   |筛选条件的总条数|
|logs | arr  |返回的结果|
|size |int   |当前返回条数|



---

## SMARTAE配置

> Page ID: 298031929



[TOC]
#####	一、SMARTAE配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=smartae `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;smartae_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;: {
           &quot;enable&quot;: 1,
           &quot;ae_type:2
       },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |时区配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |开启、关闭|0 关闭 1开启|
|ae_type |int   |智能防过曝目标对象|1 人形 2人脸 3 人脸+人形 人脸优先|

#####	二、SMARTAE设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_smartae`

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;smartae_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |1 |int   |0 关闭 1开启|
|ae_type |int   |智能防过曝目标对象|1 人形 2人脸 3 人脸+人形 人脸优先|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;smartae_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 透明串口配置与获取(P2P可用)

> Page ID: 298031937

[TOC]
#####	一、透明串口配置获取
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;uart_info_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
  {
    &quot;cmd&quot;: &quot;uart_info_get&quot;,
    &quot;data&quot;:  : {
		&quot;baud_rate&quot;: 115200,	//波特率
		&quot;parity&quot;:&quot;N&quot;,			//奇偶校验
		&quot;data_bits&quot;:8,			//数据位数
		&quot;stop_bits&quot;:0,			//停止位
		&quot;time_out&quot;:20			//数据读取超时时长
       }
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|baud_rate |int   |串口波特率  如:115200、9600等|
|parity |string   |数据奇偶校验|
|data_bits |int   |数据位数|
|stop_bits |int   |停止位|
|time_out |int   |串口读取数据超时时长|

#####	二、透明串口信息配置

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;uart_info_set&quot;, //操作命令
		&quot;data&quot;:{
			&quot;baud_rate&quot;: 115200,	//波特率
			&quot;parity&quot;:&quot;N&quot;,			//奇偶校验
			&quot;data_bits&quot;:8,			//数据位数
			&quot;stop_bits&quot;:0,			//停止位
			&quot;time_out&quot;:20			//数据读取超时时长
		}
	}
```

##### 请求参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|baud_rate |int   |串口波特率,支持的值有:300,600,1200,1800,2400,4800,9600,19200,38400,57600,115200,230400,460800,500000,576000,921600,1000000,1152000,1500000,2000000,2500000,3000000,3500000,4000000|
|parity |string   |数据奇偶校验,支持有:'N'无校验, 'O'奇校验,'E'偶校验,'S'空格|
|data_bits |int   |数据位数,支持有:5,6,7,8|
|stop_bits |int   |停止位,支持有:1,2|
|time_out |int   |串口读取数据超时时长,单位ms,取值在:20~2000|


---

## MWP协议配置

> Page ID: 298031959


[TOC]
需要能力集支持 mwp=1
####	一、MWP协议配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=mwp `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;mwp_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
  {
    &quot;status&quot;: 0,
    &quot;data&quot;: {
           &quot;enable&quot;: 0,
		   &quot;mwpgw&quot;: &quot;http://xxxxxxx&quot;
       },
	&quot;msg&quot; : &quot;success&quot;
  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |时区配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |使能MWP协议|1使能 0 关闭|
|mwpgw |string   |MWP协议网关服务地址| 服务器地址|


####	二、MWP协议配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_mwp `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;mwp_set&quot;, //操作命令
		&quot;data&quot;: {
           &quot;enable&quot;: 0,
		   &quot;mwpgw&quot;: &quot;http://xxxxxxx&quot;
       }
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|enable |int   |使能MWP协议|1使能 0 关闭|
|mwpgw |string   |MWP协议网关服务地址| 服务器地址|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;mwp_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

# AI Camera Interface - Dynamic Algorithm Loading

## AI算法支持列表获取和算法切换

> Page ID: 298031323


[TOC]
#####	一、AI算法支持列表和当前算法获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=aichose `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;aichose_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;support&quot;: [2, 0, 1, 21],
			&quot;current&quot;: 1
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |AI算法支持配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|support |list   |支持算法集合|算法枚举值集合|
|current |int   |当前运行算法| 算法枚举值|

|算法类型|枚举值|
|:-----  |:-----|
|[人脸抓拍](http://yctx.vs98.com:1381/web/#/601874687/298031439 &quot;人脸抓拍&quot;) |0  |
|人脸识别 |1  |
|人形算法 |2  |
|人车非算法 |3  |
|宠物检测 |4  |
|车牌检测算法 |5  |
|人流统计算法 |6  |
|口罩检测算法 |7  |
|电瓶车检测算法 |8  |
|陌生人识别算法 |9  |
|车型检测算法 |10  |
|离岗检测算法 |11  |
|火焰检测算法 |12  |
|消防通道占用检测算法 |13  |
|区域入侵检测算法 |14  |
|安全帽检测算法 |15  |
|电瓶车载人检测算法 |16  |
|人脸+车+车牌算法|17|
|机动车+电瓶车+摩托车|18|
|三轮车+电瓶车+摩托车|19|
|安全帽检测（基于头肩检测)|20|
|人流统计(基于头肩检测)|21|
|车辆预警算法|22|
|厨房三白检测|23|
|哭声检测|24|
|人脸签到|25|
|电瓶车头盔道闸控制|26|
|消防通道车辆检测|27|
|一键告警|28|
|烟雾检测算法|29|
|第三方算法|30|
|超员检测算法|31|
#####	二、AI算法切换

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_aichose `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;aichose_set&quot;, //操作命令
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|chose_type |是 |int   |算法枚举值(祥见上方算法类型)|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;aichose_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

##### 备注

- 算法切换成功后，需重启设备，才能运行切换后的算法


---

## AI类算法配置获取与设置

> Page ID: 298031324


[TOC]
#####	一、AI算法配置获取

##### HTTP请求
- ` Method: POST `
- ` Params: 详见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=ai_config `

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;ai_config_get&quot;, //操作命令  
	   &quot;data&quot;:{
	    &quot;ai_type&quot; : 0  //算法枚举值 ChoseType_e 仅支持人脸抓拍、人脸识别、人车非算法、车牌算法、电瓶车检测、
		//车型检测、离岗检测、火焰检测、消防通道检测、电瓶车载人检测、安全帽检测(基于头肩)、人流统计算法（基于头肩检测）
		//、车辆预警算法、厨房三白算法、电瓶车道闸系统、消防通道车辆检测
	   }
	}
```
##### 请求参数
|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|ai_type |是 |int   |算法类型枚举值|

#####	二、AI算法配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 详见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_ai_config `

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;ai_config_set&quot;, //操作命令  
	   &quot;data&quot;:{
	    &quot;ai_type&quot; : 0  //算法枚举值 ChoseType_e 仅支持人脸抓拍、人脸识别、人车非算法、车牌算法、电瓶车检测、
		//车型检测、离岗检测、火焰检测、消防通道检测、电瓶车载人检测、安全帽检测(基于头肩)、人流统计算法（基于头肩检测）
		//、车辆预警算法、厨房三白算法、电瓶车道闸系统、消防通道车辆检测
		&quot;ai_data&quot;:{
			//各算法配置项
		}
	   }
	}
```

##### 请求参数
|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|ai_type |是 |int   |算法类型枚举值|
|ai_data |是 |obj   |各算法类型配置参数，同获取算法参数|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;ai_config_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|


---

## 人脸抓拍算法配置信息

> Page ID: 298031439

##### 人脸抓拍数据返回

```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;snapmodel&quot;: 1,
			&quot;snapinterval&quot;: 3,
			&quot;pixel&quot;: 64,
			&quot;distinguishthreshold&quot;: 0.88,
			&quot;face_image_type&quot;: 0,
			&quot;display_detection_box&quot;:1,
			&quot;support_face_attr&quot;:1,
			&quot;support_live&quot;:1,
			&quot;enable_face_attr&quot;:1,
			&quot;enable_live&quot;:1,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 2,
				&quot;speaker_repeat&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;trig_light&quot;: 2,
				&quot;light_not_flicker&quot;: 0,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_record&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_alarm_out&quot;: [0,0]
			},
			&quot;timearea&quot;: {
				&quot;refer_width&quot;: 1920,
				&quot;refer_height&quot;: 1080,
				&quot;showarea&quot;: 2,
				&quot;all_time&quot;: 1,
				&quot;points&quot;: [&quot;0:0&quot;,&quot;1920:0&quot;,&quot;1920:1080&quot;,&quot;0:1080&quot;],
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;]
				]
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
##### 人脸抓拍返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|pixel |int   |人脸抓拍最小像素| 64-1080|
|snapmodel |int   |抓拍模式| 1-快速抓拍&lt;/br&gt;  2-定时抓拍&lt;/br&gt;  3-质量抓拍&lt;/br&gt; 4-质量优选-非魔镜有效|
|snapinterval |int   |抓拍间隔|秒数1-300 仅定时抓拍有效|
|distinguishthreshold |float   |质量抓拍阈值|0.5-1.0 仅质量抓拍有效|
|face_image_type |int   |抓拍图像模式|0 人脸图 1 半身图|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|support_face_attr |int   |是否支持人脸特征提取 （年龄、性别等）|0或者无此项 不支持（web不显示）  1 支持|
|enable_face_attr |int   |是否提取人脸特征提取 支持人脸特征提取才有此项|0 不提取  1提取|
|support_live |int   |是否支持活体检测|0或者无此项 不支持（web不显示）  1 支持|
|enable_live |int   |是否开启活体检测 支持活体检测才有此项|0 不开启  1开启（开启后非活体不输出）|
|event |obj   |事件类型处理obj |obj|
|timearea |obj  |时间和区域类型处理obj |obj|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 |1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|

---

## 人脸识别算法配置信息

> Page ID: 298031440

##### 人脸识别数据返回
```JSON
    {
    &quot;status&quot;: 0,
    &quot;data&quot;: {
        &quot;enable&quot;: 1,
        &quot;pixel&quot;: 64,
        &quot;unrecognized_report&quot;: 0,
        &quot;snapinterval&quot;:5,
        &quot;face_image_type&quot;:0,
        &quot;display_detection_box&quot;:1,
        &quot;repeat_report&quot;:1,
        &quot;support_face_attr&quot;:1,
        &quot;support_live&quot;:1,
        &quot;enable_face_attr&quot;:1,
        &quot;enable_live&quot;:1,
        &quot;snapmodel&quot;:0,
        &quot;event&quot;: {
            &quot;alarminterval&quot;: 0,
            &quot;audioalarmstatus&quot;: 1,
            &quot;speaker_repeat&quot;: 2,
            &quot;sound_file_no&quot;: 3,
            &quot;trig_light&quot;: 1,
            &quot;light_not_flicker&quot;: 0,
            &quot;trig_light_flicker&quot;: 0,
            &quot;trig_light_delay&quot;: 5,
            &quot;trig_record&quot;: 0,
            &quot;trig_obs_record&quot;: 0,
            &quot;trig_gb28181&quot;: 0,
            &quot;trig_gat1400&quot;: 1,
            &quot;trig_onvif&quot;: 0,
            &quot;similaritythreshold&quot;: 75,
            &quot;trig_alarm_out&quot;: [0,0]
        },
        &quot;event_blacklist&quot;: {
            &quot;alarminterval&quot;: 0,
            &quot;audioalarmstatus&quot;: 1,
            &quot;speaker_repeat&quot;: 2,
            &quot;sound_file_no&quot;: 3,
            &quot;trig_light&quot;: 1,
            &quot;light_not_flicker&quot;: 0,
            &quot;trig_light_flicker&quot;: 0,
            &quot;trig_light_delay&quot;: 5,
            &quot;trig_record&quot;: 0,
            &quot;trig_obs_record&quot;: 0,
            &quot;trig_gb28181&quot;: 0,
            &quot;trig_gat1400&quot;: 1,
            &quot;trig_onvif&quot;: 0,
            &quot;similaritythreshold&quot;: 75,
            &quot;trig_alarm_out&quot;: [0,0]
        },
        &quot;event_stranger&quot;: {
            &quot;alarminterval&quot;: 0,
            &quot;audioalarmstatus&quot;: 1,
            &quot;speaker_repeat&quot;: 2,
            &quot;sound_file_no&quot;: 3,
            &quot;trig_light&quot;: 1,
            &quot;light_not_flicker&quot;: 0,
            &quot;trig_light_flicker&quot;: 0,
            &quot;trig_light_delay&quot;: 5,
            &quot;trig_record&quot;: 0,
            &quot;trig_obs_record&quot;: 0,
            &quot;trig_gb28181&quot;: 0,
            &quot;trig_gat1400&quot;: 1,
            &quot;trig_onvif&quot;: 0,
            &quot;similaritythreshold&quot;: 75,
            &quot;trig_alarm_out&quot;: [0,0]
        },
        &quot;timearea&quot;: {
            &quot;refer_width&quot;: 1920,
            &quot;refer_height&quot;: 1080,
            &quot;showarea&quot;: 2,
            &quot;all_time&quot;: 1,
            &quot;points&quot;: [&quot;0:0&quot;,&quot;1920:0&quot;,&quot;1920:1080&quot;,&quot;0:1080&quot;],
            &quot;period&quot;: [
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;]
            ]
        }
    },
    &quot;msg&quot;: &quot;success&quot;
}
```

##### 人脸识别返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|pixel |int   |人脸抓拍最小像素| 64-1080|
|unrecognized_report |int   |是否上报抓拍数据| 0--不上报  1--上报|
|repeat_report |int   |是否开启间隔上报| 0--不上报  1--上报|
|repeat_report_interval_time |int   |间隔上报间隔时间 秒| 1-60|
|snapinterval |int   |人脸抓拍间隔（秒）&lt;br/&gt;只有unrecognized_report为1时生效| 1-300|
|face_image_type |int   |抓拍图像模式|0 人脸图 1 半身图|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|support_face_attr |int   |是否支持人脸特征提取 （年龄、性别等）|0或者无此项 不支持（web不显示）  1 支持|
|enable_face_attr |int   |是否提取人脸特征提取 支持人脸特征提取才有此项|0 不提取  1提取|
|support_live |int   |是否支持活体检测|0或者无此项 不支持（web不显示）  1 支持|
|enable_live |int   |是否开启活体检测 支持活体检测才有此项|0 不开启  1开启（开启后非活体不输出）|
|snapmodel |int   |图片输出模式|0 快速推送:比对成功或者未比对成功的情况下,都立即输出一张对比/抓拍图片, 如果开始比对失败的,后面比对成功了,再推送一张比对成功的图片。&lt;/br&gt; 1 快速推送+优选推送：比对成功或者未比对成功的情况下,都立即输出一张抓拍图片,人消失后,再推送一张质量最好的图片。&lt;/br&gt; 2 优选推送: 不管比对成功或者没比对成功,人消失后才推送一张质量最好的图片。&lt;/br&gt;备注:推送 抓拍图片(未比对成功的图片) 需要开启unrecognized_report=1,否则只推送比对成功的图片|
|event |obj   |事件类型处理obj |同（人脸抓拍算法参数）白名单人员 告警逻辑|
|event_blacklist |obj   |事件类型处理obj |同（人脸抓拍算法参数）黑名单人员 告警逻辑|
|event_stranger |obj   |事件类型处理obj |同（人脸抓拍算法参数）陌生人 告警逻辑|
|timearea |obj  |时间和区域类型处理obj |同（人脸抓拍算法参数）|

|event * 数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|similaritythreshold |int   |人脸识别相识度 |60-100区间|
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|



---

## 人脸数据录入(批量、单个)、列表查询(需当前运行算法为人脸检测算法)

> Page ID: 298031326


[TOC]
####	一、人脸数据批量录入（TF卡方式）

##### 批量录入要求

- 批量录入人脸时，请将人脸库图片文件夹放入TF卡根目录下,并将文件夹命名为face_input,图片请使用jpg格式，图片名称请以人名或代号命名,录入失败的人脸将会被记录在face_input目录下的load_face_error.log文件中

##### HTTP请求
- ` Method: POST `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_face_input `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;face_input&quot;, //操作命令  
	   &quot;data&quot;:{
			&quot;person_type&quot;:0
	   }
	}
```
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|person_type |int   |0 白名单 1 黑名单 非必选 无此项按白名单处理|



##### HTTP返回示例
``` 
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败  请求成功将继续调用以下接口进行音频文件名绑定|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;face_input&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{
	 	&quot;person_type&quot;:0
	 }
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

####	二、人脸图片上传（P2P不受用）

##### HTTP请求
- ` Method: POST `
- ` Params: form-data`
- ` Key: file`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=face_upload `
	  
##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败  请求成功将继续调用以下接口进行音频文件名绑定|
|msg |string   |请求返回的提示信息|

####	三、人脸信息设定

##### HTTP请求
- ` 需调用[人脸图片上传]接口成功后，调用此接口`
- ` Method: POST `
- ` Params: 详见请求参数`
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_face_set `

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;face_set&quot;, //操作命令  
	   &quot;data&quot;:{
			&quot;person_id&quot;: &quot;&quot;,
			&quot;person_name&quot;: &quot;&quot;,
			&quot;person_group&quot;: &quot;&quot;,
			&quot;person_type&quot;: 0
	   }
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|person_id |是 |string   |人脸关键字（唯一，不可重复）|
|person_name |是 |string  |人脸名称（可重复)|
|person_group |是 |string  |人脸组别（可重复)|
|person_type |否|int  |0 白名单 1 黑名单 无此项一律按白名单处理|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

####	四、人脸信息列表分页查询（一页10个）

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=face_list `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;face_list_get&quot;, //操作命令  
	   &quot;data&quot;:{
	   		//见请求参数
	   }
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|page |是 |int   |页码   一页10条数据|

##### 数据返回
```JSON
	{
	&quot;status&quot;: 0,
	&quot;data&quot;: {
		&quot;total_num&quot;: 2,
		&quot;face_list&quot;: [
			{
				&quot;sn&quot; : 1,
				&quot;person_id&quot;:&quot;李强1&quot;,
				&quot;person_name&quot;:&quot;李强&quot;,
				&quot;group_id&quot; : &quot;公司&quot;,
				&quot;person_type&quot; : 0
			}，{
				&quot;sn&quot; : 2,
				&quot;person_id&quot;:&quot;李强2&quot;,
				&quot;person_name&quot;:&quot;李强&quot;,
				&quot;group_id&quot; : &quot;公司&quot;,
				&quot;person_type&quot; : 1
			}
		]
	},
	&quot;msg&quot;: &quot;success&quot;
}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |音频配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|total_num |int   |数据库人脸信息总数|整型|
|face_list |list   |人脸信息集合|face_list[i]|

|face_list[i]|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|person_id |string   |人脸关键字（唯一，不可重复)|字符串 64|
|person_name |string   |人脸名称（可重复)|字符串 64 |
|group_id |string   |人脸组别（可重复)|字符串 64 |
|person_type |int   |0 白名单 1 黑名单 无此项统一按白名单处理|int [0,1]|

####	五、人脸信息列表分页搜索查询（一页10个）
##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=face_search `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;face_search_get&quot;, //操作命令  
	   &quot;data&quot;:{
	   		//见请求参数
	   }
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|page |是 |int   |页码   一页10条数据|
|search |是 |string   |查询关键字|

##### 数据返回同上面分页列表查询一直

####	六、人脸数据库删除或清空
##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_face_delete `
	  
##### P2P信令
```
	{
	   &quot;cmd&quot;:&quot;face_delete&quot;, //操作命令
	   &quot;data&quot;:{
	   		//见请求参数
	   }
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|clear_all |是 |int   |0-不全部清除  1-全部清除|
|face_list |否 |list   |人脸关键字集合|

|face_list[i]|必选|类型|说明|
|:----    |:---|:----- |-----   |
| |否 |string   |人脸关键字|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;face_delete&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

####	七、人脸数据批量录入（特征值上传方式)

##### 特征值数据来源
- 需要使用`linux人脸特征值提取工具`或者`守御视界`人脸特征值库制作工具制作特征值库


##### HTTP请求
- ` Method: POST `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_facedb `

POST body中携带特征值库

##### P2P信令
命令码：IOTYPE_USER_JSON_CONTROL_REQ
```JSON
	{
	   &quot;cmd&quot;:&quot;facedb_upload&quot;, //操作命令  
	   &quot;data&quot;://特征库数据 json
	}
```

##### HTTP返回示例
``` 
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败  |
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;facedb_upload&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
}
```


---

## 人车非检测、电瓶车检测、消防通道检测算法配置信息

> Page ID: 298031441

##### 人车非检测、电瓶车检测、消防通道占用检测

```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;sensitivity&quot;:3,
			&quot;display_detection_box&quot;: 1,
			&quot;repeat_report_interval_time&quot;:30,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 1,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;sound_file_no2&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 1,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```

##### 人车非检测、电瓶车检测、消防通道占用检测

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|sensitivity |int   |检测灵敏度 |1-5 5为灵敏 1为迟钝 仅电瓶车检测有此选项 获取的参数有此项 web才进行展示|
|display_detection_box |int   |是否显示检测框 |0 不显示 1-显示 |
|repeat_report_interval_time |int   |持续检测上报间隔（秒） |2-60秒 |
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|sound_file_no2 |int  |告警音频文件2下标 | 从报警音频列表获取   有此字段则支持两个告警音，没有则只支持一个告警音频|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|


---

## 车牌信息批量录入、列表查询(需当前运行算法为车牌算法)

> Page ID: 298031327

[TOC]
#####	一、车牌数据批量录入

##### HTTP请求
- ` Method: POST `
- ` Params: 祥见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_plate_list `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;plate_list_set&quot;, //操作命令  
	   &quot;data&quot;:{
	   		//祥见请求参数
	   }
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|plate_type |是 |int   |车牌类型  1-白名单  2-黑名单|
|plate_list |是 |list  |车牌号集合|

|plate_list[i]|必选|类型|说明|
|:----    |:---|:----- |-----   |
| |否 |string   |车牌号|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;plate_list_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

#####	二、车牌信息列表分页查询（一页10个）

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=plate_list `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;plate_list_get&quot;, //操作命令  
	   &quot;data&quot;:{
	   		//见请求参数
	   }
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|page |是 |int   |页码   一页10条数据|

##### 数据返回
```JSON
	{
	&quot;status&quot;: 0,
	&quot;data&quot;: {
		&quot;total_num&quot;: 2,
		&quot;face_list&quot;: [
			{
				&quot;sn&quot; : 1,
				&quot;plate_num&quot;:&quot;川ASU426&quot;,
				&quot;plate_type&quot;:1
			}，{
				&quot;sn&quot; : 2,
				&quot;plate_num&quot;:&quot;川AA123456&quot;,
				&quot;plate_type&quot;:1
			}
		]
	},
	&quot;msg&quot;: &quot;success&quot;
}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |音频配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|total_num |int   |数据库人脸信息总数|整型|
|plate_list |list   |车牌信息集合|plate_list[i]|

|plate_list[i]|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|sn |int   |数据序列号|整型|
|plate_num |string   |车牌号（唯一，不可重复)|字符串|
|plate_type |int   |车牌类型 黑白名单|字符串|

#####	三、车牌列表分页搜索查询（一页10个）
##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=plate_search `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;plate_search_get&quot;, //操作命令  
	   &quot;data&quot;:{
	   		//见请求参数
	   }
	}
```
##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|page |是 |int   |页码   一页10条数据|
|search |是 |string   |查询关键字|

##### 数据返回同上面分页列表查询一直

#####	四、车牌数据库删除或清空
##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_plate_delete `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;plate_delete&quot;, //操作命令
	   &quot;data&quot;:{
	   		//见请求参数
	   }
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|clear_all |是 |int   |0-不全部清除  1-全部清除|
|plate_list |否 |list   |车牌号集合|

|plate_list[i]|必选|类型|说明|
|:----    |:---|:----- |-----   |
| |否 |string   |车牌号|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;plate_delete&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 消防通道背景设定(仅消防通道检测算法)

> Page ID: 298031325

[TOC]
#####	消防通道背景设定

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_fpod_background `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;fpod_background_set&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;fpod_background_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|



---

## 电瓶车载人检测配置信息

> Page ID: 298031442

##### 电瓶车载人检测算法数据返回
```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;type&quot; : 1,
			&quot;repeat_report&quot; : 1,
			&quot;repeat_report_interval_time&quot; : 30,
			&quot;display_detection_box&quot;:1,
			&quot;display_count_osd&quot;:1,
			&quot;report_mode&quot;:1,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 1,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;sound_file_no2&quot;: 30,
				&quot;sound_file_no3&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 1,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
##### 电瓶车载人检测返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|type |int   |检测类型 |1 摩托车载人&lt;/br&gt; 2 机动车检测 &lt;/br&gt;3 电瓶车三轮车检测&lt;/br&gt;该项web不做显示|
|repeat_report |int   |重复数据上报开启或关闭 | 1开启，0关闭|
|repeat_report_interval_time |int   |重复数据上报间隔时长 | 3-3600秒|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|display_count_osd |int   |是否开启OSD计数显示|0 不显示 1 显示|
|report_mode |int   |图片上报模式|1 未佩戴头盔上报 2已佩戴头盔上报  3 未佩戴+已佩戴头盔共同上报|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |摩托车超载违法音频 | 从报警音频列表获取|
|sound_file_no2 |int  |三轮车载人违法音频 | 从报警音频列表获取 |
|sound_file_no3 |int  |摩托车未佩戴头盔音频 | 从报警音频列表获取 |
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|

---

## 安全帽检测(基于头肩)配置信息

> Page ID: 298031443

##### 安全帽检测（基于头肩）算法数据返回
```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;display_detection_box&quot;:1,
			&quot;forbid_color_array&quot;:[1,2,3,4,5],
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 1,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 1,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
##### 安全帽检测（基于头肩）返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|forbid_color_array |list   |需要输出的安全帽颜色类型 |BLACK = 1,BLUE = 2,RED = 3,WHITE = 4,YELLOW = 5|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|

---

## 火焰检测配置信息

> Page ID: 298031444

##### 火焰检测算法数据返回
``` JSON
{
    &quot;status&quot;: 0,
    &quot;data&quot;: {
        &quot;enable&quot;: 1,
        &quot;sensitivity&quot;: 3,
        &quot;enable_smoke&quot;: 2,
        &quot;enable_fire&quot;: 2,
        &quot;display_detection_box&quot;: 1,
        &quot;report_interval_time&quot;: 3,
        &quot;report_interval_time_smoke&quot;: 3,
        &quot;report_interval_time_fire&quot;: 3,
        &quot;vision_smoke_det_thres&quot;: 0.80,
        &quot;vision_smoke_align_thres&quot;: 0.70,
        &quot;vision_fire_det_thres&quot;: 0.80,
        &quot;vision_fire_align_thres&quot;: 0.70,
        &quot;vision_smoke_sensitivity&quot;:3,
        &quot;vision_fire_sensitivity&quot;:3,
        &quot;event&quot;: {
            &quot;alarminterval&quot;: 3,
            &quot;audioalarmstatus&quot;: 1,
            &quot;speaker_repeat&quot;: 0,
            &quot;sound_file_no&quot;: 8,
            &quot;trig_light&quot;: 2,
            &quot;light_not_flicker&quot;: 0,
            &quot;trig_light_flicker&quot;: 0,
            &quot;trig_light_delay&quot;: 5,
            &quot;trig_record&quot;: 0,
            &quot;trig_obs_record&quot;: 0,
            &quot;trig_gat1400&quot;: 1,
            &quot;trig_gb28181&quot;: 0,
            &quot;trig_onvif&quot;: 1,
            &quot;trig_alarm_out&quot;: [
                0,
                0
            ]
        },
        &quot;event_smoke&quot;: {
            &quot;alarminterval&quot;: 3,
            &quot;audioalarmstatus&quot;: 2,
            &quot;speaker_repeat&quot;: 0,
            &quot;sound_file_no&quot;: 12,
            &quot;trig_light&quot;: 2,
            &quot;light_not_flicker&quot;: 0,
            &quot;trig_light_flicker&quot;: 0,
            &quot;trig_light_delay&quot;: 5,
            &quot;trig_record&quot;: 0,
            &quot;trig_gat1400&quot;: 0,
            &quot;trig_gb28181&quot;: 0,
            &quot;trig_onvif&quot;: 0,
            &quot;trig_alarm_out&quot;: [
                0,
                0
            ]
        },
        &quot;event_fire&quot;: {
            &quot;alarminterval&quot;: 3,
            &quot;audioalarmstatus&quot;: 2,
            &quot;speaker_repeat&quot;: 0,
            &quot;sound_file_no&quot;: 30,
            &quot;trig_light&quot;: 2,
            &quot;light_not_flicker&quot;: 0,
            &quot;trig_light_flicker&quot;: 0,
            &quot;trig_light_delay&quot;: 5,
            &quot;trig_record&quot;: 0,
            &quot;trig_obs_record&quot;: 0,
            &quot;trig_gat1400&quot;: 0,
            &quot;trig_gb28181&quot;: 0,
            &quot;trig_onvif&quot;: 0,
            &quot;trig_alarm_out&quot;: [
                0,
                0
            ]
        },
        &quot;timearea&quot;: {
            &quot;refer_width&quot;: 1920,
            &quot;refer_height&quot;: 1080,
            &quot;showarea&quot;: 2,
            &quot;all_time&quot;: 1,
            &quot;points&quot;: [
                &quot;0:0&quot;,
                &quot;1920:0&quot;,
                &quot;1920:1080&quot;,
                &quot;0:1080&quot;
            ],
            &quot;period&quot;: [
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ]
            ]
        },
        &quot;timearea_smoke&quot;: {
            &quot;refer_width&quot;: 1920,
            &quot;refer_height&quot;: 1080,
            &quot;showarea&quot;: 2,
            &quot;all_time&quot;: 1,
            &quot;points&quot;: [
                &quot;0:0&quot;,
                &quot;1920:0&quot;,
                &quot;1920:1080&quot;,
                &quot;0:1080&quot;
            ],
            &quot;period&quot;: [
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ]
            ]
        },
        &quot;timearea_fire&quot;: {
            &quot;refer_width&quot;: 1920,
            &quot;refer_height&quot;: 1080,
            &quot;showarea&quot;: 2,
            &quot;all_time&quot;: 1,
            &quot;points&quot;: [
                &quot;0:0&quot;,
                &quot;1920:0&quot;,
                &quot;1920:1080&quot;,
                &quot;0:1080&quot;
            ],
            &quot;period&quot;: [
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ]
            ]
        }
    },
    &quot;msg&quot;: &quot;success&quot;
}
```
##### 火焰检测返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |火焰检测配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |火焰传感器检测开关 |1-开启  2-关闭|
|sensitivity |int   |灵敏度等级 |1-10 越小越灵敏 |
|display_detection_box |int   |是否开启显示检测框 仅视觉检测有效|0 不显示 1 显示|
|enable_smoke |int   |烟雾检测算法开关 |1-开启  2-关闭|
|enable_fire |int   |火焰算法测算法开关 |1-开启  2-关闭|
|report_interval_time |int   |传感器抓拍上报间隔 |1-300秒 |
|report_interval_time_smoke |int   |烟雾检测抓拍上报间隔 |1-300秒 |
|report_interval_time_fire |int   |火焰检测算法抓拍上报间隔 |1-300秒 |
|~~vision_smoke_det_thres~~ |float   |烟雾检测阈值 已废弃|0.2-1.0 |
|~~vision_smoke_align_thres~~ |float   |烟雾校准灵敏度 已废弃|0.2-1.0 |
|~~vision_fire_det_thres~~ |float   |火焰检测阈值&quot; 已废弃 |0.2-1.0 |
|~~vision_fire_align_thres~~ |float   |火焰校准阈值 已废弃|0.2-1.0 |
|vision_fire_sensitivity |int   |视觉火焰检测灵敏度 |1(迟钝)-5（灵敏）默认3 |
|vision_smoke_sensitivity |int   |视觉烟雾检测灵敏度 |1(迟钝)-5（灵敏）默认3|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|event_smoke |obj   |烟雾检测事件类型处理 |obj|
|event_fire |obj   |火焰检测算法事件类型处理 |obj|
|timearea |obj  |时间和区域类型处理obj |obj|
|timearea_smoke |obj  |烟雾检测时间和区域类型处理obj |obj|
|timearea_fire |obj  |火焰检测算法时间和区域类型处理obj |obj|

|event\event_smoke\event_fire数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea\timearea_smoke\timearea_fire数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个【传感器检测无区域设置】|

---

## 离岗检测配置信息

> Page ID: 298031445

##### 离岗检测算法数据返回
```
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 2,
			&quot;display_detection_box&quot;:1,
			&quot;repeat_report&quot;: 1,
			&quot;repeat_report_interval_time&quot;: 8,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 3,
				&quot;audioalarmstatus&quot;: 1,
				&quot;light_not_flicker&quot;: 0,
				&quot;off_duty_time&quot;: 60,
				&quot;sound_file_no&quot;: 7,
				&quot;speaker_repeat&quot;: 0,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 2,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [
					[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;],
					[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;],
					[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;]
				],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 1
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```

##### 离岗检测算法返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|repeat_report |int   |每个岗位是否开启离岗持续上报 |0--只报一次    1--持续上报|
|repeat_report_interval_time |int   |每一个岗位的持续上报时间|秒数 2-30|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|off_duty_time |int   |允许离岗时长 |秒数10-7200|
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 |1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |离岗检测区域 |支持最大三个检测区域 4-8边形|




---

## 车牌检测配置信息

> Page ID: 298031446

##### 车牌检测算法数据返回
```
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;repeat_report&quot;: 1,
			&quot;repeat_report_interval_time&quot;: 4,
			&quot;display_detection_box&quot;:1,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 2,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 2,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```

##### 车牌检测算法返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|repeat_report |int   |重复上报开关 |0--不重复    1--重复|
|repeat_report_interval_time |int   |重复上报间隔 |秒数 1-8|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|

---

## 客流统计算法(基于头肩)配置信息

> Page ID: 298031448


##### 客流统计算法（基于头肩检测）数据返回
```
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;display_detection_box&quot;:1,
			&quot;sensitivity&quot;：3,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 1,
				&quot;audioalarmstatus&quot;: 2,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 10,
				&quot;speaker_repeat&quot;: 0,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 0,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 2,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;line_end&quot;: &quot;1053:313&quot;,
			&quot;line_start&quot;: &quot;290:321&quot;,
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;276:67&quot;, &quot;1074:67&quot;, &quot;1074:571&quot;, &quot;276:571&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 1
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```

##### 人流统计算法（基于头肩检测）返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |客流统计配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|sensitivity |int   |检测灵敏度 |1-5 5为灵敏 1为迟钝 |
|line_start |string   |客流线起点 |参考坐标区域内的点|
|line_end |string   |客流先终点 |参考坐标区域内的点|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://192.168.1.3:81/web/#/601874687/298031301 &quot;Heading link&quot;)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|

---

## 客流统计(基于头肩)数据获取（需当前运行算法为基于头肩检测的客流统计算法）

> Page ID: 298031345

[TOC]
#####客流统计(基于头肩)数据查询

##### HTTP请求
- ` Method: POST `
- ` Params: 祥见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=people_counter `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;people_counter_get&quot;, //操作命令  
	   &quot;data&quot;:{
	   		//祥见请求参数
	   }
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|search_type |是 |int   |查询类型  1-日记录查询  2-月记录查询 3-周期查询（某一天至某一一天）|
|tm |是(非周期查询有效) |long   |时间戳  日查询：某天的任意时间节点的时间戳 月查询：某月的任意一天的时间戳|
|start_tm |是(仅周期查询有效) |long   |时间戳  周期查询：开始的天的00:00的时间戳|
|stop_tm |是(仅周期查询有效)|long   |时间戳  周期查询：结束天的23:59:59,因为周期查询可能会跨月/跨年|

##### 数据返回示例(日记录)
```JSON
  {
    &quot;status&quot;: 0,
	&quot;data&quot;:{
		&quot;count_list&quot;:[
			{&quot;hour&quot;:0,&quot;enter_count&quot;:0,&quot;leave_count&quot;:0,&quot;wander_count&quot;:0},
			{&quot;hour&quot;:1,&quot;enter_count&quot;:0,&quot;leave_count&quot;:0,&quot;wander_count&quot;:0},
			{&quot;hour&quot;:2,&quot;enter_count&quot;:0,&quot;leave_count&quot;:0,&quot;wander_count&quot;:0},
			{&quot;hour&quot;:3,&quot;enter_count&quot;:0,&quot;leave_count&quot;:0,&quot;wander_count&quot;:0},
			{&quot;hour&quot;:4,&quot;enter_count&quot;:0,&quot;leave_count&quot;:0,&quot;wander_count&quot;:0},
			{&quot;hour&quot;:5,&quot;enter_count&quot;:0,&quot;leave_count&quot;:0,&quot;wander_count&quot;:0},
			{&quot;hour&quot;:6,&quot;enter_count&quot;:0,&quot;leave_count&quot;:0,&quot;wander_count&quot;:0},
			{&quot;hour&quot;:7,&quot;enter_count&quot;:0,&quot;leave_count&quot;:0,&quot;wander_count&quot;:0},
			{&quot;hour&quot;:8,&quot;enter_count&quot;:1,&quot;leave_count&quot;:0,&quot;wander_count&quot;:1},
			{&quot;hour&quot;:9,&quot;enter_count&quot;:3,&quot;leave_count&quot;:2,&quot;wander_count&quot;:2},
			{&quot;hour&quot;:10,&quot;enter_count&quot;:10,&quot;leave_count&quot;:10,&quot;wander_count&quot;:3},
			{&quot;hour&quot;:11,&quot;enter_count&quot;:24,&quot;leave_count&quot;:15,&quot;wander_count&quot;:4},
			{&quot;hour&quot;:12,&quot;enter_count&quot;:40,&quot;leave_count&quot;:20,&quot;wander_count&quot;:6},
			{&quot;hour&quot;:13,&quot;enter_count&quot;:44,&quot;leave_count&quot;:32,&quot;wander_count&quot;:10},
			{&quot;hour&quot;:14,&quot;enter_count&quot;:49,&quot;leave_count&quot;:36,&quot;wander_count&quot;:20},
			{&quot;hour&quot;:15,&quot;enter_count&quot;:56,&quot;leave_count&quot;:42,&quot;wander_count&quot;:21},
			{&quot;hour&quot;:16,&quot;enter_count&quot;:69,&quot;leave_count&quot;:47,&quot;wander_count&quot;:26},
			{&quot;hour&quot;:17,&quot;enter_count&quot;:74,&quot;leave_count&quot;:49,&quot;wander_count&quot;:28},
			{&quot;hour&quot;:18,&quot;enter_count&quot;:89,&quot;leave_count&quot;:56,&quot;wander_count&quot;:30},
			{&quot;hour&quot;:19,&quot;enter_count&quot;:98,&quot;leave_count&quot;:59,&quot;wander_count&quot;:31},
			{&quot;hour&quot;:20,&quot;enter_count&quot;:100,&quot;leave_count&quot;:65,&quot;wander_count&quot;:32},
			{&quot;hour&quot;:21,&quot;enter_count&quot;:102,&quot;leave_count&quot;:89,&quot;wander_count&quot;:33},
			{&quot;hour&quot;:22,&quot;enter_count&quot;:102,&quot;leave_count&quot;:89,&quot;wander_count&quot;:37},
			{&quot;hour&quot;:23,&quot;enter_count&quot;:102,&quot;leave_count&quot;:89,&quot;wander_count&quot;:37}
		]
	}
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|data |obj   |查询结果|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|count_list |list   |日记录数据集合|count_list[i]|

|count_list[i]|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|hour |int   |时间|整型 0-23|
|enter_count |int   |进入人数|整型 从0点开始累加|
|leave_count |int   |离开人数|整型 从0点开始累加|
|wander_count |int   |逗留人数|整型 从0点开始累加|

##### 数据返回示例(月记录)
```JSON
  {
    &quot;status&quot;: 0,
	&quot;data&quot;:{
		&quot;count_list&quot;:[
			{&quot;day&quot;:1,&quot;enter_count&quot;:100,&quot;leave_count&quot;:95,&quot;wander_count&quot;:20},
			{&quot;day&quot;:2,&quot;enter_count&quot;:122,&quot;leave_count&quot;:98,&quot;wander_count&quot;:10},
			{&quot;day&quot;:3,&quot;enter_count&quot;:221,&quot;leave_count&quot;:198,&quot;wander_count&quot;:24},
			{&quot;day&quot;:4,&quot;enter_count&quot;:111,&quot;leave_count&quot;:99,&quot;wander_count&quot;:35},
			{&quot;day&quot;:5,&quot;enter_count&quot;:234,&quot;leave_count&quot;:234,&quot;wander_count&quot;:33},
			{&quot;day&quot;:6,&quot;enter_count&quot;:128,&quot;leave_count&quot;:125,&quot;wander_count&quot;:34},
			{&quot;day&quot;:7,&quot;enter_count&quot;:159,&quot;leave_count&quot;:154,&quot;wander_count&quot;:36},
			{&quot;day&quot;:8,&quot;enter_count&quot;:100,&quot;leave_count&quot;:90,&quot;wander_count&quot;:37},
			{&quot;day&quot;:9,&quot;enter_count&quot;:211,&quot;leave_count&quot;:200,&quot;wander_count&quot;:40},
			{&quot;day&quot;:10,&quot;enter_count&quot;:344,&quot;leave_count&quot;:333,&quot;wander_count&quot;:20},
			{&quot;day&quot;:11,&quot;enter_count&quot;:222,&quot;leave_count&quot;:212,&quot;wander_count&quot;:14},
			{&quot;day&quot;:12,&quot;enter_count&quot;:111,&quot;leave_count&quot;:107,&quot;wander_count&quot;:19},
			{&quot;day&quot;:13,&quot;enter_count&quot;:453,&quot;leave_count&quot;:420,&quot;wander_count&quot;:33},
			{&quot;day&quot;:14,&quot;enter_count&quot;:232,&quot;leave_count&quot;:211,&quot;wander_count&quot;:6},
			{&quot;day&quot;:15,&quot;enter_count&quot;:116,&quot;leave_count&quot;:109,&quot;wander_count&quot;:29},
			{&quot;day&quot;:16,&quot;enter_count&quot;:67,&quot;leave_count&quot;:45,&quot;wander_count&quot;:44},
			{&quot;day&quot;:17,&quot;enter_count&quot;:98,&quot;leave_count&quot;:90,&quot;wander_count&quot;:34},
			{&quot;day&quot;:18,&quot;enter_count&quot;:156,&quot;leave_count&quot;:152,&quot;wander_count&quot;:42},
			{&quot;day&quot;:19,&quot;enter_count&quot;:178,&quot;leave_count&quot;:156,&quot;wander_count&quot;:14},
			{&quot;day&quot;:20,&quot;enter_count&quot;:199,&quot;leave_count&quot;:176,&quot;wander_count&quot;:26},
			{&quot;day&quot;:21,&quot;enter_count&quot;:990,&quot;leave_count&quot;:367,&quot;wander_count&quot;:31},
			{&quot;day&quot;:22,&quot;enter_count&quot;:333,&quot;leave_count&quot;:300,&quot;wander_count&quot;:39},
			{&quot;day&quot;:23,&quot;enter_count&quot;:222,&quot;leave_count&quot;:222,&quot;wander_count&quot;:29},
			{&quot;day&quot;:24,&quot;enter_count&quot;:144,&quot;leave_count&quot;:155,&quot;wander_count&quot;:22},
			{&quot;day&quot;:25,&quot;enter_count&quot;:145,&quot;leave_count&quot;:142,&quot;wander_count&quot;:45},
			{&quot;day&quot;:26,&quot;enter_count&quot;:260,&quot;leave_count&quot;:230,&quot;wander_count&quot;:33},
			{&quot;day&quot;:27,&quot;enter_count&quot;:231,&quot;leave_count&quot;:211,&quot;wander_count&quot;:36},
			{&quot;day&quot;:28,&quot;enter_count&quot;:180,&quot;leave_count&quot;:172,&quot;wander_count&quot;:30},
			{&quot;day&quot;:29,&quot;enter_count&quot;:165,&quot;leave_count&quot;:154,&quot;wander_count&quot;:11},
			{&quot;day&quot;:30,&quot;enter_count&quot;:122,&quot;leave_count&quot;:111,&quot;wander_count&quot;:12}
		]
	}
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|data |obj   |查询结果|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|count_list |list   |日记录数据集合|count_list[i]|

|count_list[i]|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|day |int   |日期|整型 某一个月的第几天|
|enter_count |int   |进入人数|整型|
|leave_count |int   |离开人数|整型|
|wander_count |int   |逗留人数|整型|

##### 数据返回示例(周记录  天至天)
```JSON
  {
    &quot;status&quot;: 0,
	&quot;data&quot;:{
		&quot;count_list&quot;:[
				{
					&quot;year&quot;:2024,
					&quot;month&quot;:4,
					&quot;day&quot;:1,
					&quot;enter_count&quot;:100,
					&quot;leave_count&quot;:95,
					&quot;wander_count&quot;:20
				},
				{
					&quot;year&quot;:2024,
					&quot;month&quot;:4,
					&quot;day&quot;:2,
					&quot;enter_count&quot;:100,
					&quot;leave_count&quot;:95,
					&quot;wander_count&quot;:20
				},{
					&quot;year&quot;:2024,
					&quot;month&quot;:4,
					&quot;day&quot;:3,
					&quot;enter_count&quot;:100,
					&quot;leave_count&quot;:95,
					&quot;wander_count&quot;:20
				},{
					&quot;year&quot;:2024,
					&quot;month&quot;:4,
					&quot;day&quot;:4,
					&quot;enter_count&quot;:100,
					&quot;leave_count&quot;:95,
					&quot;wander_count&quot;:20
				},{
					&quot;year&quot;:2024,
					&quot;month&quot;:4,
					&quot;day&quot;:5,
					&quot;enter_count&quot;:100,
					&quot;leave_count&quot;:95,
					&quot;wander_count&quot;:20
				},{
					&quot;year&quot;:2024,
					&quot;month&quot;:4,
					&quot;day&quot;:6,
					&quot;enter_count&quot;:100,
					&quot;leave_count&quot;:95,
					&quot;wander_count&quot;:20
				},{
					&quot;year&quot;:2024,
					&quot;month&quot;:4,
					&quot;day&quot;:7,
					&quot;enter_count&quot;:100,
					&quot;leave_count&quot;:95,
					&quot;wander_count&quot;:20
				}
			]
	}
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|data |obj   |查询结果|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|count_list |list   |日记录数据集合|count_list[i]|

|count_list[i]|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|year |int   |日期|整型 年份|
|month |int   |日期|整型 月份|
|day |int   |日期|整型 某一个月的第几天|
|enter_count |int   |进入人数|整型|
|leave_count |int   |离开人数|整型|
|wander_count |int   |逗留人数|整型|


---

## 车辆预警算法配置信息

> Page ID: 298031449

##### 车辆预警算法数据返回
```
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;repeat_report&quot;: 1,
			&quot;repeat_report_interval_time&quot;: 30,
			&quot;vehc_type_array&quot; : [1,2,3,4,5,6,7,8,9],
			&quot;display_detection_box&quot;:1,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 1,
				&quot;audioalarmstatus&quot;: 2,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 10,
				&quot;speaker_repeat&quot;: 0,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 0,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 2,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;line_end&quot;: &quot;1053:313&quot;,
			&quot;line_start&quot;: &quot;290:321&quot;,
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;276:67&quot;, &quot;1074:67&quot;, &quot;1074:571&quot;, &quot;276:571&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 1
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```

##### 车辆预警算法返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|repeat_report |int   |重复上报开关 |0--不重复    1--重复|
|repeat_report_interval_time |int   |重复上报间隔 |秒数 3-3600|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|vehc_type_array |list   |需要输出的车辆类型 |0.自行车(暂不处理） １.公交车２.摩托车３.MPV４.皮卡车５.小汽车６.SUV７.三轮车８.大货车９.面包车|
|line_start |string   |客流线起点 |参考坐标区域内的点|
|line_end |string   |客流先终点 |参考坐标区域内的点|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|

---

## 厨房三白检测配置信息

> Page ID: 298031450

##### 厨房三白检测算法数据返回
```
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;display_detection_box&quot;:1,
			&quot;det_type_array&quot; : [1,2,3,4,5,6,7],
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 2,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 2,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
#####厨房三白检测算法返回参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|det_type_array |list   |需要检测的类型 |厨师帽=1,口罩 = 2,打电话 = 3,抽烟 = 4,工作服 = 5, 老鼠=6,垃圾桶=7|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|


---

## 电瓶车闸道算法配置信息

> Page ID: 298031451

##### 电瓶车闸道算法数据返回
```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;display_detection_box&quot;:1,
			&quot;repeat_report&quot;: 1,
			&quot;repeat_report_interval_time&quot;: 4,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 2,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;sound_file_no2&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 2,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
##### 电瓶车闸道算法返回参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|repeat_report |int   |重复上报开关 |0--不重复    1--重复|
|repeat_report_interval_time |int   |重复上报间隔 |秒数 3-3600|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启  非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|sound_file_no2 |int  |告警音频文件2下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|

---

## 消防通道车辆检测配置信息

> Page ID: 298031452


##### 消防通道车辆检测算法数据返回
```
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;display_detection_box&quot;:1,
			&quot;need_end_event&quot; : 1,
			&quot;stay_time&quot; : 5,
			&quot;repeat_report&quot;: 1,
			&quot;repeat_report_interval_time&quot;: 4,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 2,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 2,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
##### 消防通道车辆检测算法返回参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|need_end_event |int   |是否需要结束事件 |1--需要  2-不需要|
|stay_time |int   |允许停留时长 |秒数5-3600|
|repeat_report |int   |重复上报开关 |0--不重复    1--重复|
|repeat_report_interval_time |int   |重复上报间隔 |秒数 3-3600|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|

---

## 人脸签到算法配置信息

> Page ID: 298031663

##### 人脸签到算法数据返回
```
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;display_detection_box&quot;:1,
			&quot;repeat_report&quot;: 0,
			&quot;repeat_report_interval_time&quot;: 4,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 2,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 2,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;，&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;，&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,],,
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;，&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,],,
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;，&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,],,
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;，&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,],,
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;，&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,],,
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;，&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,],
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```

##### 人脸签到算法返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸签到配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|repeat_report |int   |重复上报开关 |0--不重复    1--重复|
|repeat_report_interval_time |int   |重复上报间隔 |秒数 1-300|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|period |list   |签到时间段 ，单个时间段不超过5分钟|从周天开始，每天最多12个时间段，例如：[&quot;11:01~11:05&quot;, &quot;10:01~10:05&quot;, &quot;9:01~9:05&quot;, &quot;8:01~8:05&quot;, &quot;7:01~7:05&quot;，...]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|


---

## 陌生人检测算法配置信息

> Page ID: 298031759

##### 陌生人检测数据返回
```JSON
    {
    &quot;status&quot;: 0,
    &quot;data&quot;: {
        &quot;enable&quot;: 1,
        &quot;pixel&quot;: 64,
        &quot;facial_database_personnel_report&quot;: 0,
        &quot;face_image_type&quot;:0,
        &quot;display_detection_box&quot;:1,
        &quot;event&quot;: {
            &quot;alarminterval&quot;: 0,
            &quot;audioalarmstatus&quot;: 1,
            &quot;speaker_repeat&quot;: 2,
            &quot;sound_file_no&quot;: 3,
            &quot;trig_light&quot;: 1,
            &quot;light_not_flicker&quot;: 0,
            &quot;trig_light_flicker&quot;: 0,
            &quot;trig_light_delay&quot;: 5,
            &quot;trig_record&quot;: 0,
			&quot;trig_obs_record&quot;: 0,
            &quot;trig_gb28181&quot;: 0,
            &quot;trig_gat1400&quot;: 1,
            &quot;trig_onvif&quot;: 0,
            &quot;similaritythreshold&quot;: 75,
            &quot;trig_alarm_out&quot;: [0,0]
        },
        &quot;timearea&quot;: {
            &quot;refer_width&quot;: 1920,
            &quot;refer_height&quot;: 1080,
            &quot;showarea&quot;: 2,
            &quot;all_time&quot;: 1,
            &quot;points&quot;: [&quot;0:0&quot;,&quot;1920:0&quot;,&quot;1920:1080&quot;,&quot;0:1080&quot;],
            &quot;period&quot;: [
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;],
                [&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;]
            ]
        }
    },
    &quot;msg&quot;: &quot;success&quot;
}
```

##### 陌生人检测返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |陌生人检测配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2--关闭|
|pixel |int   |人脸抓拍最小像素| 64-1080|
|facial_database_personnel_report |int   |在库人员上报|1--开启  0--关闭|
|face_image_type |int   |抓拍图像模式|0 人脸图 1 半身图|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|event |obj   |事件类型处理obj |同（人脸抓拍算法参数）|
|timearea |obj  |时间和区域类型处理obj |同（人脸抓拍算法参数）|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|similaritythreshold |int   |人脸识别相识度 |60-100区间|
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|




---

## 烟雾检测配置信息

> Page ID: 298031895

##### 烟雾检测  (只有烟雾算法 不含火焰检测)

```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;display_detection_box&quot;:1,
			&quot;smog_det_thres&quot;: 0.7,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 1,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;sound_file_no2&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 1,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```

##### 烟雾检测

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |烟雾检测配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|smog_det_thres |float   |检测灵敏度 |0.5 -0.9|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|




---

## AI检测图片裁剪

> Page ID: 298031916

[TOC]
```txt
	由于算法所需分辨率较小，目前的摄像机输出图像分辨率都非常大，
	就需要将图像进行等比缩放后送给AI算法，缩放后的图像比较小，这样就会导致检测距离变近
	对于有距离要求的场景，且只关心ROI区域的检测结果的，可以采用送检图像裁剪的方式，提升检测距离
	只支持高端相机的人脸抓拍，人脸识别算法
	原来的送检方式：2560*1440--缩放--&gt;1280*720--&gt;AI算法
	AI图片裁剪送检方式：2560*1440--裁剪--&gt;1280*720--&gt;AI算法
	优点：提升了检测距离
	弊端：非全屏检测，只能检测其中的1280*720的区域
```
####	一、AI检测图片裁剪配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=aicrop `
	  
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;aicrop_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```

##### 数据返回
```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;support&quot;: 1,
			&quot;refer_width&quot;:2560,
			&quot;refer_height&quot;: 1440,
			&quot;crop_width&quot;:1280,
			&quot;crop_height&quot;: 720,
			&quot;enable&quot;:1,
			&quot;crop_start_x&quot;: 100,
			&quot;crop_start_y&quot;: 100,
			&quot;display&quot;: 1
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |烟雾检测配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|support |int   |当前设备是否支持ai检测图片裁剪 |1--支持  0-不支持&lt;/br&gt;此接口无返回 或者此项为0 表示当前设备不支持裁剪|
|enable |int   |是否使能裁剪 |0 不使能  1-使能|
|refer_width |int   |裁剪前图片的宽| 像素点|
|refer_height |int   |裁剪前图片的高| 像素点|
|crop_width |int   |裁剪的图片的宽| 像素点|
|crop_height |int   |裁剪的图片的高| 像素点|
|crop_start_x |int   |开始裁剪的起始x坐标2像素对齐 &lt;br/&gt; crop_start_x + crop_width &lt; refer_width|像素点|
|crop_start_y |int   |开始裁剪的起始y坐标2像素对齐 &lt;br/&gt; crop_start_y + crop_height &lt; refer_height|像素点|
|display |int   |是否显示裁剪区域 |0 不显示  1-显示&lt;br/&gt; 需配合画框使能选项使用|

####	二、AI检测图片裁剪配置设置
 设置参数后 重启生效
##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_aicrop `

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;aicrop_set&quot;, //操作命令
		&quot;data&quot;:{
			&quot;enable&quot;:1,
			&quot;crop_start_x&quot;: 100,
			&quot;crop_start_y&quot;: 100,
			&quot;display&quot;: 1
		}
	}
```

##### 请求参数

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |-----   |
|enable |是   |int	|0--关闭      1--开启| |
|crop_start_x |是   |int	|裁剪起点x坐标|像素点 设置的像素点参考坐标为aicrop_get 中的refer_width &lt;/br&gt;crop_start_x + crop_width &lt; refer_width|
|crop_start_y |是   |list |裁剪起点y坐标|像素点 设置的像素点参考坐标为aicrop_get refer_height &lt;/br&gt;crop_start_y + crop_height &lt; refer_height|
|display |是   |int |是否显示裁剪区域 |0 不显示  1-显示&lt;br/&gt; 需配合画框使能选项使用|

##### HTTP返回示例
```JSON
  {
    &quot;status&quot;: 0,
    &quot;msg&quot; : &quot;success&quot;
  }
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
 {
     &quot;cmd&quot;:&quot;aicrop_set&quot;,//操作命令,与请求一致
     &quot;result&quot;:1,//0 失败  1成功
     &quot;data&quot;:{}
}
```
##### P2P返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

## 超员检测配置信息

> Page ID: 298031924

##### 超员检测

```JSON
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;display_detection_box&quot;:1,
			&quot;sensitivity&quot;:3,
			&quot;overcrowding_enable&quot;: 1,
			&quot;overcrowding_num&quot;:5,
			&quot;overcrowding_time&quot;:60,
			&quot;overcrowding_report_interval_time&quot;:30,
			&quot;overcrowding_event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 1,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;sound_file_no2&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 1,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;overcrowding_timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			},
			&quot;downsizing_enable&quot;: 1,
			&quot;downsizing_num&quot;:5,
			&quot;downsizing_time&quot;:60,
			&quot;downsizing_report_interval_time&quot;:30,
			&quot;downsizing_event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 1,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;sound_file_no2&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 1,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;downsizing_timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}

		},
		&quot;msg&quot;: &quot;success&quot;
	}
```

##### 超员检测

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |超员检测配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|sensitivity |int   |检测灵敏度 |1-5 5为灵敏 1为迟钝|
|overcrowding_enable |int   |超过额定人员告警开关 |1--开启  2-关闭|
|overcrowding_num |int   |最大人员数量 | 人员数量 1-10|
|overcrowding_time |int   |允许超过额定人员的最大时间 | 10-300 秒|
|overcrowding_report_interval_time |int   |检测到超员后告警时间（图片推送） | 5-300秒|
|overcrowding_event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|overcrowding_timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|
|downsizing_enable |int   |低于额定人员检测告警开关 |1--开启  2-关闭|
|downsizing_num |int   |最小人员数量 | 人员数量 1-10|
|downsizing_time |int   |允许低于额定人员的最大时间 | 10-300 秒|
|downsizing_report_interval_time |int   |检测到低于额定人员的告警时间（图片推送） | 5-300秒|
|downsizing_event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|downsizing_timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|





---

## 车型检测算法配置信息

> Page ID: 298031925

##### 车型检测算法数据返回
```
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;enable&quot;: 1,
			&quot;repeat_report&quot;: 1,
			&quot;repeat_report_interval_time&quot;: 4,
			&quot;vehc_type_array&quot; : [1,2,3,4,5,6,7,8,9],
			&quot;display_detection_box&quot;:1,
			&quot;full_capture_ignore_small&quot;:0,
			&quot;identify_license_plate&quot;:1,
			&quot;event&quot;: {
				&quot;alarminterval&quot;: 0,
				&quot;audioalarmstatus&quot;: 2,
				&quot;light_not_flicker&quot;: 0,
				&quot;sound_file_no&quot;: 30,
				&quot;speaker_repeat&quot;: 2,
				&quot;trig_alarm_out&quot;: [0, 0],
				&quot;trig_gat1400&quot;: 1,
				&quot;trig_gb28181&quot;: 0,
				&quot;trig_light&quot;: 2,
				&quot;trig_light_delay&quot;: 5,
				&quot;trig_light_flicker&quot;: 0,
				&quot;trig_onvif&quot;: 0,
				&quot;trig_obs_record&quot;: 0,
				&quot;trig_record&quot;: 0
			},
			&quot;timearea&quot;: {
				&quot;all_time&quot;: 1,
				&quot;period&quot;: [
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
					[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
				],
				&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
				&quot;refer_height&quot;: 1080,
				&quot;refer_width&quot;: 1920,
				&quot;showarea&quot;: 2
			}
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```
##### 车型检测算法返回参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |算法开关 |1--开启  2-关闭|
|repeat_report |int   |重复上报开关 |0--不重复    1--重复|
|repeat_report_interval_time |int   |重复上报间隔 |秒数 1-8|
|vehc_type_array |list   |需要输出的车辆类型 |0.自行车(暂不处理） １.公交车２.摩托车３.MPV４.皮卡车５.小汽车６.SUV７.三轮车８.大货车９.面包车|
|display_detection_box |int   |是否开启显示检测框|0 不显示 1 显示|
|full_capture_ignore_small |int   |是否开启快速抓拍输出|0 不开启 1 开启 ，开启后event timearea 中的 配置不生效 ，identify_license_plate 改为 1|
|identify_license_plate |int   |是否开启车牌识别|0 不开启 1 开启|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|timearea |obj  |时间和区域类型处理obj |同上人脸抓拍参数|

|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|

|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |检测区域参考宽 | 整型|
|refer_height |int   |检测区域参考高| 整型|
|showarea |int   |是否显示区域 | -1--不支持 1--显示 2--不显示|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |list   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|points |list   |检测区域坐标集合	|在参考分辨率下的区域坐标（4-8边形）仅支持一个|

---

## 人形算法参数配置

> Page ID: 298031926

##### 人形检测算法数据返回
```
	{
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			&quot;person_sensitivity&quot;: 3,
			&quot;vehicle_sensitivity&quot;: 3
		},
		&quot;msg&quot;: &quot;success&quot;
	}
```

##### 人形检测算法返回参数说明

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 	-1:请求失败|
|data |obj   |人脸识别配置信息|
|msg |string   |请求返回的提示信息|

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|person_sensitivity |int   |人形检测灵敏度 |1-5 5为灵敏 1为迟钝|
|vehicle_sensitivity |int   |车形检测灵敏度 |1-5 5为灵敏 1为迟钝 需要设备支持车辆检测（能力集 mult_invade=1）|



---

## AI事件本地存储记录获取

> Page ID: 298031927


[TOC]
#####	一、AI本地存储记录列表获取

##### HTTP请求
- ` Method: GET `
- ` Params: 见下方P2P信令传参 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=ai_local `

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;ai_local_get&quot;, //操作命令  
	   &quot;data&quot;:{
			&quot;event_start&quot; : 1747358162,
			&quot;event_stop&quot; : 1747358562,
			&quot;ai_type&quot; : 0    //ai 事件类型 对应ALARM_EVENT_TYPE，不传此字段，则获取全部事件类型
		}
	}
```
##### 数据返回
```JSON
	{
		&quot;ai_list&quot;:[
			{
				&quot;ai_type&quot; : 14,
				&quot;tm&quot; : 1747352242,
				&quot;ai_data&quot; : {
						&quot;small_img_path&quot; : &quot;&quot;,
						&quot;no_small&quot; : 1,
						&quot;big_img_path&quot; : &quot;/mnt/sdcard/20250511/ai_local/29108187231771_big.jpg&quot;
				}
			},
			{
				&quot;ai_type&quot; : 1,
				&quot;tm&quot; : 1747352242
			},
			....
		]
	}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|ai_list |list   |请求结果  ai事件集合|

|ai_list[i]|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|ai_type |int   |算法事件类型|算法枚举值|
|tm |int   |事件发生时间| 时间戳|
|ai_data |obj   |事件包含AI的存储数据|注当事件为移动侦测或者区域入侵时可能没有此数据 |

|ai_data|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|small_img_path |string   |小图图片地址| 无小图时，地址为空|
|no_small |int   |是否小有图| 0：有 1：没有|
|big_img_path |string   |大图图片地址| 本地AI存储图片路径地址|

#####	二、AI本地存储媒体列表获取（带图片）
##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;ai_local_media&quot;, //操作命令  
	   &quot;data&quot;:{
			&quot;event_start&quot; : 1747358162,
			&quot;event_stop&quot; : 1747358562,
			&quot;ai_type&quot; : 0    //ai 事件类型 对应ALARM_EVENT_TYPE，不传此字段，则获取全部事件类型
		}
	}
```

####数据返回同AI订阅方式一样，返回信令码为IOTYPE_LOCAL_AI_OBJECT_STREAM， 返回数据格式如下：
####[AI_LOCAL_OBJECT_HEAD_S + json +图片]
```JSON
	typedef struct {
        ALARM_EVENT_TYPE event;        
        UINT64  event_time;
        UINT32        end_flag;
        UINT32        body_len;
        UINT32        ext_len;
        UINT32        reserved[4];
	} AI_LOCAL_OBJECT_HEAD_S;
```
|AI_LOCAL_OBJECT_HEAD_S|类型|字段说明|取值范围|
|:-----  |:-----|-----                           |
|body_len |int   |json数据长度| json信息长度|
|ext_len |int   |图片数据长度| 无图片时，长度为0|



---

## AI算法通用配置

> Page ID: 298031935

[TOC]
#####	一、获取全景图支持的分辨率（能力集）

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=algodev`

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;algodev_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
{
        &quot;support_fbl&quot;:  [{
                        &quot;name&quot;: &quot;2560x1440&quot;,
                        &quot;value&quot;:        0
                }, {
                        &quot;name&quot;: &quot;1920x1080&quot;,
                        &quot;value&quot;:        1
                }, {
                        &quot;name&quot;: &quot;1280x720&quot;,
                        &quot;value&quot;:        2
                }]
}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|support_fbl |array   |支持的分辨率数组|

|support_fbl[i]|类型|说明|
|:-----  |:-----|-----                           |
|name |string   |分辨率|
|value |int   |分辨率 对应的值|



#####	二、获取当前配置信息

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=algocommon`

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;algocommon_get&quot;, //操作命令  
	   &quot;data&quot;:{}
	}
```
##### 数据返回
```JSON
{
	&quot;panoramic_fbl&quot;:0,
	&quot;targetgraph_quality&quot;:99,
	&quot;panoramic_quality&quot;:50,
	&quot;overlay_capture_time&quot;:1
}
```
##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|panoramic_fbl |int   |全景图分辨 对应support_fbl value|
|targetgraph_quality |int   |小图的编码质量 [10 -99]|
|panoramic_quality |int   |场景图的编码质量 [10 -99]|
|overlay_capture_time |int   |是否在全景图上面叠加抓拍时间 &lt;/br&gt;0 不叠加 1 叠加|

#####	三、设置配置信息

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_algocommon`

##### P2P信令
```JSON
	{
	   &quot;cmd&quot;:&quot;algocommon_set&quot;, //操作命令  
	   &quot;data&quot;:{
			&quot;panoramic_fbl&quot;:0,
			&quot;targetgraph_quality&quot;:99,
			&quot;panoramic_quality&quot;:50,
			&quot;overlay_capture_time&quot;:0
			//参数说明见  返回参数说明
	   }
	}
```
##### HTTP返回示例
```JSON
{
	&quot;status&quot;: 0,
	&quot;msg&quot; : &quot;success&quot;
}
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|





---

# SDK Windows Examples

## 搜索设备IP

> Page ID: 298031328

[TOC]

## 设备搜索信息结构体
```c
typedef struct 
{
	CHAR		ipaddr[32];			// ip地址
	CHAR		p2pid[32];			// p2pid号
	UINT8		devType;			// 设备类型: 0-卡片机, 1-摇头机, 2-鱼眼摄像机, 3-nvr...
	UINT32	 	devSubType;			// 子类型: 0-红外,1-全彩,2-双光源
    CHAR 		version[16];		// 版本号:  采用编译日期201612121816(年月日时分)
	CHAR 		model[16];			// 产品规格型号
    UINT32    	web_port;           // web端口
	CHAR		hid[20];    		// 硬件ID
	UINT8		pf_mac[6];    		// 平台mac地址
	CHAR		ext_data[248];		// 扩展数据
}VSOneDev;
```

## 搜索回调
```c
typedef VOID(VSAPI *vsnet_search_cb) (VSOneDev *one_dev, LPVOID context);
void dev_search_cb(VSOneDev *one_dev, LPVOID context)
{
	one_dev-&gt;ipaddr; // ipaddr
}
```
## 设备搜索
```c
此函数所接设备必须同在一个路由器下面,
且路由器与电脑的防火墙要允许广播包
 * @param	search_cb	搜索回调
 * @param	context	用户上下文
 * @return 	成功返回0; 失败返回错误码
 */
// 直接在合适位置调用该函数，设置回调函数，在回调中获取ip
VS_DLL_PORT INT32 VSAPI vsnet_search(vsnet_search_cb search_cb, LPVOID context);
```



---

## AI订阅与退订

> Page ID: 298031329

[TOC]

## 发送订阅或退订数据的命令码和结构体
```c
命令码：IOTYPE_USER_SUBSCRIBE_MSG_REQ == 0x08bc,
结构体：
typedef struct
{
	UINT32	event;		//SUBMSG_EVENT_ALL  = 0xffffffff, 订阅所有事件消息 
							//SUBMSG_EVENT_NONE = = 0x00000000，退订AI消息
	UINT32	reserved[4];	// SUBSCRIBE_MSG_E
}SMsgSubscribeReq;
```


## 订阅

&lt;font color='red'&gt;
**AI的订阅时可能推送的信息比较多，如果在观看视频的连接句柄上去接收AI信息，板端需要发送的信息太多会丢掉；尤其使用P2P在互联网上去更容易出现；正确的做法是在局域网下，瞬间不要有太多检测到的目标；可靠的做法，是配TF卡做缓存+GAT1400去接收，GAT1400可以将推失败的放TF卡上，事后做补传。**
**网络连接你可以想像成为一根水管，如果进水太大，只能丢弃（TCP会把链路缓存用完就发不出去了，UDP更像漏水），所以本质还是水管不够粗，另外一点就是摄像机的缓存是有限的，不能做太多重传；等到进水偏小或正常以后，链路恢复畅通，一切就正常化了**
&lt;/font&gt;


```c
SMsgSubscribeReq req;
memset(&amp;req, 0, sizeof(req));
req.event = SUBMSG_EVENT_ALL;
vsnet_send_msg(handle, IOTYPE_USER_SUBSCRIBE_MSG_REQ, (UINT8 *)&amp;req, sizeof(req));
```
## 退订
```c
SMsgSubscribeReq req;
memset(&amp;req, 0, sizeof(req));
req.event = SUBMSG_EVENT_NONE;
vsnet_send_msg(handle, IOTYPE_USER_SUBSCRIBE_MSG_REQ, (UINT8 *)&amp;req, sizeof(req));
```


## 摄像机回复的命令码和结构体
```c
命令码：IOTYPE_USER_SUBSCRIBE_MSG_RESP = 0x08bd,
typedef struct 
{
	INT32	result;	   // 成功返回0, &lt;0为失败
	UINT8	reserved[4];
}VSMsgGeneralResp;
```

## 接收AI信息
```c
通过vsnet_set_stream_callback(vsnet_msg_cb stream_cb)注册一个stream回调函数

typedef VOID (VSAPI *vsnet_msg_cb)(VSNET_HANDLE net_handle,
		UINT16 msg_code, //IOTYPE_OBJECT_STREAM = 0x0013, AI信息流类型  UINT8 *buf,  //OBJECT_HEAD_S+json+图片
		UINT32 len, 
		LPVOID context);

```
## 对像头
```c
typedef struct {
	ALARM_EVENT_TYPE event;
	UINT32	body_len;	// json串儿长度
	UINT32	ext_len;	// jpeg长度
	UINT32	reserved[4];
} OBJECT_HEAD_S;
将buf 偏移掉 一个OBJECT_HEAD_S的大小，取body_len长度则为json信息，剩余长度为图片信息
```
## 数据流回调函数
```c
void dev_stream_cb(VSNET_HANDLE net_handle, 
					UINT16 msg_code,   //IOTYPE_OBJECT_STREAM = 0x0013, AI信息流类型
					UINT8 *buf,  //OBJECT_HEAD_S+json+图片
					UINT32 len, 
					LPVOID context)
{
	switch(msg_code)
	{
		// AI数据流处理
		case IOTYPE_OBJECT_STREAM:{
				OBJECT_HEAD_S	*stObjectHead = (OBJECT_HEAD_S *)buf;
				CHAR			*json_doc = NULL;
				UINT8			*jpg_data = NULL;
				
				if (stObjectHead-&gt;body_len &gt; 0){	// 表示有描述json信息文档,stObjectHead-&gt;body_len表示json数据长度
					json_doc = (CHAR *)(buf + sizeof(OBJECT_HEAD_S)); // 带`\0`结束符,可直接使用
					// 有些报警信息可能stObjectHead-&gt;body_len=0,即没有结构化数据
				}
				if (stObjectHead-&gt;ext_len &gt; 0){	// 表示有jpg数据,stObjectHead-&gt;ext_len表示jpg数据大小(jpg_data开始)
					jpg_data = (UINT8 *)(buf + sizeof(OBJECT_HEAD_S) + stObjectHead-&gt;body_len);
					// 有些报警信息可能stObjectHead-&gt;ext_len=0,即没有图片
				}
				if (json_doc) {
					/* ALARM_EVENT_TYPE: stObjectHead-&gt;body_len大于0可以忽略这个字段,在json_doc里面有详细信息 */
					switch (stObjectHead-&gt;event){
					case AET_EVENT_FACE:	// 人脸检测
					case AET_EVENT_VEHICLE:// 车型检测
						// stObjectHead-&gt;body_len这个大于0的时候,实际上在json里面也有,详情参考[AI订阅与退订]说明
						;
					}
				}
			}
			
			break;
			
		default:
			break;
	}
}
```

---

## 对讲说明

> Page ID: 298031330

[TOC]

## 对讲的命令码和结构体
```c
命令码：IOTYPE_USER_IPCAM_SPEAKERSTART = 0x0350,
结构体：
typedef struct
{
	unsigned int  channel;		// Camera Index
	unsigned char streamNo;		// 码流编号:0-主码流,1-子码流
	unsigned char sendAudio;	// 发送音频:1-发送音频,0-不发送音频
	unsigned char reserved[2];
} SMsgAVIoctrlAVStream;

typedef struct _FRAMEINFO
{
	unsigned short codec_id;	// Media codec type defined in sys_mmdef.h,
								// MEDIA_CODEC_AUDIO_PCMLE16 for audio,
								// MEDIA_CODEC_VIDEO_H264 for video.
	unsigned char flags;		// Combined with IPC_FRAME_xxx.
	unsigned char cam_index;	// 0 - n

	unsigned char onlineNum;	// number of client connected this device
	unsigned char strm_id;		// 0 - n
	unsigned char reserve1[2];

	unsigned int utctime;	// utc时间,回放时,用为表示此帧的绝对时间
	unsigned int timestamp;	// Timestamp of the frame, in milliseconds

    // unsigned int videoWidth;
    // unsigned int videoHeight;

}FRAMEINFO_t;
```

## 打开对讲
```c
char	buff[1024];
SMsgAVIoctrlAVStream	*avStream = (SMsgAVIoctrlAVStream	*)buff;
FRAMEINFO_t *frame_t = (FRAMEINFO_t *)&amp;buff[sizeof(SMsgAVIoctrlAVStream)];
memset(avStream, 0x00, sizeof(SMsgAVIoctrlAVStream));
memset(frame_t, 0x00, sizeof(FRAMEINFO_t));
frame_t-&gt;codec_id = MEDIA_CODEC_AUDIO_G711A;
frame_t-&gt;flags = AUDIO_CHANNEL_MONO|(AUDIO_DATABITS_16 &lt;&lt; 1)|( AUDIO_SAMPLE_8K &lt;&lt; 2);
 
vsnet_send_msg(handle, IOTYPE_USER_IPCAM_SPEAKERSTART, (UINT8 *)buff, sizeof(SMsgAVIoctrlAVStream)+sizeof(FRAMEINFO_t));
```

## 关闭对讲
```c
命令码：	IOTYPE_USER_IPCAM_SPEAKERSTOP = 0x0351,

vsnet_send_msg(handle, IOTYPE_USER_IPCAM_SPEAKERSTOP, NULL, 0);
```

## 发送音频流
	
```c
命令码：IOTYPE_VOICE_STREAM = 0x0012,

UINT8 *data[320];	// 以320或者640长度一个包, 8K,16bit,单声音, G711A音频

// 发送对讲
vsnet_send_msg(handle, IOTYPE_VOICE_STREAM, data, 320);

```





---

## 重启与恢复出厂

> Page ID: 298031331

[TOC]

## 重启
```c
命令码：IOTYPE_USER_JSON_CONTROL_REQ 		= 0x08ba,
char json_body[] = &quot;{
	\&quot;cmd\&quot;:\&quot;restart\&quot;,
	\&quot;data\&quot;:\&quot;\&quot;
	}&quot;;
	
vsnet_send_msg(handle, IOTYPE_USER_JSON_CONTROL_REQ, (UINT8 *)json_body, UINT32(strlen(json_body) + 1));

```
## 恢复出厂
```c
命令码：IOTYPE_USER_JSON_CONTROL_REQ 		= 0x08ba,
char json_body[] = &quot;{
	\&quot;cmd\&quot;:\&quot;reset\&quot;,
	\&quot;data\&quot;:\&quot;\&quot;
	}&quot;;

vsnet_send_msg(handle, IOTYPE_USER_JSON_CONTROL_REQ, (UINT8 *)json_body, UINT32(strlen(json_body) + 1));
```



---

## 修改IP

> Page ID: 298031332

[TOC]

## 同网段
dst_ip：要修改ip的设备ip
json_body：修改的ip参数
```c
char dst_ip[] = &quot;192.168.1.100&quot;;
char json_body[] = &quot;{
	\&quot;cmd\&quot;:\&quot;ip_config\&quot;,
	\&quot;dev\&quot;:\&quot;eth0\&quot;,
	\&quot;dhcp\&quot;:0,
	\&quot;dns\&quot;:\&quot;114.114.114.144;8.8.8.8\&quot;,
	\&quot;gateway\&quot;:\&quot;192.168.1.1\&quot;,
	\&quot;ip\&quot;:\&quot;192.168.1.200\&quot;,
	\&quot;mac\&quot;:\&quot;00:00:00:00:00:00\&quot;,
	\&quot;netmask\&quot;:\&quot;255.255.255.0\&quot;
	}&quot;;

vsnet_send_json_msg(dst_ip, json_body);
```

##  不同网段
json_body：修改的ip参数。
mac地址为必填项，**使用十六进制，字母需要大写！**
不同网段需要将vsnet_send_json_msg()第一个参数设置为NULL，或广播地址255.255.255.255

```c
char json_body[] = &quot;{
	\&quot;cmd\&quot;:\&quot;ip_config_bc\&quot;,
	\&quot;dev\&quot;:\&quot;eth0\&quot;,
	\&quot;dhcp\&quot;:0,
	\&quot;dns\&quot;:\&quot;114.114.114.144;8.8.8.8\&quot;,
	\&quot;gateway\&quot;:\&quot;192.168.1.1\&quot;,
	\&quot;ip\&quot;:\&quot;192.168.1.200\&quot;,
	\&quot;mac\&quot;:\&quot;00:00:00:00:00:00\&quot;,
	\&quot;netmask\&quot;:\&quot;255.255.255.0\&quot;
	}&quot;;
	
vsnet_send_json_msg(NULL, json_body);
```

---

## 文件下载

> Page ID: 298031333

[TOC]

## 命令码
```c
IOTYPE_USER_IPCAM_RECORD_DOWNLOAD_REQ 		= 0x08a0,
IOTYPE_USER_IPCAM_RECORD_DOWNLOAD_RESP 		= 0x08a1,
```

## 下载请求信息结构体
```c
typedef struct
{
	INT32   result;			// 成功返回0; &lt;0为失败,失败则fileSize无效
	UINT8	reserved[4];
	UINT64	fileSize;		// 文件下载大小
	UINT64	file_id;		// VSMsgDownloadFileReq::file_id
}VSMsgDownloadFileResp;
```

## 发送下载请求
```c
VSMsgDownloadFileReq req;
memset(&amp;req, 0, sizeof(req));
req.filename = &quot;filename&quot;;
req.pos_offset = 0;
vsnet_send_msg(handle, IOTYPE_USER_IPCAM_RECORD_DOWNLOAD_REQ, (UINT8 *)&amp;req, sizeof(req));
```


## 接收消息回调中
```c
case IOTYPE_USER_IPCAM_RECORD_DOWNLOAD_RESP: {
    VSMsgDownloadFileResp *resp = (VSMsgDownloadFileResp *)buf;
    if (resp-&gt;result &gt;= 0)
	{
		// 这里做打开文件指针，准备写入文件操作等
	}

    break;
}
case IOTYPE_USER_FILE_TRANSMIT: {
    // 这里写入文件，buf为文件内容，len为数据长度
    break;
}
case IOTYPE_USER_FILE_TRANSMIT_RESP: {
    // 这里文件下载完毕，关闭文件指针
    break;
}

```

---

## 录像查询

> Page ID: 298031334

[TOC]

## 获取录像文件命令码
```c
IOTYPE_USER_IPCAM_LISTEVENT_FILE_REQ		= 0x089e,
IOTYPE_USER_IPCAM_LISTEVENT_FILE_RESP		= 0x089f,
```
## 获取录像文件请求结构体
```c
typedef struct
{
	unsigned int channel; 		// Camera Index
	STimeDay stStartTime; 		// Search event from ...
	STimeDay stEndTime;	  		// ... to (search event)
	unsigned char event;  		// event type, refer to ENUM_EVENTTYPE
	unsigned char status; 		// 0x00: Recording file exists, Event unreaded
								// 0x01: Recording file exists, Event readed
								// 0x02: No Recording file in the event
	unsigned char reserved[2];
}SMsgAVIoctrlListFileEventReq;
```


## 发送获取录像文件请求
```c
SMsgAVIoctrlListFileEventReq req;
memset(&amp;req, 0, sizeof(req));
// 开始时间
req.stStartTime.year = year;
req.stStartTime.month = month;
req.stStartTime.day = day;
req.stStartTime.hour = hour;
req.stStartTime.minute = minute;
req.stStartTime.second = second;
// 结束时间
req.stEndTime.year = year;
req.stEndTime.month = month;
req.stEndTime.day = day;
req.stEndTime.hour = hour;
req.stEndTime.minute = minute;
req.stEndTime.second = second;

vsnet_send_msg(handle, IOTYPE_USER_IPCAM_LISTEVENT_FILE_REQ, (UINT8 *)&amp;req, sizeof(req));
```


## 消息回调函数中
```c
case IOTYPE_USER_IPCAM_LISTEVENT_FILE_RESP: {
	SMsgAVIoctrlListFileEventResp *resp = (SMsgAVIoctrlListFileEventResp *)buf;
    for (int i = 0; i &lt; resp-&gt;count; ++i)
    {
        // 文件名
        resp-&gt;stEvent[i].fileName;
        // 文件对应的起止时间
        resp-&gt;stEvent[i].stBeginTime, resp-&gt;stEvent[i].stEndTime;
    }
    break;
}
```

---

## 回放控制

> Page ID: 298031335

[TOC]

## 回放控制命令码
```c
IOTYPE_USER_IPCAM_RECORD_PLAYCONTROL 		= 0x031A,
IOTYPE_USER_IPCAM_RECORD_PLAYCONTROL_RESP 	= 0x031B,
```

## 回放控制结构体
```c
typedef struct
{
	unsigned short year;	// The number of year.
	unsigned char month;	// The number of months since January, in the range 1 to 12.
	unsigned char day;		// The day of the month, in the range 1 to 31.
	unsigned char wday;		// The number of days since Sunday, in the range 0 to 6. (Sunday = 0, Monday = 1, ...)
	unsigned char hour;     // The number of hours past midnight, in the range 0 to 23.
	unsigned char minute;   // The number of minutes after the hour, in the range 0 to 59.
	unsigned char second;   // The number of seconds after the minute, in the range 0 to 59.
}STimeDay;

typedef struct
{
	unsigned int channel;       // Camera Index
	unsigned int command;       // play record command. refer to ENUM_PLAYCONTROL
	/**
			AVIOCTRL_RECORD_PLAY_START:  Param=1表示播放完了,自动播放下一文件;Param=0播放完了,将返回AVIOCTRL_RECORD_PLAY_END
	*/
	unsigned int Param;         // command param, that the user defined:
	STimeDay stTimeDay;         // Event time from ListEvent
	unsigned char seq;          // seq 回放请求序列号,每个文件在请求的时候,要设置不同的值,包括针对这个文件的一些播放控制, 尤其在播放端请求下一个文件时,可能回调里面还有一次播放的部分帧在网络协议栈时,这样可以在播放端丢掉一些不属于自己的流
	unsigned char reserved[3];
} SMsgAVIoctrlPlayRecord;
```

## 回放控制播放的命令码
```c
// AVIOCTRL Play Record Command
typedef enum
{
	AVIOCTRL_RECORD_PLAY_PAUSE			= 0x00,
	AVIOCTRL_RECORD_PLAY_STOP			= 0x01,
	AVIOCTRL_RECORD_PLAY_STEPFORWARD	= 0x02, //now, APP no use
	AVIOCTRL_RECORD_PLAY_STEPBACKWARD	= 0x03, //now, APP no use
	AVIOCTRL_RECORD_PLAY_FORWARD		= 0x04, //now, APP no use
	AVIOCTRL_RECORD_PLAY_BACKWARD		= 0x05, //now, APP no use
	AVIOCTRL_RECORD_PLAY_SEEKTIME		= 0x06, //now, APP no use
	AVIOCTRL_RECORD_PLAY_END			= 0x07,
	AVIOCTRL_RECORD_PLAY_START			= 0x10,
}ENUM_PLAYCONTROL;
```

## 请求开始回放
```c
SMsgAVIoctrlPlayRecord req;
memset(&amp;req, 0, sizeof(req));
req.command = AVIOCTRL_RECORD_PLAY_START;
req.stTimeDay = start_time;
req.seq = seq;
vsnet_send_msg(handle, IOTYPE_USER_IPCAM_RECORD_PLAYCONTROL, (UINT8 *)&amp;req, sizeof(req));
```

## 请求停止回放

```c
SMsgAVIoctrlPlayRecord req;
memset(&amp;req, 0, sizeof(req));
req.command = AVIOCTRL_RECORD_PLAY_STOP;
req.stTimeDay = start_time; // 请求的时间和开始回放请求时间相同
req.seq = seq; // 同开始回放请求的seq
vsnet_send_msg(handle, IOTYPE_USER_IPCAM_RECORD_PLAYCONTROL, (UINT8 *)&amp;req, sizeof(req));
```

## 设置回放回调函数
```c
通过vsnet_set_stream_callback(vsnet_msg_cb stream_cb)注册一个stream回调函数

typedef VOID (VSAPI *vsnet_msg_cb)(VSNET_HANDLE net_handle,
        UINT16 msg_code, //IOTYPE_PLAYBACK_STREAM = 0x0011, 回放流类型  UINT8 *buf，
        UINT32 len, 
        LPVOID context);

通过vsnet_set_callback(vsnet_msg_cb msg_cb, vsnet_event_cb event_cb)注册一个msg消息回调函数
typedef VOID (VSAPI *vsnet_msg_cb)(VSNET_HANDLE net_handle, 
		UINT16 msg_code, 
		UINT8 *buf, 
		UINT32 len, 
		LPVOID context);

```

## 帧信息头
```c
/* Audio/Video Frame Header Info */
typedef struct _FRAMEINFO
{
	unsigned short codec_id;	// Media codec type defined in sys_mmdef.h,
								// MEDIA_CODEC_AUDIO_PCMLE16 for audio,
								// MEDIA_CODEC_VIDEO_H264 for video.
	unsigned char flags;		// Combined with IPC_FRAME_xxx.
	unsigned char cam_index;	// 0 - n

	unsigned char onlineNum;	// 实时流,这个值表示同时客户端连接数; 针对回放这个值与SMsgAVIoctrlPlayRecord.seq的一致
	unsigned char strm_id;		// 0 - n
	unsigned char reserve1[2];

	unsigned int utctime;	// utc时间,回放时,用为表示此帧的绝对时间
	unsigned int timestamp;	// Timestamp of the frame, in milliseconds
}FRAMEINFO_t;
```

## 回放流回调函数
```c
void dev_stream_cb(VSNET_HANDLE net_handle, UINT16 msg_code, UINT8 *buf, UINT32 len, LPVOID context) {
    switch (msg_code)
    {
    case IOTYPE_PLAYBACK_STREAM: {
		FRAMEINFO_t	*frame_info = (FRAMEINFO_t*)buf; // 获取帧信息
		
		vsplay_input_data(handle, buf, len) // 调用vsplay_input_data设置回放流数据
											// handle为vsplay_create()创建的播放句柄，
											// 创建播放句柄后需要设置播放模式，调用vsplay_set_play_mode(handle, 1); 1为件流播放(即回放)
        break;
    }
    default:
        break;
    }
}
```

## 回放消息回调函数
```c
void dev_msg_cb(VSNET_HANDLE net_handle, UINT16 msg_code, UINT8 *buf, UINT32 len, LPVOID context) {
	case IOTYPE_USER_IPCAM_RECORD_PLAYCONTROL_RESP: {
        SMsgAVIoctrlPlayRecordResp *resp = (SMsgAVIoctrlPlayRecordResp *)buf;
        if (resp-&gt;command == AVIOCTRL_RECORD_PLAY_END &amp;&amp; (int)resp-&gt;result &gt;= 0) {
            // 回放结束标志
            // 在这里结束回放
        }
        break;
    }
	default:
        break;
    }
}
```

---

## 时间设置

> Page ID: 298031344

[TOC]

## 命令码
```cpp
IOTYPE_USER_IPCAM_SET_DEVICETIME_REQ        = 0x816,	// 设置机器的本地时间
IOTYPE_USER_IPCAM_SET_DEVICETIME_RESP       = 0x817,
```
## 设置时间结构体
```cpp
// 设置时间结构体
// 年，月，日，时，分，秒均为UTC时间
typedef struct{
    unsigned short year;
    unsigned char month;
    unsigned char day;
    unsigned char hour;
    unsigned char minute;
    unsigned char second;
	unsigned char nIsSupportSync;  /* 1:保存时区并启用nGMTOffset的值; 0:不保存时区并忽略nGMTOffset,使用摄像机本体的时区 */
	int nGMTOffset;  // 时区转换成分钟,如+8区就是8*60=480
}SMsgAVIoctrlSetDeviceTimeReq,
```
**其中year,month,day,hour,minute,second是将时间转换为0时区的时间**, 

## 发送请求
GMT为时区分钟数，取值范围-720到720
```cpp
        SMsgAVIoctrlSetDeviceTimeReq req;
        memset(&amp;req, 0, sizeof(req));
        req.year = year;
        req.month = month;
        req.day = day;
        req.hour = hour;
        req.minute = minute;
        req.second = second;
        req.nIsSupportSync = 1;
        req.nGMTOffset = GMT;

        vsnet_send_msg(handle, IOTYPE_USER_IPCAM_SET_DEVICETIME_REQ, (UINT8 *)&amp;req, sizeof(req));

```


---

## 手动抓拍

> Page ID: 298031413

[TOC]

## 发送命令码和结构体
```c
命令码：
IOTYPE_USER_CAPTURE_CONTROL_REQ = 0x08c0,

结构体：
SMsgAVIoctrlAVStream

```


## 发送指令
```c
SMsgAVIoctrlAVStream   req;

memset(&amp;req, 0x00, sizeof(req));
req.channel = 0;
fnRet = vsnet_send_msg(handle, IOTYPE_USER_CAPTURE_CONTROL_REQ, (UINT8*)&amp;req, sizeof(req));
```



## 摄像机回复的命令码和结构体
```c
命令码：
// VSMsgCaptureResp
IOTYPE_USER_CAPTURE_CONTROL_RESP = 0x08c1,

/**
 * 手动抓拍响应
 */
typedef struct 
{
    INT32   result;         // 成功返回0, &lt;0为失败    
    UINT32  img_size;       // 图片大小
    UINT32  img_width;      // 图片宽
    UINT32  img_height;     // 图片高  
    UINT32  capture_time;   // 抓拍时间 utc_time
    UINT16  img_codecid;    // MEDIA_CODEC_VIDEO_JPEG
    UINT8   reserved[2];    
}VSMsgCaptureResp;
```

## 接收指令响应
```c
通过vsnet_set_stream_callback(vsnet_msg_cb stream_cb)注册一个回调函数
```

## 指令响应示例
```c
/**
 * 请不要在回调里面进行任何的耗时处理，底层的网络处理线程使用的是固定线程池技术，回调中阻塞会影响接收的效率
 */
VOID VSAPI dev_msg_cb(VSNET_HANDLE net_handle, UINT16 msg_code, UINT8* buf, UINT32 len, LPVOID context)
{
	switch(msg_code)
	{
		//其它消息处理
		...
		
		// 手动抓拍响应
    	case IOTYPE_USER_CAPTURE_CONTROL_RESP:{
			VSMsgCaptureResp    *resp = (VSMsgCaptureResp *)buf;


			if (resp-&gt;result == VS_NET_SUCC){  
				UINT8   *jpg_buf = buf+sizeof(VSMsgCaptureResp);
				char    jpg_file[128];            
				FILE    *fjpg;
				struct tm   capt_tm; 
				time_t      capture_time = resp-&gt;capture_time;

				localtime_r(&amp;capture_time, &amp;capt_tm);


				LOGI_NF(&quot;手动抓拍成功, 格式=%#hx, size=%u, width=%u, heigth=%u, time=%u\r\n&quot;, 
					resp-&gt;img_codecid, resp-&gt;img_size, resp-&gt;img_width, resp-&gt;img_height, resp-&gt;capture_time);


				if (access(&quot;/tmp/img&quot;, R_OK))
					mkdir(&quot;/tmp/img&quot;, 0666);
				sprintf(jpg_file, &quot;/tmp/img/%04d-%02d-%02d_%02d-%02d-%02d.jpg&quot;, 
					capt_tm.tm_year + 1900, capt_tm.tm_mon + 1, capt_tm.tm_mday, 
					capt_tm.tm_hour, capt_tm.tm_min, capt_tm.tm_sec);
				fjpg = fopen(jpg_file, &quot;wb+&quot;);
				if (fjpg != NULL) {
					fwrite(jpg_buf, resp-&gt;img_size, 1, fjpg);
					fclose(fjpg);
				}            
			}		
			else{
				LOGI_NF(&quot;手动抓拍失败, 错误码=%d\r\n&quot;, resp-&gt;result);
			}
		}
		break;
			
		default:
			break;
	}
}
```

---

## 固件升级

> Page ID: 298031462

[TOC]
## 文件上传命令码
```c
//文件上传请求命令码
IOTYPE_USER_IPCAM_UPLOAD_UPDATE_FILE_REQ 	= 0x08a2,
// 文件上传请求响应命令码
IOTYPE_USER_IPCAM_UPLOAD_UPDATE_FILE_RESP 	= 0x08a3,

// 文件传输
IOTYPE_USER_FILE_TRANSMIT					= 0x08b8,
IOTYPE_USER_FILE_TRANSMIT_RESP				= 0x08b9,
```

## 上传的文件格式
```c
typedef enum {
	// 未知类型,此类型不处理的
	VS_UPF_UNKNOW = 0,
	// 固件
	VS_UPF_FIRMWARE = 1,
	// 音乐文件
	VS_UPF_MUSIC,
	// 报警声音文件
	VS_UPF_ALARM_SOUND,
	// 普通数据文件
	VS_UPF_DAT,
	// 音频文件
	VS_UPF_SOUND_FILE,
}VS_UPFILE_TYPE;
```

## 文件上传请求结构体
```c
typedef struct
{
	INT32	  upf_type;			// 文件类型:VS_UPFILE_TYPE
	CHAR 	  fileName[128];	   // 文件名：仅文件名
	UINT64 	pos_offset;		  // 断点续传: 从开始上传使用0, 客户端向板端发送时忽略
	UINT64 	fileSize;			// 文件下载大小(剩余大小,=文件总尺寸-OffSet)
}VSMsgUploadFileReq;
```

## 文件上传响应结构体
```c
typedef struct
{
	INT32    result;	 	// 成功返回0, &lt;0为失败
	UINT8	reserved[4];
	UINT64   file_id;		// 上传文件ID: 后面传输内容都要使用到 
}VSMsgUploadFileResp;
```

## 文件上传结构体
```c
typedef struct
{
	UINT8	flag_end;		// 文件结束标志:1表示结了
	UINT64	file_id;		// 文件ID: 后面传输内容都要使用到 
}VSMsgFileTransmit;
```

## 自定义的保存上传文件信息结构体
```c
struct{
	QString    filename;	// 选择的上传文件名
	bool	   working; 	// 上传工作中
	bool	   stop;    	// 停止标示
	UINT32	 filesize;    // 选择的上传文件总大小
	UINT32 	percent; 	// 上传文件的进度，需要自行计算（计算方法在后面给出），可用作进度条显示，若不需要可忽略
	UINT64 	file_id; 	// file_id
} upload;
```

## 发送文件上传请求
```c
VSMsgUploadFileReq req;
memset(&amp;req, 0, sizeof(req));

req.fileName = fileName; // 发送上传请求必须项
if (文件名 == &quot;day.bin&quot;
	|| 文件名 == &quot;night.bin&quot;
	|| 文件名 == &quot;night_color.bin&quot;)
        req.upf_type = VS_UPF_DAT; // 文件类型，发送上传请求必须项
else if (文件全后缀 == &quot;bin&quot;)
	req.upf_type = VS_UPF_FIRMWARE;
else if (文件全后缀 == &quot;pcm&quot; || 文件全后缀 == &quot;alaw&quot;)
	req.upf_type = VS_UPF_MUSIC;
else if (文件全后缀 == &quot;dat&quot; || 文件全后缀 == &quot;mp3&quot;)
	req.upf_type = VS_UPF_DAT;
else
    // 提示文件格式不正确，不能上传

req.fileSize = 上传的文件大小; // 发送上传请求必须项

vsnet_send_msg(handle, IOTYPE_USER_IPCAM_UPLOAD_UPDATE_FILE_REQ, (UINT8 *)&amp;req, sizeof(req));
```

## 指令响应示例
```c
/**
 * 请不要在回调里面进行任何的耗时处理，底层的网络处理线程使用的是固定线程池技术，回调中阻塞会影响接收的效率
 */
VOID VSAPI dev_msg_cb(VSNET_HANDLE net_handle, UINT16 msg_code, UINT8* buf, UINT32 len, LPVOID context)
{
    switch(msg_code)
    {
        //其它消息处理
        ...

        // 上传文件请求响应
        case IOTYPE_USER_IPCAM_UPLOAD_UPDATE_FILE_RESP:{
            VSMsgUploadFileResp *resp = (VSMsgUploadFileResp *)buf;
			// 下面开始上传文件，防止在回调中处理耗时或阻塞，可另起线程进行上传
			// 修改自定义结构体种的状态
			upload.working = true;
			upload.stop = false;

			// 每次传输的块大小
			const UINT32 SND_FILE_BUF_SIZE = 200 &lt;&lt; 10;
			
			// 每次从文件中读取的大小
			INT32	fnRet;
			
			// 申请一块内存保存从文件中读取的数据
			UINT8 	*ptr = (UINT8 *)malloc(sizeof(VSMsgFileTransmit) + SND_FILE_BUF_SIZE);
			
			// 需要添加一个头部信息在读取文件数据前
			VSMsgFileTransmit *file_tran = (VSMsgFileTransmit *)ptr;
			
			// 打开文件指针
			FILE    *pfile = fopen(upload.filename.toLocal8Bit(), &quot;rb&quot;);
			
			// 用于记录已读取发送的数据大小，可用于计算上传进度
			UINT32  sended = 0;
			
			memset(file_tran, 0, sizeof(VSMsgFileTransmit));
			file_tran-&gt;file_id = resp.file_id;
			
			// 没有手动停上传和读取到文件尾，将一直读取文件发送
			while (!upload.stop &amp;&amp; !feof(pfile)) {
			
				// 从文件种读取SND_FILE_BUF_SIZE大小的数据
				fnRet = (INT32)fread(ptr + sizeof(VSMsgFileTransmit), 1, SND_FILE_BUF_SIZE, pfile);
				
				if (fnRet &gt;= 0) {
					// 记录读取发送的数据大小
					sended += fnRet;
					// 从文件种读取的数据大小和设置的大小不同，设置上传结束标志位为1
					file_tran-&gt;flag_end = fnRet != SND_FILE_BUF_SIZE ? 1 : 0;
					// 发送文件数据
					int result = vsnet_send_msg(handle, IOTYPE_USER_FILE_TRANSMIT, ptr, fnRet + sizeof(VSMsgFileTransmit));
					
					// 发送失败，退出循环，不再继续读取文件发送
					if (result != 0)
						break;
						
					// 发送成功，计算已上传的数据进度upload
					uplaod.percent = sended * 100 / upload.filesize;
				} else {
					// 发送文件上传结束
					VSMsgFileTransmitResp trans_resp;
					memset(&amp;trans_resp, 0, sizeof(trans_resp));

					trans_resp.file_id = resp.file_id;
					trans_resp.result = false;
					vsnet_send_msg(handle, IOTYPE_USER_FILE_TRANSMIT_RESP, (UINT8 *)&amp;trans_resp, sizeof(trans_resp));
					break;
				}
		}
		// 释放内存
		free(ptr);
		// 关闭文件指针
		fclose(pfile);
		// 修改自定义结构体中的状态
		upload.working = false;
	}
	break;

	default:
		break;
    }
}
```


---

## 人脸库配置

> Page ID: 298031766

[TOC]
人脸入库，删除，清空功能
只支持动态加载方式的 人脸识别 陌生人识别 人脸签到算法
入库人脸要求 jpeg 格式的图片，图片分辨率建议小于 1920*1080 ，图像五官清晰无遮挡 ，类似证件照，图片大小不超过2M
## 命令码
```ini
IOTYPE_USER_AI_JSON_CONTROL_REQ        = 0x08be,//AI的json控制
IOTYPE_USER_AI_JSON_CONTROL_RESP       = 0x08bf,
```
## 指令说明(老版本 2025-12-16之前)
```json
{&quot;name&quot;:&quot;testname&quot;,&quot;cmd&quot;:&quot;add&quot;,&quot;jpg_size&quot;:123456}

```
###字段定义
| 名称  | 标识符  |  类型 |  必选/可选 |  备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  人员名称 | name  |  string |  R | 最长64字符 唯一id |
|  指令码 | cmd  |  string |  R |  add：增加/修改一张人脸  人员id存在就修改 否则为增加     del： 删除一张人脸 删除人员id为name的人脸  clear： 清空人脸库|
|  jpg图片大小 | jpg_size  |  int |  R | jpg图片大小 单位为Byte ，cmd 为add时候有效，其他值填0 |

## 指令说明(新版本 2025-12-16之后)
```json
{&quot;person_id&quot;:&quot;0001&quot;,&quot;person_name&quot;:&quot;testname&quot;,&quot;group_id&quot;:&quot;testgroup&quot;,&quot;person_type&quot;:0,&quot;cmd&quot;:&quot;add&quot;,&quot;jpg_size&quot;:123456}
```
###字段定义
| 名称  | 标识符  |  类型 |  必选/可选 |  备注|
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  人员id | person_id  |  string |  R | 最长64字符 唯一id |
|  人员名称 | person_name  |  string |  O | 最长64字符 |
|  人员所属组 | group_id  |  string |  O | 最长64字符 |
|  人员类型 | person_type  |  int |  O | 0 白名单 1黑名单 |
|  指令码 | cmd  |  string |  R |  add：增加/修改一张人脸  人员id存在就修改 否则为增加     del： 删除一张人脸 删除人员id为name的人脸  clear： 清空人脸库|
|  jpg图片大小 | jpg_size  |  int |  R | jpg图片大小 单位为Byte ，cmd 为add时候有效，其他值填0 |


## 发送请求 （老版本 2025-12-16之前）
```cpp
	//add指令 发送的数据是 json+\0+jpg
	//del clear 只用发送json数据
	
	//add发送示例 伪代码
	char *json = {&quot;name&quot;:&quot;testname&quot;,&quot;cmd&quot;:&quot;add&quot;,&quot;jpg_size&quot;:123456}
	UINT8 *ptr = json+\0+jpg；
	vsnet_send_msg(handle, IOTYPE_USER_AI_JSON_CONTROL_REQ, ptr, strlen(json)+1+jpg_len);
	//del发送示例 伪代码
	char *json = {&quot;name&quot;:&quot;testname&quot;,&quot;cmd&quot;:&quot;del&quot;,&quot;jpg_size&quot;:0}+\0
	vsnet_send_msg(handle, IOTYPE_USER_AI_JSON_CONTROL_REQ, json, strlen(json)+1);
	//clear发送示例 伪代码
	char *json = {&quot;name&quot;:&quot;&quot;,&quot;cmd&quot;:&quot;clear&quot;,&quot;jpg_size&quot;:0}
	vsnet_send_msg(handle, IOTYPE_USER_AI_JSON_CONTROL_REQ, json, strlen(json)+1);
```
## 发送请求 （新版本 2025-12-16之后）
```cpp
	//add指令 发送的数据是 json+\0+jpg
	//del clear 只用发送json数据
	//add发送示例 伪代码
	char *json = {&quot;person_id&quot;:&quot;0001&quot;&quot;person_name&quot;:&quot;testname&quot;,&quot;group_id&quot;:&quot;testgroup&quot;,&quot;person_type&quot;:0,&quot;cmd&quot;:&quot;add&quot;,&quot;jpg_size&quot;:123456}
	UINT8 *ptr = json+\0+jpg；
	vsnet_send_msg(handle, IOTYPE_USER_AI_JSON_CONTROL_REQ, ptr, strlen(json)+1+jpg_len);
	//del发送示例 伪代码
	char *json = {&quot;person_id&quot;:&quot;0001&quot;,&quot;cmd&quot;:&quot;del&quot;,&quot;jpg_size&quot;:0}+\0
	vsnet_send_msg(handle, IOTYPE_USER_AI_JSON_CONTROL_REQ, json, strlen(json)+1);
	//clear发送示例 伪代码
	char *json = {&quot;cmd&quot;:&quot;clear&quot;,&quot;jpg_size&quot;:0}
	vsnet_send_msg(handle, IOTYPE_USER_AI_JSON_CONTROL_REQ, json, strlen(json)+1);
```


---

## 透明串口消息订阅与退订

> Page ID: 298031936

## 发送订阅或退订数据的命令码和结构体
```c
命令码：IOTYPE_USER_SUBSCRIBE_UART_REQ = 0x08c4,
结构体：
typedef struct
{
	UINT8	subscribe;
	UINT8	reserved[3];	// SUBSCRIBE_MSG_E
}SMsgSubscribeUartReq;
```
## 订阅
```c
SMsgSubscribeUartReq req;
memset(&amp;req, 0, sizeof(req));
req.subscribe = 1;
vsnet_send_msg(handle, IOTYPE_USER_SUBSCRIBE_UART_REQ, (UINT8 *)&amp;req, sizeof(req));
```
## 退订
```c
SMsgSubscribeUartReq req;
memset(&amp;req, 0, sizeof(req));
req.subscribe = 0;
vsnet_send_msg(handle, IOTYPE_USER_SUBSCRIBE_UART_REQ, (UINT8 *)&amp;req, sizeof(req));
```

## 摄像机回复的命令码和结构体
```c
命令码：IOTYPE_USER_SUBSCRIBE_UART_RESP = 0x08c5,
typedef struct 
{
	INT32	result;	   // 成功返回0, &lt;0为失败
	UINT8	reserved[4];
}VSMsgGeneralResp;
```

## 接收串口订阅信息
```c
通过vsnet_set_stream_callback(vsnet_msg_cb stream_cb)注册一个stream回调函数

typedef VOID (VSAPI *vsnet_msg_cb)(VSNET_HANDLE net_handle,
		UINT16 msg_code, //IOTYPE_TRAN_UART_OBJECT_STREAM = 0x0015, 串口返回信息流类型  UINT8 *buf,  //UART_DATA_OBJECT_HEAD_S+串口字节流数据
		UINT32 len, 
		LPVOID context);

```

## 串口数据对象头
```c
// uart数据对像头
typedef struct {
	UINT32	body_len;	//串口返回字节流数据长度
	UINT32	reserved[4];
} UART_DATA_OBJECT_HEAD_S;
将buf 偏移掉 一个UART_DATA_OBJECT_HEAD_S的大小，取body_len长度则为串口返回字节流数据

void dev_stream_cb(VSNET_HANDLE net_handle, 
					UINT16 msg_code,   //IOTYPE_OBJECT_STREAM = 0x0013, AI信息流类型
					UINT8 *buf,  //OBJECT_HEAD_S+json+图片
					UINT32 len, 
					LPVOID context)
{
	switch(msg_code)
	{
		// 串口数据流处理
		case IOTYPE_TRAN_UART_OBJECT_STREAM:{
				UART_DATA_OBJECT_HEAD_S	*stObjectHead = (UART_DATA_OBJECT_HEAD_S *)buf;
				UINT8			*uart_data = buf+sizeof(UART_DATA_OBJECT_HEAD_S);	// 字节流位置
				
				if (stObjectHead-&gt;body_len &gt; 0){	// stObjectHead-&gt;body_len表示串口数据长度
					// 串口数据处理
					for (int i = 0; i &lt; stObjectHead-&gt;body_len; i++) {
						printf(&quot;%02hhX &quot;, uart_data[i]); // 收到的字节转成16进制显示
						if ((i+1)%8 EQU 0) // 每8个字节换行显示
							printf(&quot;\n&quot;);
					}
				}
			}
			
			break;
			
		default:
			break;
	}
}
```
## P2P发送串口数据到摄像机串口

```c
命令码：IOTYPE_USER_TRAN_UART_SEND_REQ = 0x08c2,
串口数据：
CONST UINT8 	uart_test_cmd[8] = {0x01,0x03,0x00,0x01,0x00,0x05,0xD4,0x09};	//仅示例
vsnet_send_msg(handle, IOTYPE_USER_TRAN_UART_SEND_REQ, (UINT8 *)uart_test_cmd, sizeof(uart_test_cmd));

```


---

## 强制产生关键帧视频

> Page ID: 298031942

[TOC]

此功能有一定的前提, 1.固件必须在2025年9月25号以后,之前的版本不支持这个指令.
应用场景是已经打开了主码流或子码流, 但是设置的GOP(即关键帧间隔时间过长), 不能立即显示; 客户端在调用IOTYPE_USER_IPCAM_START其实板端是立即产生了I帧的,所以,不需要再额外调用这个,**I帧由于比较大,不是必须的情况下,不要调用**

## 发送命令码和结构体
```c
命令码：
IOTYPE_USER_IPCAM_IFRAME					= 0x0200,

结构体：
SMsgAVIoctrlAVStream

```


## 发送指令
```c
SMsgAVIoctrlAVStream   req;

memset(&amp;req, 0x00, sizeof(req));
req.streamNo = 0; // 主码流为0, 子码流为1, 依此类推
fnRet = vsnet_send_msg(handle, IOTYPE_USER_IPCAM_IFRAME, (UINT8*)&amp;req, sizeof(req));
```
板端不会返回任何信息,如果已经是打开了视频流的连接,调用此接口可以立即收到一个I帧,如果没有打开视频,板端会忽略这个请求;



---

# Ground Lock MQTT Protocol

## MQTT地锁控制总概

> Page ID: 298031336


[TOC]
##### MQTT协议简述
- ` 相机和平台之间的通信采用MQTT协议，报文的结构使用JSON格式 (需客户自己架设MQTT服务器以及相关协议功能开发)`

- ` 相机上报车位车辆驶入驶出信息给平台，平台根据上报车牌信息决定是否控制升锁或落锁`

- ` 相机与平台之间的通信主要分为以下三种类型： `

	- 1、设备向平台主动上报消息，如车辆驶入信息（车牌、时间、现场图片）
	
	- 2、平台向设备发送控制指令消息，设备处理完毕后必须发送返回信息，超时未接收到返回信息则视为控制信息发送失败
	
	- 3、设备响应平台指令返回信息，平台收到响应指令，通过对响应指令的解析判断操作成功或失败



---

## MQTT协议消息Topic、消息Body

> Page ID: 298031337


[TOC]


##### 1、设备向平台主动上报消息(简称:D2P)

- ` Topic：/upload_ds/相机硬件ID `

##### 上报参数
|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|msgId |是   |string |每个设备保持消息id唯一性，建议使用长度不等于32位，防止和平台下发msgId相同|
|operationType |是   |string |上报类型 |
|sendTime |是   |string |设备发送时间戳，标准北京时间，格式：20210310 |
|data |是   |obj |根据不同功能接口定义不同，[详见《MQTT平台功能列表》](http://192.168.1.3:81/web/#/601874687/298031338 &quot;Heading link&quot;)	|


##### 2、平台向设备发送指令消息(简称:P2D)

- ` Topic：/push_ds/相机硬件ID `
- ` 注：设备处理完毕后必须发送返回信息，否则平台认为此次指令处理失败 `

##### 上报参数
|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|msgId |是   |string |平台保持消息id唯一性，设备响应消息中需要回传同样id|
|operationType |是   |string |上报类型 |
|sendTime |是   |string |设备发送时间戳，标准北京时间，格式：20210310 |
|data |是   |obj |根据不同功能接口定义不同，[详见《MQTT平台功能列表》](http://192.168.1.3:81/web/#/601874687/298031338 &quot;Heading link&quot;) |

##### 3、设备响应平台指令返回信息(简称:DAP)

- ` Topic：/reply_ds/相机硬件ID `

##### 上报参数
|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|msgId |是   |string |响应消息对应的msgId|
|operationType |是   |string |响应消息对应的operationType |
|sendTime |是   |string |设备发送时间戳，标准北京时间，格式：20210310 |
|data |是   |obj |根据不同功能接口定义不同，[详见《MQTT平台功能列表》](http://192.168.1.3:81/web/#/601874687/298031338 &quot;Heading link&quot;) |


---

## MQTT平台功能列表定义

> Page ID: 298031338


[TOC]
#####	一、抓拍照片（P2D）
- ` operationType : CAPTURE_PHOTO`
- ` data : 无`

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|imageData |string   |图片Base64编码|

#####	二、设备运行状态主动上报（D2P）
- ` operationType : DEVICE_STATUS_UPLOAD`
- ` data : 见下方请求参数说明参数`

##### 说明参数 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|netState |int   |地锁在线状态，0：未知、1：在线、2：离线|
|nLocation |int   |车位号，双车位时，0：未知、1：左车位、2：右车位；单车位时，3：单车位|
|lockStatus |string   |地锁上传信息|
|carNumber |string   |车牌号，无车传空|
|imageData |string   |图片Base64编码|

#####	三、车牌车位状态识别（D2P）

- ` operationType : PARKING_STATUS_UPLOAD`
- ` data : 见下方请求参数说明参数`

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|license |string   |车牌号|
|nLocation |int   |车位号，双车位时，0：未知、1：左车位、2：右车位；单车位时，3：单车位|
|color |int   |车牌颜色（[详见附录](http://192.168.1.3:81/web/#/601874687/298031339 &quot;Heading link&quot;)）|
|nConfidence |int   |车牌识别置信度 0-100|
|nBright |int   |亮度评价-暂未使用|
|nDirection |int   |运动方向（[详见附录](http://192.168.1.3:81/web/#/601874687/298031339 &quot;Heading link&quot;)）|
|nCarColor |int   |车辆颜色（[详见附录](http://192.168.1.3:81/web/#/601874687/298031339 &quot;Heading link&quot;)）|
|imageData |string   |图片Base64编码|

#####	三、车牌车位状态识别（P2D）

- ` operationType : LOCK_CONTROL`
- ` data : 见下方请求参数说明参数`

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|lockNum |string   |地锁编号，由平台录入|
|lockState |int   |控制类型，1：升起；2：下降（无车时自动升起）；3：下降（无车时不自动升起）|

##### 相机返回参数说明 （DAP）

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|errorCode |string   |0:成功  -1:失败|
|errorDesc |string   |错误描述|


---

## 附录

> Page ID: 298031339


[TOC]
##### 附录 

- ` 车牌颜色定义`

|颜色值|说明|
|:-----  |:-----|
|0 |未知|
|1 |蓝色|
|2 |黄色|
|3 |白色|
|4 |黑色|
|5 |绿色|
|6 |黄蓝色 大型新能源车牌颜色|

- ` 运动方向定义`

|值|说明|
|:-----  |:-----|
|0 |未知|
|1 |从右往左|
|2 |从左到右|
|3 |从上到下（远离相机)|
|4 |从下到上(靠近相机)|
|5 |入场（车身大部分已进入车位）|

- ` 车辆颜色定义`

|颜色值|说明|
|:-----  |:-----|
|0 |其他|
|1 |红色|
|2 |黄色|
|3 |蓝色|
|4 |绿色|
|5 |紫色|
|6 |粉色|
|7 |棕色|
|8 |白色|
|9 |黑色|
|10 |银灰色|
|11 |青色|


---

# GA/T1400 Extended Protocol

## API概览

> Page ID: 298031360

[TOC]

[GAT1400官方文档](http://yctx.vs98.com:880/doc/gb28181_gat1400.zip &quot;GAT1400官方文档&quot;)
[GAT1400 参考demo(php)](http://yctx.vs98.com:880/sdk/gat1400.zip &quot;GAT1400参考demo&quot;)
[GAT1400 docker部署包](http://yctx.vs98.com:880/sdk/docker-gat1400.tgz &quot;GAT1400 docker&quot;)
[GAT1400火焰抓包示例](http://yctx.vs98.com:880/doc/gat1400_fire.pcap &quot;GAT1400火焰抓包示例&quot;)

- 基于1400协议扩展:离岗检测数据上报，火焰检测数据上报，消防通道占用检测数据上报。扩展人脸识别图片入库接口
本文档中所有的接口是1400服务端去实现，设备去请求该接口
 ## API概览

|  功能   | URL  | 请求方法  |
| ------------ | ------------ | ------------ |
|火焰/烟雾检测数据上报(新增)  |  /VIID/Extend/Fire | POST |
|离岗检测数据上报(新增)  | /VIID/Extend/OffDuty | POST  |
|消防通道占用检测数据上报（新增）  | /VIID/Extend/FPOD | POST  |
|指令查询(扩展)  | /VIID/System/Keepalive | POST  |
|同步人脸库（新增）  | /VIID/Extend/ExtendFaceList | GET  |
|指令执行状态上报（新增）  | /VIID/Extend/ExtendConfirm | POST  |
|设备人脸库上报（新增）  | /VIID/Extend/ExtendReportFaceList | POST  |
|人脸识别数据上报（新增） | /VIID/Extend/ExtendFaceRecognition | POST  |
|全景抓拍数据上报（新增）  |/VIID/Extend/SceneCapture | POST  |
|安全帽检测数据上报（新增）  | /VIID/Extend/ExtendHelmet | POST  |



---

## 火焰/烟雾检测

> Page ID: 298031361

[TOC]


## 火焰/烟雾检测数据上报
 ###接口概览
接口地址:`/VIID/Extend/Fire`

 |  方法 | 查询字符串|消息体|返回结果|
| ------------ | ------------ | ------------ | ------------ |
|  POST |  无 |  &lt;FireListObject&gt; |  &lt;ResponseStatusList&gt; |

###字段定义

| 名称  | 标识符  |  类型JSON  |  必选/可选 |  备注/信息来源
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  火焰标识 | FireID  |  ImageCntObjectIdType |  R | `GA/T 1400.1 图像信息内容要素 ID，人员、人脸、机动车、非机动车、物品、场景等 ` |
| 信息分类  |  InfoKind | InfoType  | R  |`GA/T 1400.1 B.3.45` |
|  来源标识 | SourceID  |  BasicObjectIdType |  R |  来源图像标识 `GA/T 1400.1，图像信息基本要素 ID，视频、图像、文件`  |
| 设备编码  |  DeviceID | DeviceIDType  | R  |`GA/T 1400.1，采集设备、卡口点位、采集系统、分析系统、视图库、应用平台等设备编码规则 ` |
| 左上角 X 坐标  | LeftTopX | int | R/O |火焰/烟雾外接矩形在画面中的位置，记录左上角X坐标，采用传感器检测的非必选|
| 左上角 Y 坐标  | LeftTopY | int | R/O |火焰/烟雾外接矩形在画面中的位置，记录左上角Y坐标，采用传感器检测的非必选|
| 右下角 X 坐标 | RightBtmX | int | R/O |火焰/烟雾外接矩形在画面中的位置，记录右下角X坐标，采用传感器检测的非必选|
| 右下角 Y 坐标 | RightBtmY | int | R/O |火焰/烟雾外接矩形在画面中的位置，记录右下角Y坐标，采用传感器检测的非必选|
| 出现时间  |  AppearTime | DateTime  | O  |`GA/T 1400.3 B.1` 出现时间等于消失时间 事件开始,出现时间小于消失时间 事件结束|
| 消失时间  |  DisappearTime | DateTime  | O  |`A/T 1400.3 B.1` 出现时间等于消失时间 事件开始,出现时间小于消失时间 事件结束|
| 告警类型  |  AlarmType | int  | O  | 无此项 或者此项值为0 火焰报警 1烟雾报警|
| 图像列表  |  SubImageList | SubImageInfoList  | O  |`GA/T 1400.3 A.6` 可以包含 0 个或者多个子图像对象|

###示例
URL：`/VIID/Extend/Fire`  方法：`POST` 请求头:参见标准1400请求参数
请求体：
```json
{
	&quot;FireListObject&quot;: {
		&quot;FireObject&quot;: [{
			&quot;FireID&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;InfoKind&quot;: 1,
			&quot;SourceID&quot;: &quot;33010101001210000001022017101808060802206&quot;,
			&quot;DeviceID&quot;: &quot;65010000001190000001&quot;,
			&quot;LeftTopX&quot;: 4,
			&quot;LeftTopY&quot;: 2,
			&quot;RightBtmX&quot;: 21,
			&quot;RightBtmY&quot;: 23,
			&quot;AppearTime&quot;: &quot;19981230010000&quot;,
			&quot;DisappearTime&quot;: &quot;19981230010000&quot;,
			&quot;SubImageList&quot;: {
				&quot;SubImageInfoObject&quot;: [{
					&quot;ImageID&quot;: &quot;33020300001190000001022017122111111100001&quot;,
					&quot;EventSort&quot;: 0,
					&quot;DeviceID&quot;: &quot;55220299011190000253&quot;,
					&quot;Type&quot;: &quot;100&quot;,
					&quot;FileFormat&quot;: &quot;Jpeg&quot;,
					&quot;FileHash&quot;: &quot;7a36b799a1d08da855bdb4e4a7ae977e&quot;,
					&quot;ShotTime&quot;: &quot;20170925032455&quot;,
					&quot;Width&quot;: 437,
					&quot;Height&quot;: 350,
					&quot;Data&quot;: &quot;base64图片数据&quot;
				}]
			}
		}]
	}
}
```
响应体：
```json
{
	&quot;ResponseStatusListObject&quot;: {
		&quot;ResponseStatusObject&quot;: [{
			&quot;RequestURL&quot;: &quot;http://localhost/VIID/Extend/Fire&quot;,
			&quot;StatusCode&quot;: &quot;0&quot;,
			&quot;StatusString&quot;: &quot;正常&quot;,
			&quot;Id&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;LocalTime&quot;: &quot;20171222104652&quot;
		}]
	}
}
```


---

## 离岗

> Page ID: 298031362

[TOC]

## 离岗检测数据上报
 ###接口概览
接口地址:`/VIID/Extend/OffDuty`

 |  方法 | 查询字符串|消息体|返回结果|
| ------------ | ------------ | ------------ | ------------ |
|  POST |  无 |  &lt;OffDutyListObject&gt; |  &lt;ResponseStatusList&gt; |

###字段定义
| 名称  | 标识符  |  类型JSON  |  必选/可选 |  备注/信息来源
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  离岗标识 | OffDutyID  |  ImageCntObjectIdType |  R | `GA/T 1400.1 图像信息内容要素 ID，人员、人脸、机动车、非机动车、物品、场景等 ` |
| 信息分类  |  InfoKind | InfoType  | R  |`GA/T 1400.1 B.3.45` |
|  来源标识 | SourceID  |  BasicObjectIdType |  R |  来源图像标识 `GA/T 1400.1，图像信息基本要素 ID，视频、图像、文件`  |
| 设备编码  |  DeviceID | DeviceIDType  | R  |`GA/T 1400.1，采集设备、卡口点位、采集系统、分析系统、视图库、应用平台等设备编码规则 ` |
| 离岗/在岗  | OffDuty | int | R/O |1离岗 0在岗|
| 左上角 X 坐标  | LeftTopX | int | R/O |岗位区域截图，有小图时必选|
| 左上角 Y 坐标  | LeftTopY | int | R/O |岗位区域截图，有小图时必选|
| 右下角 X 坐标 | RightBtmX | int | R/O |岗位区域截图，有小图时必选|
| 右下角 Y 坐标 | RightBtmY | int | R/O |岗位区域截图，有小图时必选|
| 出现时间  |  AppearTime | DateTime  | O  |`GA/T 1400.3 B.1` 出现时间等于消失时间 事件开始,出现时间小于消失时间 事件结束|
| 消失时间  |  DisappearTime | DateTime  | O  |`A/T 1400.3 B.1` 出现时间等于消失时间 事件开始,出现时间小于消失时间 事件结束|
| 图像列表  |  SubImageList | SubImageInfoList  | O  |`GA/T 1400.3 A.6` 可以包含 0 个或者多个子图像对象|
###示例
URL：`/VIID/Extend/OffDuty`  方法：`POST` 请求头:参见标准1400请求参数
请求体：
```json
{
	&quot;OffDutyListObject&quot;: {
		&quot;OffDutyObject&quot;: [{
			&quot;OffDutyID&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;InfoKind&quot;: 1,
			&quot;OffDuty&quot;: 1,
			&quot;SourceID&quot;: &quot;33010101001210000001022017101808060802206&quot;,
			&quot;DeviceID&quot;: &quot;65010000001190000001&quot;,
			&quot;LeftTopX&quot;: 4,
			&quot;LeftTopY&quot;: 2,
			&quot;RightBtmX&quot;: 21,
			&quot;RightBtmY&quot;: 23,
			&quot;AppearTime&quot;: &quot;19981230010000&quot;,
			&quot;DisappearTime&quot;: &quot;19981230010000&quot;,
			&quot;SubImageList&quot;: {
				&quot;SubImageInfoObject&quot;: [{
					&quot;ImageID&quot;: &quot;33020300001190000001022017122111111100001&quot;,
					&quot;EventSort&quot;: 0,
					&quot;DeviceID&quot;: &quot;55220299011190000253&quot;,
					&quot;Type&quot;: &quot;100&quot;,
					&quot;FileFormat&quot;: &quot;Jpeg&quot;,
					&quot;FileHash&quot;: &quot;7a36b799a1d08da855bdb4e4a7ae977e&quot;,
					&quot;ShotTime&quot;: &quot;20170925032455&quot;,
					&quot;Width&quot;: 437,
					&quot;Height&quot;: 350,
					&quot;Data&quot;: &quot;base64图片数据&quot;
				}]
			}
		}]
	}
}
```
响应体：
```json
{
	&quot;ResponseStatusListObject&quot;: {
		&quot;ResponseStatusObject&quot;: [{
			&quot;RequestURL&quot;: &quot;http://localhost/VIID/Extend/OffDuty&quot;,
			&quot;StatusCode&quot;: &quot;0&quot;,
			&quot;StatusString&quot;: &quot;正常&quot;,
			&quot;Id&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;LocalTime&quot;: &quot;20171222104652&quot;
		}]
	}
}
```


---

## 消防通道

> Page ID: 298031363


 ## 消防通道占用检测数据上报
 ###接口概览
接口地址:`/VIID/Extend/FPOD`

 |  方法 | 查询字符串|消息体|返回结果|
| ------------ | ------------ | ------------ | ------------ |
|  POST |  无 |  &lt;FPODObject&gt; |  &lt;ResponseStatusList&gt; |
###字段定义
| 名称  | 标识符  |  类型JSON  |  必选/可选 |  备注/信息来源
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  消防通道占用标识 | FPODID  |  ImageCntObjectIdType |  R | `GA/T 1400.1 图像信息内容要素 ID，人员、人脸、机动车、非机动车、物品、场景等 ` |
| 信息分类  |  InfoKind | InfoType  | R  |`GA/T 1400.1 B.3.45` |
|  来源标识 | SourceID  |  BasicObjectIdType |  R |  来源图像标识 `GA/T 1400.1，图像信息基本要素 ID，视频、图像、文件`  |
| 设备编码  |  DeviceID | DeviceIDType  | R  |`GA/T 1400.1，采集设备、卡口点位、采集系统、分析系统、视图库、应用平台等设备编码规则 ` |
| 左上角 X 坐标  | LeftTopX | int | R/O |消防通道占用区域截图，有小图时必选|
| 左上角 Y 坐标  | LeftTopY | int | R/O |消防通道占用区域截图，有小图时必选|
| 右下角 X 坐标 | RightBtmX | int | R/O |消防通道占用区域截图，有小图时必选|
| 右下角 Y 坐标 | RightBtmY | int | R/O |消防通道占用区域截图，有小图时必选|
| 出现时间  |  AppearTime | DateTime  | O  |`GA/T 1400.3 B.1` 出现时间等于消失时间 事件开始,出现时间小于消失时间 事件结束|
| 消失时间  |  DisappearTime | DateTime  | O  |`A/T 1400.3 B.1` 出现时间等于消失时间 事件开始,出现时间小于消失时间 事件结束|
| 图像列表  |  SubImageList | SubImageInfoList  | O  |`GA/T 1400.3 A.6` 可以包含 0 个或者多个子图像对象|
###示例
URL：`/VIID/Extend/FPOD`  方法：`POST` 请求头:参见标准1400请求参数
请求体：
```json
{
	&quot;FPODListObject&quot;: {
		&quot;FPODObject&quot;: [{
			&quot;FPODID&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;InfoKind&quot;: 1,
			&quot;SourceID&quot;: &quot;33010101001210000001022017101808060802206&quot;,
			&quot;DeviceID&quot;: &quot;65010000001190000001&quot;,
			&quot;LeftTopX&quot;: 4,
			&quot;LeftTopY&quot;: 2,
			&quot;RightBtmX&quot;: 21,
			&quot;RightBtmY&quot;: 23,
			&quot;AppearTime&quot;: &quot;19981230010000&quot;,
			&quot;DisappearTime&quot;: &quot;19981230010000&quot;,
			&quot;SubImageList&quot;: {
				&quot;SubImageInfoObject&quot;: [{
					&quot;ImageID&quot;: &quot;33020300001190000001022017122111111100001&quot;,
					&quot;EventSort&quot;: 0,
					&quot;DeviceID&quot;: &quot;55220299011190000253&quot;,
					&quot;Type&quot;: &quot;100&quot;,
					&quot;FileFormat&quot;: &quot;Jpeg&quot;,
					&quot;FileHash&quot;: &quot;7a36b799a1d08da855bdb4e4a7ae977e&quot;,
					&quot;ShotTime&quot;: &quot;20170925032455&quot;,
					&quot;Width&quot;: 437,
					&quot;Height&quot;: 350,
					&quot;Data&quot;: &quot;base64图片数据&quot;
				}]
			}
		}]
	}
}
```
响应体：
```json
{
	&quot;ResponseStatusListObject&quot;: {
		&quot;ResponseStatusObject&quot;: [{
			&quot;RequestURL&quot;: &quot;http://localhost/VIID/Extend/FPOD&quot;,
			&quot;StatusCode&quot;: &quot;0&quot;,
			&quot;StatusString&quot;: &quot;正常&quot;,
			&quot;Id&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;LocalTime&quot;: &quot;20171222104652&quot;
		}]
	}
}
```


---

## 全景抓拍

> Page ID: 298031364

[TOC]


 ## 全景抓拍数据上报
 ###接口概览
接口地址:`/VIID/Extend/SceneCapture`

 |  方法 | 查询字符串|消息体|返回结果|
| ------------ | ------------ | ------------ | ------------ |
|  POST |  无 |  &lt;SceneCaptureListObject&gt; |  &lt;ResponseStatusList&gt; |

###字段定义
| 名称  | 标识符  |  类型JSON  |  必选/可选 |  备注/信息来源
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  全景抓拍标识 | SceneCaptureID  |  ImageCntObjectIdType |  R | `GA/T 1400.1 图像信息内容要素 ID，人员、人脸、机动车、非机动车、物品、场景等 ` |
| 信息分类  |  InfoKind | InfoType  | R  |`GA/T 1400.1 B.3.45` |
|  来源标识 | SourceID  |  BasicObjectIdType |  R |  来源图像标识 `GA/T 1400.1，图像信息基本要素 ID，视频、图像、文件`  |
| 设备编码  |  DeviceID | DeviceIDType  | R  |`GA/T 1400.1，采集设备、卡口点位、采集系统、分析系统、视图库、应用平台等设备编码规则 ` |
| 抓拍时间  |  CaptureTime | DateTime  | O  |`GA/T 1400.3 B.1`|
| 告警源  |  AlarmSource | int  | O  |0 未定义/逐帧输出模式 1 移动侦测 2 区域入侵 3 报警输入 4 定时抓拍|
| 告警掩码  |  AlarmMask | int  | O  |设备最多支持4个区域 对应比特位1,2,3,4,某个区域报警就将对应比特位置1 如果值为）&lt;br/&gt;0xFF 表示不区分报警其余&lt;br/&gt;示例：1、3区域告警AlarmMask=（1&lt;&lt;0 or &lt;&lt;2）值为5&lt;br/&gt;仅区域入侵有效|
| 对象存地址/文件名称  |  obs_file | string  | O  |对象存文件地址或者文件名称 示例：/bucket/123456789abcdefghkijk/20240621/091005_091015.ts|
| 扩展坐标  |  RectangleListObject | RectangleList  | O  |RectangleList 坐标数组 人形 车辆 坐标参考分辨率为 全景图分辨率|
| 图像列表  |  SubImageList | SubImageInfoList  | O  |`GA/T 1400.3 A.6` 只包含场景图 |

#### RectangleList字段定义(多组矩形坐标)

| 名称  | 标识符  |  类型 | 描述 |
| ------------ | ------------ | ------------ | ------------ |
| 左上角 X 坐标  | LeftTopX   |  int |  目标外接矩形在画面中的位置，记录左上角X坐标 |
| 左上角 Y 坐标  | LeftTopY   |  int |  目标外接矩形在画面中的位置，记录左上角Y坐标 |
| 右下角 X 坐标  | RightBtmX  |  int |  目标外接矩形在画面中的位置，记录右下角X坐标 |
| 右下角 Y 坐标  | RightBtmY  |  int |  目标外接矩形在画面中的位置，记录右下角Y坐标 |
| 目标类型 | ObjectType  |  string |  &quot;0&quot; 未知 &quot;1&quot; 人脸 &quot;2&quot; 人形 &quot;3&quot; 车辆 |
| 跟踪ID  | TrackID  |  string |  如果设备支持检测目标跟踪 就为跟踪id 否则为编号id |
| 是否有车牌 | HasPlate  |  string | ObjectType 为 &quot;3&quot; 时有此项 &lt;br/&gt;参考 《GAT 1400.3-2017公安视频图像信息应用系统 第3部分：数据库技术要求》A.10 机动车对象|
| 车牌种类 | PlateClass  |  string | ObjectType 为 &quot;3&quot; 时有此项  &lt;br/&gt;参考 《GAT 1400.3-2017公安视频图像信息应用系统 第3部分：数据库技术要求》A.10 机动车对象|
| 车牌颜色 | PlateColor  |  string | ObjectType 为 &quot;3&quot; 时有此项 &lt;br/&gt;参考 《GAT 1400.3-2017公安视频图像信息应用系统 第3部分：数据库技术要求》A.10 机动车对象 |
| 车牌号码 | PlateNo  |  string |  ObjectType 为 &quot;3&quot; 时有此项&lt;br/&gt;参考 《GAT 1400.3-2017公安视频图像信息应用系统 第3部分：数据库技术要求》A.10 机动车对象 |
| 车牌号码可信度 | PlateReliability  |  string |ObjectType 为 &quot;3&quot; 时有此项 &lt;br/&gt;参考 《GAT 1400.3-2017公安视频图像信息应用系统 第3部分：数据库技术要求》A.10 机动车对象|
| 车辆颜色 | VehicleColor  |  string |ObjectType 为 &quot;3&quot; 时有此项&lt;br/&gt; 参考 《GAT 1400.3-2017公安视频图像信息应用系统 第3部分：数据库技术要求》A.10 机动车对象 |

###示例
URL：`/VIID/Extend/SceneCapture`  方法：`POST` 请求头:参见标准1400请求参数
请求体：
```json
{
    &quot;SceneCaptureListObject&quot;: {
        &quot;SceneCaptureObject&quot;: [
            {
                &quot;SceneCaptureID&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
                &quot;InfoKind&quot;: 1,
                &quot;SourceID&quot;: &quot;33010101001210000001022017101808060802206&quot;,
                &quot;DeviceID&quot;: &quot;65010000001190000001&quot;,
                &quot;CaptureTime&quot;: &quot;19981230010000&quot;,
                &quot;AlarmSource&quot;: 2,
                //如果是车辆抓拍信息 或者逐帧上报的信息 AlarmSource为 0
                &quot;AlarmMask&quot;:255,
                &quot;obs_file&quot;:&quot;/bucket/123456789abcdefghkijk/20240621/091005_091015.ts&quot;,
                &quot;RectangleListObject&quot;: [
                    {
                        &quot;LeftTopX&quot;: 100,
                        &quot;LeftTopY&quot;: 200,
                        &quot;RightBtmX&quot;: 500,
                        &quot;RightBtmY&quot;: 600,
                        &quot;ObjectType&quot;: &quot;2&quot;,
                        &quot;object_id&quot;: &quot;123&quot;
                    },
                    {
                        &quot;LeftTopX&quot;: 50,
                        &quot;LeftTopY&quot;: 50,
                        &quot;RightBtmX&quot;: 200,
                        &quot;RightBtmY&quot;: 400,
                        &quot;ObjectType&quot;: &quot;3&quot;,
                        &quot;object_id&quot;: &quot;456&quot;,
                        &quot;HasPlate&quot;: &quot;1&quot;,
                        &quot;PlateClass&quot;: &quot;2&quot;,
                        &quot;PlateColor&quot;: &quot;5&quot;,
                        &quot;PlateNo&quot;: &quot;京A00001&quot;,
                        &quot;PlateReliability&quot;: &quot;99&quot;,
                        &quot;VehicleColor&quot;: &quot;1&quot;
                    },
                    {
                        &quot;LeftTopX&quot;: 300,
                        &quot;LeftTopY&quot;: 300,
                        &quot;RightBtmX&quot;: 600,
                        &quot;RightBtmY&quot;: 600,
                        &quot;ObjectType&quot;: &quot;3&quot;,
                        &quot;object_id&quot;: &quot;789&quot;,
                        &quot;HasPlate&quot;: &quot;0&quot;,
                        &quot;PlateClass&quot;: &quot;99&quot;,
                        &quot;PlateColor&quot;: &quot;99&quot;,
                        &quot;PlateNo&quot;: &quot;&quot;,
                        &quot;PlateReliability&quot;: &quot;0&quot;,
                        &quot;VehicleColor&quot;: &quot;1&quot;
                    }
                ],
                &quot;SubImageList&quot;: {
                    &quot;SubImageInfoObject&quot;: [
                        {
                            &quot;ImageID&quot;: &quot;33020300001190000001022017122111111100001&quot;,
                            &quot;EventSort&quot;: 0,
                            &quot;DeviceID&quot;: &quot;55220299011190000253&quot;,
                            &quot;Type&quot;: &quot;14&quot;,
                            &quot;FileFormat&quot;: &quot;Jpeg&quot;,
                            &quot;FileHash&quot;: &quot;7a36b799a1d08da855bdb4e4a7ae977e&quot;,
                            &quot;ShotTime&quot;: &quot;20170925032455&quot;,
                            &quot;Width&quot;: 1280,
                            &quot;Height&quot;: 720,
                            &quot;Data&quot;: &quot;base64图片数据&quot;
                        }
                    ]
                }
            }
        ]
    }
}
```

响应体：
```json
{
	&quot;ResponseStatusListObject&quot;: {
		&quot;ResponseStatusObject&quot;: [{
			&quot;RequestURL&quot;: &quot;http://localhost/VIID/Extend/SceneCapture&quot;,
			&quot;StatusCode&quot;: &quot;0&quot;,
			&quot;StatusString&quot;: &quot;正常&quot;,
			&quot;Id&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;LocalTime&quot;: &quot;20171222104652&quot;
		}]
	}
}
```


---

## 安全帽检测

> Page ID: 298031365

[TOC]

## 安全帽检测数据上报
 ###接口概览
接口地址:`/VIID/Extend/ExtendHelmet`

|  方法 | 查询字符串|消息体|返回结果|
| ------------ | ------------ | ------------ | ------------ |
|  POST |  无 |  &lt;HelmetListObject&gt; |  &lt;ResponseStatusList&gt; |

###字段定义
| 名称  | 标识符  |  类型JSON  |  必选/可选 |  备注/信息来源
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  安全帽抓拍标识 | HelmetID  |  ImageCntObjectIdType |  R | `GA/T 1400.1 图像信息内容要素 ID，人员、人脸、机动车、非机动车、物品、场景等 ` |
| 信息分类  |  InfoKind | InfoType  | R  |`GA/T 1400.1 B.3.45` |
|  来源标识 | SourceID  |  BasicObjectIdType |  R |  来源图像标识 `GA/T 1400.1，图像信息基本要素 ID，视频、图像、文件`  |
| 设备编码  |  DeviceID | DeviceIDType  | R  |`GA/T 1400.1，采集设备、卡口点位、采集系统、分析系统、视图库、应用平台等设备编码规则 ` |
| 左上角 X 坐标  | LeftTopX | int | R/O |目标外接矩形在画面中的位置，有小图时必选|
| 左上角 Y 坐标  | LeftTopY | int | R/O |目标外接矩形在画面中的位置，有小图时必选|
| 右下角 X 坐标 | RightBtmX | int | R/O |目标外接矩形在画面中的位置，有小图时必选|
| 右下角 Y 坐标 | RightBtmY | int | R/O |目标外接矩形在画面中的位置，有小图时必选|
| 出现时间  |  AppearTime | DateTime  | O  |`GA/T 1400.3 B.1` 出现时间等于消失时间 事件开始,出现时间小于消失时间 事件结束|
| 消失时间  |  DisappearTime | DateTime  | O  |`A/T 1400.3 B.1` 出现时间等于消失时间 事件开始,出现时间小于消失时间 事件结束|
| 告警类型  |  AlarmType | int  | O  |1 未戴安全帽 2佩戴安全帽 3 不合规颜色安全帽进入指定区域 |
| 安全帽颜色  | HelmetColor | int  | O  |0 未知, 黑色 = 1,蓝色 = 2,红色 = 3,白色 = 4,黄色 = 5 只有AlarmType 为2、3 时候 此值有效 |
| 图像列表  |  SubImageList | SubImageInfoList  | O  |`GA/T 1400.3 A.6` 可以包含 0 个或者多个子图像对象|
###示例
URL：`/VIID/Extend/ExtendHelmet`  方法：`POST` 请求头:参见标准1400请求参数
请求体：
```json
{
	&quot;HelmetListObject&quot;: {
		&quot;HelmetObject&quot;: [{
			&quot;HelmetID&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;InfoKind&quot;: 1,
			&quot;SourceID&quot;: &quot;33010101001210000001022017101808060802206&quot;,
			&quot;DeviceID&quot;: &quot;65010000001190000001&quot;,
			&quot;LeftTopX&quot;: 4,
			&quot;LeftTopY&quot;: 2,
			&quot;RightBtmX&quot;: 21,
			&quot;RightBtmY&quot;: 23,
			&quot;AppearTime&quot;: &quot;19981230010000&quot;,
			&quot;DisappearTime&quot;: &quot;19981230010000&quot;,
			&quot;AlarmType&quot;: 3,
			&quot;HelmetColor&quot;: 5,
			&quot;SubImageList&quot;: {
				&quot;SubImageInfoObject&quot;: [{
					&quot;ImageID&quot;: &quot;33020300001190000001022017122111111100001&quot;,
					&quot;EventSort&quot;: 0,
					&quot;DeviceID&quot;: &quot;55220299011190000253&quot;,
					&quot;Type&quot;: &quot;14&quot;,
					&quot;FileFormat&quot;: &quot;Jpeg&quot;,
					&quot;FileHash&quot;: &quot;7a36b799a1d08da855bdb4e4a7ae977e&quot;,
					&quot;ShotTime&quot;: &quot;20170925032455&quot;,
					&quot;Width&quot;: 1280,
					&quot;Height&quot;: 720,
					&quot;Data&quot;: &quot;base64图片数据&quot;
				}]
			}
		}]
	}
}
```
响应体：
```json
{
	&quot;ResponseStatusListObject&quot;: {
		&quot;ResponseStatusObject&quot;: [{
			&quot;RequestURL&quot;: &quot;http://localhost/VIID/Extend/ExtendHelmet&quot;,
			&quot;StatusCode&quot;: &quot;0&quot;,
			&quot;StatusString&quot;: &quot;正常&quot;,
			&quot;Id&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;LocalTime&quot;: &quot;20171222104652&quot;
		}]
	}
}
```


---

## 心跳/指令查询/人流统计/电动车头盔计数

> Page ID: 298031366

[TOC]


## 指令查询
 ###接口概览 
接口地址:`/VIID/System/Keepalive`
基于标准Keepalive接口，对请求消息体做扩展，支持人流统计上报，支持电动车佩戴头盔计数上报
基于标准Keepalive接口，对返回消息体做扩展，增加`ExtendCmd`字段，支持扩展指令（目前只有人脸识别算法生效）

|  方法 | 查询字符串|消息体|返回结果|
| ------------ | ------------ | ------------ | ------------ |
|  POST |  无 |  &lt;Keepalive&gt; |  &lt;ResponseStatus&gt; |

###请求体字段定义
| 名称  | 标识符  |  类型JSON  |  必选/可选 |  备注/信息来源|
| ------------ | ------------ | ------------ | ------------ | ------------ |
| 设备编码  |  DeviceID | DeviceIDType  | R  |`GA/T 1400.1，采集设备、卡口点位、采集系统、分析系统、视图库、应用平台等设备编码规则 ` |
| 人流统计-进入人数  | PersonCountEnter | int | O |人流统计算法适用|
| 人流统计-离开人数  | PersonCountLeave | int | O |人流统计算法适用|
| 电瓶车头盔计数算法-佩戴安全头盔人数  | PersonHelmetWear | int | O |电瓶车头盔计数算法适用|
| 电瓶车头盔计数算法-未佩戴安全头盔人数  | PersonHelmetNotWear | int | O |电瓶车头盔计数算法适用|

###响应体字段定义
| 名称  | 标识符  |  类型JSON  |  必选/可选 |消息定义|备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|  扩展指令 | ExtendCmd  |  int |  R/O | `10001`:更新人脸库-图片下发方式(含新增，修改，部分删除) &lt;br/&gt; `10002`:删除全部人脸库 &lt;br/&gt;`10003`:获取全部人脸库&lt;br/&gt; `10004`:更新人脸库-特征值下发方式 |设备收到1001指后 设备会调用`/VIID/Extend/ExtendFaceList`进行人脸库同步，每同步完成一张人脸图（成功与失败），都会调用`/VIID/Extend/ExtendConfirm`告知1400服务器，该人脸的同步结果,如果当前没有要下发的人脸，就不下发该字段&lt;br/&gt;设备收到10004指后 设备会调用`/VIID/Extend/ExtendFaceDB`进行人脸库同步，同步完成后会调用`/VIID/Extend/ExtendConfirm`告知1400服务器，人脸库同步结果,如果当前没有要同步的人脸，就不下发该字段|


###示例
URL：`/VIID/System/Keepalive`  方法：`POST` 请求头:参见标准1400请求参数
```json
{
	&quot;KeepaliveObject&quot;: {
		&quot;DeviceID&quot;: &quot;33010299011190000253&quot;,
		&quot;PersonCountEnter&quot;: 100,
		&quot;PersonCountLeave&quot;: 50,
		&quot;PersonHelmetWear&quot;: 30,
		&quot;PersonHelmetNotWear&quot;: 2
	}
}
```
响应体：
```json
{
	&quot;ResponseStatusObject&quot;: {
		&quot;RequestURL&quot;: &quot;/VIID/System/Keepalive&quot;,
		&quot;StatusCode&quot;: &quot;0&quot;,
		&quot;StatusString&quot;: &quot;success&quot;,
		&quot;ID&quot;: &quot;33010299011190000253&quot;,
		&quot;ExtendCmd&quot;: 10001
	}
}
```


---

## 指令执行状态上报

> Page ID: 298031367

[TOC]

## 指令执行状态上报
 ###接口概览
接口地址:`/VIID/Extend/ExtendConfirm`

 |  方法 | 查询字符串|消息体|返回结果|
| ------------ | ------------ | ------------ | ------------ |
|  POST |  无 |  &lt;ConfirmObject&gt; |  &lt;ResponseStatusList&gt; |

###字段定义
| 名称  | 标识符  |  类型JSON  |  必选/可选 |  备注/信息来源
| ------------ | ------------ | ------------ | ------------ | ------------ |
| 设备编码  |  DeviceID | DeviceIDType  | R  |`GA/T 1400.1，采集设备、卡口点位、采集系统、分析系统、视图库、应用平台等设备编码规则 ` |
| 任务ID  |  TaskId | String  | R  |任务唯一标识符 来源于`/VIID/Extend/ExtendFaceList`的返回消息|
| 执行结果  |  StatusCode | int  | R  |0:成功，其它失败 |
| 执行结果描述  |  StatusString | string  | R/O  |success:成功，其它:失败描述 |

###示例
URL：`/VIID/Extend/ExtendConfirm`  方法：`POST` 请求头:参见标准1400请求参数
请求体：
```json
{
	&quot;ConfirmListObject&quot;: {
		&quot;ConfirmObject&quot;: [{
				&quot;DeviceID&quot;: &quot;55000111221190000007&quot;,
				&quot;TaskID&quot;: &quot;1453635655379718145&quot;,
				&quot;StatusCode&quot;: 0,
				&quot;StatusString&quot;: &quot;success&quot;
			},
			{
				&quot;DeviceID&quot;: &quot;55000111221190000007&quot;,
				&quot;TaskID&quot;: &quot;1453635655379718146&quot;,
				&quot;StatusCode&quot;: 0,
				&quot;StatusString&quot;: &quot;success&quot;
			}
		]
	}
}
```


---

## 同步人脸库-图片下发

> Page ID: 298031368

[TOC]


## 同步人脸库
设备flash限制，不保存原始图片，只保存由图片提取的特征值
人脸图片尽量是由设备抓拍的照片（windows 端工具 人像采集功能采集的照片），才具有较高准确性
图像分辨率应低于1920*1080，单个图片大小限制500K以内
 ###接口概览
接口地址:`/VIID/Extend/ExtendFaceList`

|  方法 | 参数|返回结果|
| ------------ | ------------ | ------------ |
|  GET |?DeviceID=34020000001320000086&amp;Size=5 |  &lt;PersonListObject&gt; |

备注：Size=5 表示一次获取5个人脸入库图像 (5只是示例 可以是任何&gt;0的整数，一般不会超过5)
###返回体字段定义

| 名称  | 标识符  |  类型JSON |  长度  |  必选/可选 |  备注/信息来源
| ------------ | ------------ | ------------ |  ------------ | ------------ | ------------ |
|  任务唯一标识 | TaskID  |  String |  64 |  R | 任务唯一标识,自定义标识 |
| 人员ID  |  PersonID | String  |64 |R  | 用于标识是哪一个人，此值是唯一ID |
|  姓名 | Name  |  String |  64 |R |  人员名称  |
| 所属人像库  |  GroupID | String  | 64 |R  |人员所属人像库 |
| 人员类型  |  PersonType | Integer  | O |R  |0 白名单 1 黑名单 |
| 操作标识  |  Type | Integer  | O  |R|0 新增 1 在修改 2 删除 |

| 图像列表 | SubImageList | SubImageInfoList | R |1个子图像对象,参考1400协议扩展类型SubImageInfoList，如果Type=2 可不带SubImageList|

###示例
URL：`/VIID/Extend/ExtendFaceList?DeviceID=34020000001320000086&amp;Size=5`  方法：`GET`
备注：如果Size=5，且PersonListObject-&gt;Person数据&lt;5 则标识人脸数据以请求完成
     如果Size=5，且PersonListObject-&gt;Person数据=5 设备还会调用ExtendFaceList请求数据,直到PersonListObject-&gt;Person为0 或者PersonListObject-&gt;Person&lt;Size
	 PersonListObject -&gt;Person 只能&lt;=Size
响应体：
```json
{
	&quot;PersonListObject&quot;: {
		&quot;Person&quot;: [{
				&quot;TaskID&quot;: &quot;1441307904689930241&quot;,
				&quot;PersonID&quot;: &quot;110100000011900000010220171219100515999830156479&quot;,
				&quot;Name&quot;: &quot;4V8FsvrVYG34WIXl9cVUvk/g==&quot;,
				&quot;GroupID&quot;: &quot;03742882aefb11eb9cea002ec777281b&quot;,
				&quot;PersonType&quot;:0,
				&quot;Type&quot;: 0,
				&quot;SubImageList&quot;: {
					&quot;SubImageInfoObject&quot;: [{
						&quot;Data&quot;: &quot;base64编码的jpg人脸图&quot;,
						&quot;FileFormat&quot;: &quot;Jpeg&quot;,
						&quot;ImageID&quot;: &quot;33020300001190000001022017122111111100011&quot;,
						&quot;ShotTime&quot;: &quot;20211110104853&quot;,
						&quot;StoragePath&quot;: null,
						&quot;Type&quot;: &quot;11&quot;
					}]
				}
			},
			{
				&quot;TaskID&quot;: &quot;1441307904689930242&quot;,
				&quot;PersonID&quot;: &quot;110100000011900000010220171219100515999830156478&quot;,
				&quot;Name&quot;: &quot;4V8FsvrVYGWI11Xl91cVUvk/g==&quot;,
				&quot;GroupID&quot;: &quot;03742882aefb11eb9cea002ec777281b&quot;,
				&quot;PersonType&quot;:1,
				&quot;Type&quot;: 0,
				&quot;SubImageList&quot;: {
					&quot;SubImageInfoObject&quot;: [{
						&quot;Data&quot;: &quot;base64编码的jpg人脸图&quot;,
						&quot;FileFormat&quot;: &quot;Jpeg&quot;,
						&quot;ImageID&quot;: &quot;33020300001190000001022017122111111100011&quot;,
						&quot;ShotTime&quot;: &quot;20211110104853&quot;,
						&quot;StoragePath&quot;: null,
						&quot;Type&quot;: &quot;11&quot;
					}]
				}
			},
			{
				&quot;TaskID&quot;: &quot;1441307904689930243&quot;,
				&quot;PersonID&quot;: &quot;110100000011900000010220171219100515999830156477&quot;,
				&quot;Name&quot;: &quot;4V8FsvrVY11GWIXl9cVUvk/g==&quot;,
				&quot;GroupID&quot;: &quot;03742882aefb11eb9cea002ec777281b&quot;,
				&quot;Type&quot;: 2
			}
		]
	}
}
```
人脸库同步流程：
```text
	1、（必须）设备请求 /VIID/System/Keepalive接口，服务器在在返回数据种携带ExtendCmd=10001指令
	2、（必须）设备收到ExtendCmd=10001 后 调用/VIID/Extend/ExtendFaceList接口分批次同步人脸库(多次调用该接口) 直到人脸库同步完成（PersonListObject-&gt;Person为0 或者PersonListObject-&gt;Person&lt;Size）
	3、（必须）每同步完成一张人脸 会通过/VIID/Extend/ExtendConfirm接口 携带TaskId 通知服务器该人脸的同步状态（成功、失败）
	4、（可选）设备请求 /VIID/System/Keepalive接口，服务器在在返回数据种携带ExtendCmd=10003指令
	5、（可选）设备收到ExtendCmd=10003 后 调用/VIID/Extend/ExtendReportFaceList接口上报设备中的人脸库
	6、（可选）设备请求 /VIID/System/Keepalive接口，服务器在在返回数据种携带ExtendCmd=10002指令
	7、（可选）设备收到ExtendCmd=10002 后 会直接删除设备中所有的人脸数据
```

---

## 设备人脸库上报

> Page ID: 298031369

[TOC]


## 设备人脸库上报
 ###接口概览
接口地址:`/VIID/Extend/ExtendReportFaceList`

|  方法 | 查询字符串|消息体|返回结果|
| ------------ | ------------ | ------------ | ------------ |
|  POST |  无 |  &lt;FaceReportListObject&gt; |  &lt;ResponseStatusList&gt; |

###字段定义
| 名称  | 标识符  |  类型JSON  |  必选/可选 |  备注/信息来源
| ------------ | ------------ | ------------ | ------------ | ------------ |
| 设备编码  |  DeviceID | DeviceIDType  | R  |`GA/T 1400.1，采集设备、卡口点位、采集系统、分析系统、视图库、应用平台等设备编码规则 ` |
| 人员ID  |  PersonID | String  | R  | 用于标识是哪一个人，此值是唯一ID |
|  姓名 | Name  |  String |  R |  人员名称  |
| 所属人像库  |  GroupID | String  | R  |人员所属人像库 |
###示例
URL：`/VIID/Extend/ExtendReportFaceList`  方法：`POST` 请求头:参见标准1400请求参数
请求体：
```json
{
	&quot;FaceReportListObject&quot;: {
		&quot;FaceReportObject&quot;: [{
			&quot;DeviceID&quot;: &quot;55000111221190000007&quot;,
			&quot;PersonID&quot;: &quot;11010000099830156479&quot;,
			&quot;Name&quot;: &quot;4V8FsvrVYGWIXl9cVUvk/g==&quot;,
			&quot;GroupID&quot;: &quot;03742882aefb11eb9cea002ec777281b&quot;
		}, {
			&quot;DeviceID&quot;: &quot;55000111221190000008&quot;,
			&quot;PersonID&quot;: &quot;11010000099830156478&quot;,
			&quot;Name&quot;: &quot;4V781VYGWIXl988cVUvk/g==&quot;,
			&quot;GroupID&quot;: &quot;03742882aefb11eb9cea002ec777281c&quot;
		}]
	}
}

```
响应体
```json
{
	&quot;ResponseStatusListObject&quot;: {
		&quot;ResponseStatusObject&quot;: [{
			&quot;RequestURL&quot;: &quot;http://localhost/VIID/Extend/ExtendReportFaceList&quot;,
			&quot;StatusCode&quot;: &quot;0&quot;,
			&quot;StatusString&quot;: &quot;正常&quot;,
			&quot;Id&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;LocalTime&quot;: &quot;20171222104652&quot;
		}]
	}
}
```


---

## 人脸识别数据上报

> Page ID: 298031370


## 人脸识别数据上报
设备识别到该人脸是在库人员，通过此接口上报识别信息
 ###接口概览
接口地址:`/VIID/Extend/ExtendFaceRecognition`

|  方法 | 查询字符串|消息体|返回结果|
| ------------ | ------------ | ------------ | ------------ |
|  POST |  无 |  &lt;FaceRecognitionResultList&gt; |  &lt;ResponseStatusList&gt; |

###字段定义
| 名称  | 标识符  |  类型JSON  |  必选/可选 |  备注/信息来源
| ------------ | ------------ | ------------ | ------------ | ------------ |
| 设备编码  |  DeviceID | DeviceIDType  | R  |`GA/T 1400.1，采集设备、卡口点位、采集系统、分析系统、视图库、应用平台等设备编码规则 ` |
| 人员ID  |  PersonID | String  | R  | 用于标识是哪一个人，此值是唯一ID |
|  姓名 | Name  |  String |  R |  人员名称  |
| 所属人像库  |  GroupID | String  | R  |人员所属人像库 |
|  相似度 | Similarity  |  Double |  R/O |  相似度 0 - 1  |
|  相似度 | PersonType  |  int |  R/O |  0白名单   1黑名单  |
|  识别时间 | RecognitionTime  |  dstaTime |  R/O |  识别时间 |
| 图像列表  |  SubImageList | SubImageInfoList  | O  |`GA/T 1400.3 A.6` 可以包含 0 个或者多个子图像对象|

###示例
URL：`/VIID/Extend/ExtendFaceRecognition`  方法：`POST` 请求头:参见标准1400请求参数
请求体：
```json
{
	&quot;PersonRecognitionResultListObject&quot;: {
		&quot;PersonRecognitionObject&quot;: [{
			&quot;PersonID&quot;: &quot;11010000099830156479&quot;,
			&quot;Name&quot;: &quot;4V8FsvrVYGWIXl9cVUvk/g==&quot;,
			&quot;GroupID&quot;: &quot;03742882aefb11eb9cea002ec777281b&quot;,
			&quot;DeviceID&quot;: &quot;55000111221190000007&quot;,
			&quot;RecognitionTime&quot;: &quot;20210910175723&quot;,
			&quot;Similarity&quot;: &quot;0.99&quot;,
			&quot;PersonType&quot;: 0,
			&quot;SubImageList&quot;: {
				&quot;SubImageInfoObject&quot;: [{
					&quot;ImageID&quot;: &quot;33020300001190000001022017122111111100001&quot;,
					&quot;EventSort&quot;: 0,
					&quot;DeviceID&quot;: &quot;55220299011190000253&quot;,
					&quot;Type&quot;: &quot;14&quot;,
					&quot;FileFormat&quot;: &quot;Jpeg&quot;,
					&quot;FileHash&quot;: &quot;7a36b799a1d08da855bdb4e4a7ae977e&quot;,
					&quot;ShotTime&quot;: &quot;20170925032455&quot;,
					&quot;Width&quot;: 1280,
					&quot;Height&quot;: 720,
					&quot;Data&quot;: &quot;base64图片数据&quot;
				}]
			}
		}]
	}
}
```
响应体：
```json
{
	&quot;ResponseStatusListObject&quot;: {
		&quot;ResponseStatusObject&quot;: [{
			&quot;RequestURL&quot;: &quot;http://localhost/VIID/Extend/ExtendFaceRecognition&quot;,
			&quot;StatusCode&quot;: &quot;0&quot;,
			&quot;StatusString&quot;: &quot;正常&quot;,
			&quot;Id&quot;: &quot;330101010012100000010220171018080608022060369856&quot;,
			&quot;LocalTime&quot;: &quot;20171222104652&quot;
		}]
	}
}
```




---

## LINUX 人脸提取特征值工具说明

> Page ID: 298031949

[TOC]

## 1、运行环境
	ubuntu 22.04 GLIBC 2.35
```
#ldd --version 
ldd (Ubuntu GLIBC 2.35-0ubuntu3.11) 2.35
```
```
#lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 22.04.5 LTS
Release:	22.04
Codename:	jammy
```
##2、运行前数据准备
软件包请向我司申请
解压软件包 
```
tar -zxf linux_face.tgz
```
##3、目录介绍
解压后数据目录
```
├── facial_tools
├── model
│   ├── face_align
│   │   ├── MCVFaceAlignModel_FACESDK_V5.33.14.25.bin
│   │   └── MCVFaceAlignNet_FACESDK_V5.33.14.25.bin
│   ├── face_detect
│   │   ├── MCVFaceDetectModel_FACESDK_V7.23.13.0.bin
│   │   └── MCVFaceDetectNet_FACESDK_V7.23.13.0.bin
│   ├── face_quality
│   │   ├── MCVFaceQualityModel_FACESDK_V4.55.11.24.bin
│   │   └── MCVFaceQualityNet_FACESDK_V4.55.11.24.bin
│   └── face_verify
│       ├── MCVFaceVerifyFAModel_FACESDK_V4.77.13.0.bin
│       ├── MCVFaceVerifyFANet_FACESDK_V4.77.13.0.bin
│       ├── MCVFaceVerifyFBModel_FACESDK_V7.11.38.2.bin
│       └── MCVFaceVerifyFBNet_FACESDK_V7.11.38.2.bin
└── out
```
```
facial_tools 提取人脸特征值的工具 运行前确保具有可执行权限==》修改权限 chmod +x ./facial_tools
model 目录 算法需要的模型 不可更改
out 特征值输出目录
```
##4、 输入数据准备
输入数据按照格式组装为json文件 一次可对多个图片进行特征值提取
图片必须为jpg格式 分辨率小于1920*1080，图片中人脸五官完整,清晰不模糊，一张图片只能有一个人脸
使用摄像机抓拍的照片或者使用PC端工具守御视界图像采集功能抓拍的照片

```
FileName 文件的全路径（linux下）
PersonID  人员id （唯一） 最长64字节
Name      人员名称        最长64字节
GroupID   人员所属组       最长64字节
PersonType 人员类型 0 白名单  1 黑名单
```
示例
```
cat input.json 
[
	{&quot;FileName&quot;:&quot;test1.jpg&quot;,&quot;PersonID&quot;:&quot;person_1&quot;,&quot;Name&quot;:&quot;test1&quot;,&quot;GroupID&quot;:&quot;testgroup&quot;,&quot;PersonType&quot;:0},
	{&quot;FileName&quot;:&quot;test2.jpg&quot;,&quot;PersonID&quot;:&quot;person_2&quot;,&quot;Name&quot;:&quot;test2&quot;,&quot;GroupID&quot;:&quot;testgroup&quot;,&quot;PersonType&quot;:0},
	{&quot;FileName&quot;:&quot;test3.jpg&quot;,&quot;PersonID&quot;:&quot;person_3&quot;,&quot;Name&quot;:&quot;test3&quot;,&quot;GroupID&quot;:&quot;testgroup&quot;,&quot;PersonType&quot;:0}
]
```
##5、特征值提取
命令：
```shell
./facial_tools input.json
```
示例
```shell
./facial_tools input.json 
[2025-12-02 14:08:18.495]-[VS_I][src/main.cpp:30][out_version] app version:2025-12-02 09:51:49
[2025-12-02 14:08:18.495]-[VS_I][src/main.cpp:31][out_version] sdk version:1880121
Read Model File: ./model/face_verify/MCVFaceVerifyFBModel_FACESDK_V7.11.38.2.bin MD5: 4594efeea3ba4d58acc8289bde4e9c1b
[2025-12-02 14:08:19.181]-[VS_I][src/main.cpp:32][out_version] mod version:711382
Read Net File: ./model/face_detect/MCVFaceDetectNet_FACESDK_V7.23.13.0.bin MD5: d214f6eabb5003de3d68d8d0b6795f5c
Read Model File: ./model/face_detect/MCVFaceDetectModel_FACESDK_V7.23.13.0.bin MD5: ce23445fa007f1b600d74b432bcc7770
Read Net File: ./model/face_align/MCVFaceAlignNet_FACESDK_V5.33.14.25.bin MD5: c5e2360630f6749b915a8de7f85bc206
Read Model File: ./model/face_align/MCVFaceAlignModel_FACESDK_V5.33.14.25.bin MD5: e232130ee1d4e2551ee992894ad78dcb
Read Net File: ./model/face_quality/MCVFaceQualityNet_FACESDK_V4.55.11.24.bin MD5: c78750e8c9e128b6d11a3169a99d362a
Read Model File: ./model/face_quality/MCVFaceQualityModel_FACESDK_V4.55.11.24.bin MD5: 0979d9af6a86b081d8937db7382e02ad
Read Net File: ./model/face_verify/MCVFaceVerifyFANet_FACESDK_V4.77.13.0.bin MD5: ad1ebe96bebe8efeb9df28423964f15d
Read Model File: ./model/face_verify/MCVFaceVerifyFAModel_FACESDK_V4.77.13.0.bin MD5: fa53fc4a84d4718bb9e7d9d551647dab
Read Net File: ./model/face_verify/MCVFaceVerifyFBNet_FACESDK_V7.11.38.2.bin MD5: e5237d120118d34445f2c538da6c1e49
Read Model File: ./model/face_verify/MCVFaceVerifyFBModel_FACESDK_V7.11.38.2.bin MD5: 4594efeea3ba4d58acc8289bde4e9c1b
Read Model File: ./model/face_verify/MCVFaceVerifyFBModel_FACESDK_V7.11.38.2.bin MD5: 4594efeea3ba4d58acc8289bde4e9c1b
Read Model File: ./model/face_verify/MCVFaceVerifyFBModel_FACESDK_V7.11.38.2.bin MD5: 4594efeea3ba4d58acc8289bde4e9c1b
[2025-12-02 14:08:22.542]-[VS_I][src/main.cpp:191][process] 处理第 0 个元素 test1.jpg
[2025-12-02 14:08:22.543]-[VS_I][src/app_jpeg.cpp:139][jpg_to_yuv] input jpg: w = 896, h = 928, subsample = 2
[2025-12-02 14:08:22.556]-[VS_I][src/main.cpp:219][process] output yuv420p: w = 896, h = 928, size = 1247232
[2025-12-02 14:08:22.707]-[VS_I][src/main.cpp:240][process] align_pose: 15.69 2.10 -1.36 
[2025-12-02 14:08:22.707]-[VS_I][src/main.cpp:241][process] quality_score: 1.00 1.00 0.79 0.07 0.02 0.21 0.01 0.90 0.91
[2025-12-02 14:08:22.707]-[VS_I][src/main.cpp:254][process] feature_string: ULuNu7ZQBz7sjB+7/DsRPifBCT6t+9K88TvXvT+vUr62QxG+yL43OmriET6/GOE9mWmzvai35z0AUqe9vZahvT+W7b0zLzY+wxVuPeHTlr1NniU+NFE1PSyUU76UcIC9luk8vakjCb7kUPk85rK3POI2ab2AyHy6Nm1WPm3PD7wtWSM+zNzmO15Gljv4p8U94CYRvR0fmz2loK89mX4UPl3Dtz4U+v+9GxYmvti7qT0t6409NuesPAqCYj2AN6Y98YV3PsKq5DzN9Pe91l9WvN4Vrj2UAZq7bAEuPk5p8z2i3Fq9qdxHvWwAqD3NGd+9lZNBPY+JBb6cQp088rUJPn/dBD3vwlU9bnTavOCu/j2qM1892vpJPYZNj70mQcm8mLQOvQRMiL14GAM9sLqbvjZNHT4NDkQ+xeJQvn5zWTwkHfO9XStRPPXF9D1iJEI+JB2AvVmBlz28ArM8UmaNvpFc0L3dwqi8RGezvErBOj77HnE+Y7FAPOb4+LwAy0s84MdmuyAk3b0zdxw+fscIPLbCmD1It8y8PAJ3PaL0tr0nA3q8Xy26PLSOIL5OzLk9aBgVvuij8D2XhV6+WfaLPj5yjD0LbkQ+MSOMPSXm5DyLZGE8SPKpvjLJzr2amos96IwjvlSSITz2jUo9hO8ePpDkur1RBAe+CHOeOp0meL2axOW9udylPBAnw7y3e+M8eFrJvSt8DT4LElW+1oNAPIoG1ryt8DM+24wfPtFnJ77tli896f4bvk1Pxz2+3ks9S1nvvVAbR774+3q8Q6EYvew3UD4iBqA8GZWwPQ//Fb5QGqA9eJ5tvNPTdz3n0ga9GkwMPqNKxL0POha+zVA0PL88fT7ZAw8+dN8sPeKPiz1X9mI9E3obPliGIjvKGNg9/1TqvRx2ND1CAC080k8RvqQrY7vSh8S8gEPfPQJmbT0W1ee9KLZnvYbS1L1hUje+dHGkvXgoxL0QkSY+s6IjvqUnIb0IUKQ9AmEwvgjIB76YUK29gPwPvrwYIL7/VYG98XbWvRB3sD2qW4O+ihH0u3MdMr4kApq9AwK3vmUqYL4bjcK9ihxHvvM2M74dYT09G2Ymvkt8jLwIUSc+P7CsPHSsAL5En4I9xlUBvvKOsr1IN8A96tOJvDDtLjvKtuo9WxYNvoiRGT5oIdg7r6OcPaZR271MVVG9E6nBPdj+0r0JTI8+UZ4RvrRYLD1zVL67LfWnPD/SPj1wg+G9HXMrPvD4J76aVtC84TEXPe5hvr0eebS9Xyd5Pkh6vz3sxLc9ZOozPmIGnDw9QwO+uEOQPYpNVj0apYS9zUmGPpHUvL17j6Q9mGVCvePA8b02YnA9sTa7vdjtlDq4zLg8G9YQvg==
[2025-12-02 14:08:22.707]-[VS_I][src/main.cpp:191][process] 处理第 1 个元素 test2.jpg
[2025-12-02 14:08:22.707]-[VS_I][src/app_jpeg.cpp:139][jpg_to_yuv] input jpg: w = 1279, h = 1706, subsample = 2
[2025-12-02 14:08:22.723]-[VS_I][src/main.cpp:219][process] output yuv420p: w = 1280, h = 1706, size = 3275520
[2025-12-02 14:08:22.867]-[VS_I][src/main.cpp:240][process] align_pose: -2.91 5.77 -2.30 
[2025-12-02 14:08:22.867]-[VS_I][src/main.cpp:241][process] quality_score: 0.90 1.00 0.95 0.03 0.02 0.23 0.02 0.92 0.95
[2025-12-02 14:08:22.867]-[VS_I][src/main.cpp:254][process] feature_string: sP9svJ025j02nm09f8quPZrMGz4Go4c8JxKAPY/dq71Sc1y+KQEcPlZ0e7yt8tw91s+WvTHtZD2hiB2+u9jDvSvuIr5SojM+kJjTPeIDtr2r26k9b6lKPm1Gor2o98e9vhJBvk+I1r1t+i++qKwOvTg6nDu8FJs9GVKRPJBsi73HhUu8yIkHPRJv27y2ulI+vOkIvYOcFj0ws4o93rPoPfuKWb3wFd89M179vXBimT3sA4S92W96vYuQnb2faAk9V60APhcloTzUpBA9GBVMvUbdl7xSk8W8Uj7CvU6Ajj26iR69pXmRvpwitD3/TNa9TiTHvEzenz2h3CY9KhKGPYBCIjpnVpk93z3RvDx9JD5GHCw9vBxNPJWrP75e4QM9QR01PboPZr3vbBG85lEkvnFly7tUVKo9nW4Bvh0/IzvCDLK9M5PHPHqv1L2F9k89EvABPjzFEDyGQpc98PhwvjWMAL1V0wY+qkQaPUmStj0kxTY+zgxLvUhtIT7jmd290DoQPlpWM77FTFA9/Y6NPSF3mr3cZZC9LC5QvH6mrb2QhUc9uE6bvSUq9r1eXrM7MAyNvOKlgz1/9IO+MQirPmOAND5cJCY+oULOPBCGXzyUrUa8gblpvi3RwT1cEyC9YlDZvYixbLxJfeg9PP7bPcmueL0V04+9nejGvOAWv7weEpi9tLJzPfCD4j3IZVU8Zpc2vWG1BD1YViC+AogCPviA4r3qQYw+qgAmPhs8Yr7N0xo+6OwKPeKW3j0Uip89WLWavLhZED5y6Z09WLdJPW/M1T0YDte7nM5APoLpxbtPuRU9WLoMPX9i8L129iS+MkylPScmOT0w7Fo60neiPGj9xz37AQY+5NuNvX0nAz3PJIm94sw+PlMwij61d8q85kHCvEHwnzsMgRy++efbPa9pFr3CeiU+nn8DPqxyUT3EBAU94O8jvhwsTL4VpEG+n3sovsOzf71V06C7ofFQvvWf2L0SrwC+3sfBPLwA+r0Bqb09xmGbvkve2r0BFxa+fo9WvbSL6z2LWR++epv0vBFx/TxCfas9u9GYvhICJb3xm2A9lEaDvgAWZL5eXCG9LEjtvbo6Cr59Yzu9JB5zPTeTQ71d/2k8vUYmveNZNL2Wock9yH0ZPYSj4bwbEou9luoLvfQH/D38hec8//knPcCior3uMzE8JtP+vVxUcD1bVZ0+FXmGPf9qUj4s79s9BN/tvVSktz1NUrA90J+MPkhRI74YXuk9TazqPTx70D1gYr+8xTZfPuB/NT5cX6W8/+eXPvtfLz17p+69iKNou+XDM7zqTwi9NEwcPvxNF7vA5rK7suChvdmw3L1YPSe9W5dAvu6e8T37n8+9MgQvPA==
[2025-12-02 14:08:22.867]-[VS_I][src/main.cpp:191][process] 处理第 2 个元素 test3.jpg
[2025-12-02 14:08:22.868]-[VS_I][src/app_jpeg.cpp:139][jpg_to_yuv] input jpg: w = 864, h = 1920, subsample = 2
[2025-12-02 14:08:22.898]-[VS_I][src/main.cpp:219][process] output yuv420p: w = 864, h = 1920, size = 2488320
Error: /data/MCV_SDK_Dev/x86-dev/face-ext-sdk/src/face_ext_sdk/face_ext_sdk.cpp 299 3
[2025-12-02 14:08:22.910]-[VS_E][src/app_face.cpp:101][face_detect_extract_feature] cvFaceExtDetAlignFeature failed, ret=3
[2025-12-02 14:08:22.910]-[VS_E][src/main.cpp:235][process] face_detect_extract_feature failed, ret=1
[2025-12-02 14:08:22.910]-[VS_I][src/main.cpp:282][process] total_count: 3, success_count: 2, fail_count: 1
```

```
total_count 标识输入图片的张数 success_count 表示成功提取的人数 fail_count表示失败的人数
```
##6、输出数据

输出的数据在 out目录下
```
#linux_face/out$ ls
fail.json  success.json
```

mode_version 标识当前使用的模型的版本号
Persons 对应人员的特征值数组
成功示例
```
#linux_face$ cat out/success.json 
{
	&quot;mode_version&quot;:&quot;711382&quot;,
	&quot;Person&quot;:[
		{&quot;PersonID&quot;:&quot;person_1&quot;,&quot;Name&quot;:&quot;test1&quot;,&quot;GroupID&quot;:&quot;testgroup&quot;,&quot;PersonType&quot;:0,&quot;Feature&quot;:&quot;ULuNu7ZQBz7sjB+7/DsRPifBCT6t+9K88TvXvT+vUr62QxG+yL43OmriET6/GOE9mWmzvai35z0AUqe9vZahvT+W7b0zLzY+wxVuPeHTlr1NniU+NFE1PSyUU76UcIC9luk8vakjCb7kUPk85rK3POI2ab2AyHy6Nm1WPm3PD7wtWSM+zNzmO15Gljv4p8U94CYRvR0fmz2loK89mX4UPl3Dtz4U+v+9GxYmvti7qT0t6409NuesPAqCYj2AN6Y98YV3PsKq5DzN9Pe91l9WvN4Vrj2UAZq7bAEuPk5p8z2i3Fq9qdxHvWwAqD3NGd+9lZNBPY+JBb6cQp088rUJPn/dBD3vwlU9bnTavOCu/j2qM1892vpJPYZNj70mQcm8mLQOvQRMiL14GAM9sLqbvjZNHT4NDkQ+xeJQvn5zWTwkHfO9XStRPPXF9D1iJEI+JB2AvVmBlz28ArM8UmaNvpFc0L3dwqi8RGezvErBOj77HnE+Y7FAPOb4+LwAy0s84MdmuyAk3b0zdxw+fscIPLbCmD1It8y8PAJ3PaL0tr0nA3q8Xy26PLSOIL5OzLk9aBgVvuij8D2XhV6+WfaLPj5yjD0LbkQ+MSOMPSXm5DyLZGE8SPKpvjLJzr2amos96IwjvlSSITz2jUo9hO8ePpDkur1RBAe+CHOeOp0meL2axOW9udylPBAnw7y3e+M8eFrJvSt8DT4LElW+1oNAPIoG1ryt8DM+24wfPtFnJ77tli896f4bvk1Pxz2+3ks9S1nvvVAbR774+3q8Q6EYvew3UD4iBqA8GZWwPQ//Fb5QGqA9eJ5tvNPTdz3n0ga9GkwMPqNKxL0POha+zVA0PL88fT7ZAw8+dN8sPeKPiz1X9mI9E3obPliGIjvKGNg9/1TqvRx2ND1CAC080k8RvqQrY7vSh8S8gEPfPQJmbT0W1ee9KLZnvYbS1L1hUje+dHGkvXgoxL0QkSY+s6IjvqUnIb0IUKQ9AmEwvgjIB76YUK29gPwPvrwYIL7/VYG98XbWvRB3sD2qW4O+ihH0u3MdMr4kApq9AwK3vmUqYL4bjcK9ihxHvvM2M74dYT09G2Ymvkt8jLwIUSc+P7CsPHSsAL5En4I9xlUBvvKOsr1IN8A96tOJvDDtLjvKtuo9WxYNvoiRGT5oIdg7r6OcPaZR271MVVG9E6nBPdj+0r0JTI8+UZ4RvrRYLD1zVL67LfWnPD/SPj1wg+G9HXMrPvD4J76aVtC84TEXPe5hvr0eebS9Xyd5Pkh6vz3sxLc9ZOozPmIGnDw9QwO+uEOQPYpNVj0apYS9zUmGPpHUvL17j6Q9mGVCvePA8b02YnA9sTa7vdjtlDq4zLg8G9YQvg==&quot;},
		{&quot;PersonID&quot;:&quot;person_2&quot;,&quot;Name&quot;:&quot;test2&quot;,&quot;GroupID&quot;:&quot;testgroup&quot;,&quot;PersonType&quot;:0,&quot;Feature&quot;:&quot;sP9svJ025j02nm09f8quPZrMGz4Go4c8JxKAPY/dq71Sc1y+KQEcPlZ0e7yt8tw91s+WvTHtZD2hiB2+u9jDvSvuIr5SojM+kJjTPeIDtr2r26k9b6lKPm1Gor2o98e9vhJBvk+I1r1t+i++qKwOvTg6nDu8FJs9GVKRPJBsi73HhUu8yIkHPRJv27y2ulI+vOkIvYOcFj0ws4o93rPoPfuKWb3wFd89M179vXBimT3sA4S92W96vYuQnb2faAk9V60APhcloTzUpBA9GBVMvUbdl7xSk8W8Uj7CvU6Ajj26iR69pXmRvpwitD3/TNa9TiTHvEzenz2h3CY9KhKGPYBCIjpnVpk93z3RvDx9JD5GHCw9vBxNPJWrP75e4QM9QR01PboPZr3vbBG85lEkvnFly7tUVKo9nW4Bvh0/IzvCDLK9M5PHPHqv1L2F9k89EvABPjzFEDyGQpc98PhwvjWMAL1V0wY+qkQaPUmStj0kxTY+zgxLvUhtIT7jmd290DoQPlpWM77FTFA9/Y6NPSF3mr3cZZC9LC5QvH6mrb2QhUc9uE6bvSUq9r1eXrM7MAyNvOKlgz1/9IO+MQirPmOAND5cJCY+oULOPBCGXzyUrUa8gblpvi3RwT1cEyC9YlDZvYixbLxJfeg9PP7bPcmueL0V04+9nejGvOAWv7weEpi9tLJzPfCD4j3IZVU8Zpc2vWG1BD1YViC+AogCPviA4r3qQYw+qgAmPhs8Yr7N0xo+6OwKPeKW3j0Uip89WLWavLhZED5y6Z09WLdJPW/M1T0YDte7nM5APoLpxbtPuRU9WLoMPX9i8L129iS+MkylPScmOT0w7Fo60neiPGj9xz37AQY+5NuNvX0nAz3PJIm94sw+PlMwij61d8q85kHCvEHwnzsMgRy++efbPa9pFr3CeiU+nn8DPqxyUT3EBAU94O8jvhwsTL4VpEG+n3sovsOzf71V06C7ofFQvvWf2L0SrwC+3sfBPLwA+r0Bqb09xmGbvkve2r0BFxa+fo9WvbSL6z2LWR++epv0vBFx/TxCfas9u9GYvhICJb3xm2A9lEaDvgAWZL5eXCG9LEjtvbo6Cr59Yzu9JB5zPTeTQ71d/2k8vUYmveNZNL2Wock9yH0ZPYSj4bwbEou9luoLvfQH/D38hec8//knPcCior3uMzE8JtP+vVxUcD1bVZ0+FXmGPf9qUj4s79s9BN/tvVSktz1NUrA90J+MPkhRI74YXuk9TazqPTx70D1gYr+8xTZfPuB/NT5cX6W8/+eXPvtfLz17p+69iKNou+XDM7zqTwi9NEwcPvxNF7vA5rK7suChvdmw3L1YPSe9W5dAvu6e8T37n8+9MgQvPA==&quot;}
	]
}
```
失败示例
```
kiven@ubuntu7:~/hi3516dv500/linux_face/out$ cat fail.json 
{
	&quot;mode_version&quot;:&quot;711382&quot;,
	&quot;Person&quot;:[
		{&quot;jpg_name&quot;:&quot;test3.jpg&quot;,&quot;PersonID&quot;:&quot;person_3&quot;,&quot;Name&quot;:&quot;test3&quot;,&quot;GroupID&quot;:&quot;testgroup&quot;,&quot;PersonType&quot;:0}
	]
}
```

success.json可用于下发人脸库

---

## 同步人脸库-特征值下发

> Page ID: 298031950

[TOC]

此功能需要和linux下特征值提取工具使用
人脸图片尽量是由设备抓拍的照片（windows 端工具 人像采集功能采集的照片），才具有较高准确性

## 同步人脸库
 ###接口概览
接口地址:`/VIID/Extend/ExtendFaceDB`

|  方法 | 参数|返回结果|
| ------------ | ------------ | ------------ |
|  GET |?DeviceID=34020000001320000086 |  &lt;PersonDBListObject&gt; |

建议一次下发人脸数不超过2000人

###返回体字段定义

| 名称  | 标识符  |  类型JSON  |  必选/可选 |  备注/信息来源
| ------------ | ------------ | ------------ | ------------ | ------------ |
|  任务唯一标识 | TaskID  |  String |  R | 任务唯一标识,自定义标识 |
|  模型的版本号 | mode_version  |  String |  R | 提取特征值使用的模型版本号 由特征提取工具生成 &lt;br/&gt; 必须和板端模型版本号匹配 否则下发不成功|
| 人员ID  |  PersonID | String  | R  | 用于标识是哪一个人，此值是唯一ID |
|  姓名 | Name  |  String |  R |  人员名称  |
| 所属人像库  |  GroupID | String  | R  |人员所属人像库 |
| 人员标识  |  PersonType | Integer  | R  |0 白名单 1黑名单 |
| 人员特征值 | Feature | string | R | linux工具提取的特征值|

###示例
URL：`/VIID/Extend/ExtendFaceDB?DeviceID=34020000001320000086`  方法：`GET`
Person 对象为 linux工具输出的success.json中的内容
响应体：
```json
{
	&quot;PersonDBListObject&quot;: {
		&quot;TaskID&quot;: &quot;1441307904689930241&quot;,
		&quot;mode_version&quot;:&quot;711382&quot;
		&quot;Person&quot;: [{
				&quot;PersonID&quot;: &quot;110100000011900000010220171219100515999830156479&quot;,
				&quot;Name&quot;: &quot;4V8FsvrVYG34WIXl9cVUvk/g==&quot;,
				&quot;GroupID&quot;: &quot;03742882aefb11eb9cea002ec777281b&quot;,
				&quot;PersonType&quot;: 0,
				&quot;Feature&quot;: &quot;特征值1&quot;
			},
			{
				&quot;PersonID&quot;: &quot;110100000011900000010220171219100515999830156478&quot;,
				&quot;Name&quot;: &quot;4V8FsvrVYGWI11Xl91cVUvk/g==&quot;,
				&quot;GroupID&quot;: &quot;03742882aefb11eb9cea002ec777281b&quot;,
				&quot;PersonType&quot;: 0,
				&quot;Feature&quot;: &quot;特征值2&quot;
			}
		]
	}
}
```
人脸库同步-特征值下发流程流程：
```text
	1、（必须）设备请求 /VIID/System/Keepalive接口，服务器在在返回数据种携带ExtendCmd=10004指令
	2、（必须）设备收到ExtendCmd=10004 后 调用/VIID/Extend/ExtendFaceDB同步人脸库
	3、（必须）同步完成后 会通过/VIID/Extend/ExtendConfirm接口 携带TaskId 通知服务器该人脸库的同步状态（成功、失败）
	4、（可选）设备请求 /VIID/System/Keepalive接口，服务器在在返回数据种携带ExtendCmd=10003指令
	5、（可选）设备收到ExtendCmd=10003 后 调用/VIID/Extend/ExtendReportFaceList接口上报设备中的人脸库
	6、（可选）设备请求 /VIID/System/Keepalive接口，服务器在在返回数据种携带ExtendCmd=10002指令
	7、（可选）设备收到ExtendCmd=10002 后 会直接删除设备中所有的人脸数据
```

---

# GB/T28181 Extended Protocol

## 官方文档

> Page ID: 298031377

[TOC]

[GBT28181官方文档](http://yctx.vs98.com:880/doc/gb28181_gat1400.zip &quot;GBT28181官方文档&quot;)


---

## 报警信息扩展

> Page ID: 298031774

[TOC]



## 报警输入上报扩展

对于有多路报警输入的设备，需要上传报警消息到28181平台的情况，对报警消息进行扩展
基于标准28181 `Notify`-&gt;`Alarm`消息进行扩展
`AlarmDescription` 可选值 `IOalarm`、`IOalarm1`
`IOalarm` 标识外部输入报警，只有一路报警输入 或者 有多路报警输入的第一路产生的报警
`IOalarm1` 多路报警输入的第二路产生的报警
- 上报示例
第一路报警
 ```xml
&lt;?xml version=&quot;1.0&quot;?&gt;
&lt;Notify&gt;
  &lt;CmdType&gt;Alarm&lt;/CmdType&gt;
  &lt;SN&gt;356&lt;/SN&gt;
  &lt;DeviceID&gt;34020000001320000001&lt;/DeviceID&gt;
  &lt;AlarmPriority&gt;4&lt;/AlarmPriority&gt;
  &lt;AlarmTime&gt;2024-10-10T10:10:10&lt;/AlarmTime&gt;
  &lt;AlarmMethod&gt;2&lt;/AlarmMethod&gt;
  &lt;AlarmDescription&gt;IOalarm&lt;/AlarmDescription&gt;
  &lt;Info&gt;&lt;/Info&gt;
&lt;/Notify&gt;
 ```
第二路报警
 ```xml
&lt;?xml version=&quot;1.0&quot;?&gt;
&lt;Notify&gt;
  &lt;CmdType&gt;Alarm&lt;/CmdType&gt;
  &lt;SN&gt;356&lt;/SN&gt;
  &lt;DeviceID&gt;34020000001320000001&lt;/DeviceID&gt;
  &lt;AlarmPriority&gt;4&lt;/AlarmPriority&gt;
  &lt;AlarmTime&gt;2024-10-10T10:10:10&lt;/AlarmTime&gt;
  &lt;AlarmMethod&gt;2&lt;/AlarmMethod&gt;
  &lt;AlarmDescription&gt;IOalarm1&lt;/AlarmDescription&gt;
  &lt;Info&gt;&lt;/Info&gt;
&lt;/Notify&gt;
 ```

---

## 4g模块信息上报

> Page ID: 298031371

[TOC]


## 4g模块信息上报
在Catalog 的MESSAGE Response消息中增加`DeviceHID`设备硬件id，`DeviceP2PID`设备p2pid，若设备不支持p2p，则没有该字段， `DeviceIMEI`国际移动设备识别码、`DeviceCCID`IC卡的识别号码字段，如果无卡或者未使用4g ，该字段可能为空。

- 示例

 ```xml
&lt;Response&gt;
	&lt;CmdType&gt;Catalog&lt;/CmdType&gt;
	&lt;SN&gt;1234&lt;/SN&gt;
	&lt;DeviceP2PID&gt;123456789ABCDEFGHIJK&lt;/DeviceP2PID&gt;
	&lt;DeviceID&gt;34020000001320000001&lt;/DeviceID&gt;
	&lt;DeviceHID&gt;D00230000300019&lt;/DeviceHID&gt;
	&lt;DeviceIMEI&gt;862130040141584&lt;/DeviceIMEI&gt;
	&lt;DeviceCCID&gt;898604D6102282428448&lt;/DeviceCCID&gt;
	&lt;SumNum&gt;1&lt;/SumNum&gt;
	&lt;DeviceList Num=&quot;1&quot;&gt;
		&lt;Item&gt;
			...
		&lt;/Item&gt;
	&lt;/DeviceList&gt;
&lt;/Response&gt;
```
 ```text
在Keepalive 消息中 增加了 信号强度、信号类型、运营商、经纬度、海拔高度等信息的上报，如果无卡或者未使用4g ，该字段可能为空。
经纬度 海拔需要设备模块支持，上报时优先上报设备实时定位的信息,如果设备未定位，采用web配置的位置信息
 ```
```xml
&lt;Notify&gt;
	&lt;CmdType&gt;Keepalive&lt;/CmdType&gt;
	&lt;SN&gt;1006&lt;/SN&gt;
	&lt;DeviceID&gt;51010000001320000888&lt;/DeviceID&gt;
	&lt;Status&gt;OK&lt;/Status&gt;
	&lt;SignalStrength&gt;87&lt;/SignalStrength&gt;
	&lt;Operator&gt;CT&lt;/Operator&gt;
	&lt;SignalType&gt;4G&lt;/SignalType&gt;
	&lt;Longitude&gt;104.05743266&lt;/Longitude&gt;
	&lt;Latitude&gt;30.57486866&lt;/Latitude&gt;
	&lt;Altitude&gt;505.6&lt;/Altitude&gt;
&lt;/Notify&gt;
 ```
 ```text
信号强度 SignalStrength：0-100   实际使用时需保证 &gt;= 80
运营商：Operator  CT/CTCC 电信 UNICOM联通 CMCC 移动 其他
信号类型：SignalType 4G/5G/其他  由于历史代码 此处写为 SignalTpye 后续已经修正 客户自行决定是否兼容
经度 Longitude  点分格式
纬度 Latitude 点分格式
海拔 Altitude （米）
 ```

---

## 人流统计上报

> Page ID: 298031372

[TOC]



## 人流统计上报
在心跳MESSAGE Notify中增加`PersonCountEnter` ，标识进入统计区域总人数。
在心跳MESSAGE Notify中增加`PersonCountLeave`，标识离开统计区域总人数。
&lt;font color=&quot;red&quot;&gt;当设备启用人流统计算法，并开启人流统计gb28181上报时，指令中才附带该字段。&lt;/font&gt;


- 示例

 ```json
&lt;?xml version=&quot;1.0&quot;?&gt;
&lt;Notify&gt;
  &lt;CmdType&gt;Keepalive&lt;/CmdType&gt;
  &lt;SN&gt;356&lt;/SN&gt;
  &lt;DeviceID&gt;34020000001320000001&lt;/DeviceID&gt;
  &lt;Status&gt;OK&lt;/Status&gt;
  &lt;PersonCountEnter&gt;123&lt;/PersonCountEnter&gt;
  &lt;PersonCountLeave&gt;60&lt;/PersonCountLeave&gt;
&lt;/Notify&gt;
 ```



---

## 已废弃-私有参数配置能力集获取

> Page ID: 298031373

## 私有参数配置能力集获取

为适应28281下发复杂私有参数配置信息，新增参数配置能力集获取指令
指令采用MESSAGE 的Quety消息，新增CmdType`GetVSConfigCapability`
指令消息类似于Catalog指令
- 时序图

```plantuml

@startuml
skinparam sequenceMessageAlign center
平台 -&gt; IPC: GetVSConfigCapability Request
IPC --&gt; 平台: 200 OK

平台 &lt;- IPC: Response
平台 --&gt; IPC: 200 OK
@enduml


```

- 示例
服务器发送查询指令

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
&lt;?xml version=&quot;1.0&quot;?&gt;
&lt;Query&gt;
  &lt;CmdType&gt;GetVSConfigCapability&lt;/CmdType&gt;
  &lt;SN&gt;17430&lt;/SN&gt;
  &lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
&lt;/Query&gt;

 ```



设备应答200 OK

```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0

```



设备发送GetVSConfigCapability的结果，`VSConfigCapability` 表示支持配置的参数,多个参数用英文逗号分隔，如果不支持参数配置，
`VSConfigCapability`为空

```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;GetVSConfigCapability&lt;/CmdType&gt;
		&lt;VSConfigCapability&gt;helmet_hs,motion&lt;/VSConfigCapability&gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
	&lt;/Response&gt;
```



服务器返回200 OK
 ```html
 	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```



---

## 已废弃-私有参数获取

> Page ID: 298031374

[TOC]


## 私有参数获取
&lt;font color=&quot;red&quot;&gt;当由于配置可能比较大，如果配置超过MTU，此指令只支持TCP&lt;/font&gt;

- 时序图

```plantuml

@startuml
skinparam sequenceMessageAlign center
平台 -&gt; IPC: message GetVSConfig
IPC --&gt; 平台: 200 OK

平台 &lt;- IPC: Response
平台 --&gt; IPC: 200 OK
@enduml
```


- 示例
服务器发送查询指令
`VSConfigType`表示要查询的配置类型，通过`GetVSConfigCapability`指令获取
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;GetVSConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;helmet_hs&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```


设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```



设备发送`GetVSConfig`的结果
`VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;GetVSConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;helmet_hs&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;json&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```





---

## Page 298031375 (failed)

*(Failed to fetch)*

---

## 已废弃-私有参数定义

> Page ID: 298031376


## 私有参数VSConfigType
可选值:`helmet_hs`（安全帽检测）
`helmet_hs`安全帽检测 json示例：
```json
{

       &quot;helmet_hs&quot;: {

              &quot;enable&quot;: 0,            //检测开关状态（1：开，0：关）
			  &quot;forbid_color_array&quot;:[2,3],  //在区域内禁止(抓拍)的颜色 0 无 黑 = 1,蓝 = 2,红 = 3,白 = 4,黄 = 5 最多有5个颜色

              &quot;event&quot;: {

                     &quot;audioalarmstatus&quot;: 2,     // 声音告警开关状态（1：开，2：关）

                     &quot;speaker_repeat&quot;: 0,       //声音播放重复次数: 0-6  实际播放次数+1

                     &quot;sound_file_no&quot;: 0,     //报警音编号 一般不去修改 或者在设备web端修改

                     &quot;trig_light&quot;: 2,            //灯光告警开关状态（1：开，2：关， -1：不支持）

                     &quot;light_not_flicker&quot;: 0,      //灯光告警类型，0=闪烁, 1=常亮

                     &quot;trig_light_flicker&quot;: 0,      //灯光闪烁: 0为高闪,1为中闪,2为低闪

                     &quot;trig_light_delay&quot;: 5,      //灯光延时时间 秒

                     &quot;trig_alarm_out&quot;: [0, 0],   //是否开启第1路 第二路报警输出 0 关闭 1开启

                     &quot;trig_record&quot;: 0,         //是否开启联动录像 0 关闭 1开启

                     &quot;trig_gb28181&quot;: 0,       //28181 消息推送 0 关闭 1开启

                     &quot;trig_onvif&quot;: 0,          // onvif  消息推送 0 关闭 1开启

                     &quot;trig_gat1400&quot;: 0,       // 1400   消息推送0 关闭 1开启

                     &quot;alarminterval&quot;: 1       //播报声音间隔 （秒）默认是 2+ alarminterval

              },

              &quot;timearea&quot;: {

                     &quot;showarea&quot;: 1,        //是否显示检测区域

                     &quot;all_time&quot;: 1,          //是否全天检测 1全天检测 0 分全天检测 只有为0 的时候才去处理period 中的时间段

                     &quot;refer_width&quot;: 1920,    //检测区域的参考坐标宽

                     &quot;refer_height&quot;: 1080,   //检测区域的参考坐标高

                     &quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],  //检测区域四边形坐标 左上角为原点 一般按左上角为起点顺时针方法依次填充

                     &quot;period&quot;: [  //周日到周6的时间段 8:0~18:0 8点到18点

                            [&quot;8:0~18:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],

                            [&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],

                            [&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],

                            [&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],

                            [&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],

                            [&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],

                            [&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]

                     ]

              }

       }
}
```

---

# GB28181 Private Params

## 私有参数获取说明

> Page ID: 298031390

[TOC]


## 私有参数获取
&lt;font color=&quot;red&quot;&gt;由于配置信令可能比较大，如果配置信令超过MTU，此指令只支持TCP&lt;/font&gt;

- 时序图

```plantuml

@startuml
skinparam sequenceMessageAlign center
平台 -&gt; IPC: message VS98GetConfig
IPC --&gt; 平台: 200 OK

平台 &lt;- IPC: Response
平台 --&gt; IPC: 200 OK
@enduml
```


- 示例
服务器发送查询指令
`VSConfigType`表示要查询的配置类型
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gb_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```


设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```



设备发送`VS98GetConfig`的结果`VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gb_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;json&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```






---

## 私有参数设置说明

> Page ID: 298031391

[TOC]


## 私有参数设置说明
&lt;font color=&quot;red&quot;&gt;由于配置信令可能比较大，如果配置信令超过MTU，此指令只支持TCP，设置参数时必须先获取参数，修改其中需要修改的内容后在进行设置&lt;/font&gt;
- 时序图

```plantuml

@startuml
skinparam sequenceMessageAlign center
平台 -&gt; IPC: message VS98SetConfig
IPC --&gt; 平台: 200 OK

平台 &lt;- IPC: Response
平台 --&gt; IPC: 200 OK
@enduml
```


- 示例
	服务器发送配置指令,`VSConfigType`为需要设置的参数类型，`VSConfig`为json格式的参数


 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gb_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;json&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gb_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```



---

## 设备信息和能力级获取

> Page ID: 298031392


[TOC]

- 此参数只支持获取，不支持配置
	  
#### 数据指令
```xml
	&lt;VSConfigType&gt;dev_get&lt;/VSConfigType&gt;
```
#### 设备能力集数据定义
```JSON

{
	&quot;max_fps&quot;: 30,  			//最大帧率
	&quot;max_kbps&quot;: 40960,			//最大帧率
	&quot;bm_type&quot;: [{				//支持的编码格式
		&quot;name&quot;: &quot;h264&quot;,			//h264编码格式描述
		&quot;value&quot;: 0				//编码格式值
	}, {
		&quot;name&quot;: &quot;h265&quot;,			//h265编码格式描述
		&quot;value&quot;: 1				//编码格式值
	}],
	&quot;stream0&quot;: [{				//主码流编码支持的分辨率和对应的下标
		&quot;name&quot;: &quot;2560x1440&quot;,	//分辨率 
		&quot;value&quot;: 0				//对应下标
	}, {
		&quot;name&quot;: &quot;1920x1080&quot;,
		&quot;value&quot;: 1
	}, {
		&quot;name&quot;: &quot;1280x720&quot;,
		&quot;value&quot;: 2
	}, {
		&quot;name&quot;: &quot;640x360&quot;,
		&quot;value&quot;: 3
	}],
	&quot;stream1&quot;: [{				//子码流编码支持的分辨率和对应的下标
		&quot;name&quot;: &quot;1280x720&quot;,
		&quot;value&quot;: 2
	}, {
		&quot;name&quot;: &quot;640x360&quot;,
		&quot;value&quot;: 3
	}],
	&quot;gb28181&quot;: 2,				//是否支持国标    0-不支持     1-支持单国标   2-支持双国标
	&quot;rtmp&quot;: 0,					//是否支持rtmp        1-支持 0-不支持
	&quot;webrtc&quot;: 1,				//支持webrtc        1-支持 0-不支持
	&quot;net_reboot&quot;: 1,			//是否支持断网重启        1支持  0-不支持
	&quot;net&quot;: 1,					//是否支持有线        1-支持 0-不支持
	&quot;wifi&quot;: 0,					//是否支持wifi        1-支持 0-不支持
	&quot;lte&quot;: 0,					//是否支持4G     1-支持 0-不支持 
	&quot;light&quot;: 1,					//是否支持白光灯        1-支持 0-不支持
	&quot;wdr&quot;: 0,					//是否支持宽动态        1-支持 0-不支持
	&quot;ivp_size&quot;: &quot;800x480&quot;,		//人形检测分辨率
	&quot;aichose&quot;: 1,				//是否支持AI算法切换        1-支持 0-不支持
	&quot;ai_type&quot;: 2,				//当前运行的算法枚举值ChoseType_e;
	&quot;gat1400&quot;: 1,				//是否支持GA/T1400
	&quot;ptz&quot;: 0,							//是否支持云台
	&quot;iqfile_list&quot;: [&quot;gc4023&quot;],			//当前IQ
	&quot;lang_list&quot;: [&quot;en&quot;, &quot;chs&quot;, &quot;jap&quot;],	//支持语种
	&quot;alarm_out&quot;: 0,						//是否支持报警输出        1-支持 0-不支持
	&quot;alarm_in&quot;: 1,						//是否支持报警输入        1-支持 0-不支持
	&quot;sound_file_num&quot;: 30,				//最大音频文件数量
	&quot;pre_record&quot;: 1,					//是否支持预录像 			1-支持 0-不支持
	&quot;mj_hw&quot;: 0,							//是否为海外版本			1-是 0-否
	&quot;od&quot;: 1								//是否支持遮挡检测 			1-支持 0-不支持
}
```





---

## 主子码流配置获取与设置

> Page ID: 298031393

[TOC]

## 消息结构
```JSON
{
	&quot;bm_type&quot;: 0,
	&quot;fbl&quot;: 0,
	&quot;frame&quot;: 15,
	&quot;bitrate&quot;: 3000,
	&quot;I_interval&quot;: 3000,
	&quot;rc_mode&quot;: 1,
	&quot;quality&quot;: 1
}
```
## 主/子码流参数定义

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|bm_type |是   |int|编码方式 0--H264      1--H265|
|frame |是   |int|帧率 最小值：2 ，最大值：设备信息中返回的max_fps|
|fbl |是   |int |分辨率编号 主码流使用设备信息接口返回的stream0中对应分辨率的value,子码流使用stream1|
|bitrate |是   |int |码率 最小值:50 ,最大值:设备信息接口中返回的max_kbps|
|I_interval |否   |int|I帧间隔（毫秒）需要设置为1000的整数倍 最小值：1000，最大值：5000 （若未返回此字段， 默认填充4000)|
|quality |否   |int	|图像质量 0-最好 1-中等 2-一般（若未返回此字段， 默认填充0）|
|rc_mode |否   |int	|编码方式 0-AVBR 1-VBR 2-CBR（若未返回此字段， 默认填充0）|
&lt;font color=&quot;red&quot;&gt;码流参数设置时，一定要根据dev_get的返回值，去修改对应参数，设置不合法值，可能导致设备启动失败&lt;/font&gt;

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;video_get&lt;/VSConfigType&gt;  //video_get主码流 video1_get 子码流
```
###参数获取交互示例
服务器发送查询指令 `video_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;video_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```


设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`video_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;video_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			&quot;bm_type&quot;: 0,
			&quot;fbl&quot;: 0,
			&quot;frame&quot;: 15,
			&quot;bitrate&quot;: 3000,
			&quot;I_interval&quot;: 3000,
			&quot;rc_mode&quot;: 1,
			&quot;quality&quot;: 1
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;video_set&lt;/VSConfigType&gt;  //video_set主码流 video1_set 子码流
```
###参数设置交互示例

服务器发送video_set配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;video_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			&quot;bm_type&quot;: 0,
			&quot;fbl&quot;: 0,
			&quot;frame&quot;: 15,
			&quot;bitrate&quot;: 3000,
			&quot;I_interval&quot;: 3000,
			&quot;rc_mode&quot;: 1,
			&quot;quality&quot;: 1
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;video_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```


---

## 有线网络配置获取与设置

> Page ID: 298031394


[TOC]

## 消息结构
```JSON
{
	&quot;dhcp&quot;: 1,
	&quot;ip&quot;: &quot;192.168.1.147&quot;,
	&quot;netmask&quot;: &quot;255.255.255.0&quot;,
	&quot;gateway&quot;: &quot;192.168.1.1&quot;,
	&quot;dns&quot;: &quot;114.114.114.114;8.8.8.8;&quot;
}
```
## 有线网络参数定义

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|dhcp |是   |int|是否为dhcp 0--static      1--dhcp|
|ip |是   |string|ipv4地址 |
|netmask |是   |string |子网掩码|
|gateway |是   |string |ipv4 网关|
|dns |是   |string|dns地址支持设置值主/子dns地址用';'分割|
&lt;font color=&quot;red&quot;&gt;获取参数时，当dhcp=0时候，ip，netmask，gateway，dns表示设备的实际网络信息，当dhcp为1时，ip，netmask，gateway，dns不代表设备网络信息。仅是一个配置&lt;/font&gt;

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;net_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `net_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;net_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```


设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`video_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;net_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			&quot;dhcp&quot;: 0,
			&quot;ip&quot;: &quot;192.168.1.147&quot;,
			&quot;netmask&quot;: &quot;255.255.255.0&quot;,
			&quot;gateway&quot;: &quot;192.168.1.1&quot;,
			&quot;dns&quot;: &quot;114.114.114.114;8.8.8.8;&quot;
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;net_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送net_set配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;net_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			&quot;dhcp&quot;: 0,
			&quot;ip&quot;: &quot;192.168.1.147&quot;,
			&quot;netmask&quot;: &quot;255.255.255.0&quot;,
			&quot;gateway&quot;: &quot;192.168.1.1&quot;,
			&quot;dns&quot;: &quot;114.114.114.114;8.8.8.8;&quot;
		}}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;net_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```


---

## wifi配置获取与设置

> Page ID: 298031395

[TOC]

## 消息结构
```JSON
{
	&quot;wifi_ssid&quot;: &quot;wifi_ssid&quot;,
	&quot;wifi_pass&quot;: &quot;12345678&quot;,
	&quot;dhcp&quot;: 1,
	&quot;ip&quot;: &quot;192.168.1.147&quot;,
	&quot;netmask&quot;: &quot;255.255.255.0&quot;,
	&quot;gateway&quot;: &quot;192.168.1.1&quot;,
	&quot;dns&quot;: &quot;114.114.114.114;8.8.8.8;&quot;
}
```
##wifi参数定义
|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|dhcp |int   |dhcp/static 获取IP|0--static      1--dhcp 一般都为1 当该项为1时，gateway ip netmask为默认值|
|dns |string   |dns解析地址|默认：114.114.114.114;8.8.8.8;|
|gateway |string   |网络网关地址 |网关IP|
|ip |string   |IP |本机IP地址 |
|netmask |string   |子网掩码 |默认：255.255.255.0|
|wifi_ssid |string   |当前连接WIFI的SSID |可能为空|
|wifi_pass |string   |当前连接WIFI的登录密码 |可能为空 |

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;wifi_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `wifi_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;wifi_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`wifi_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;wifi_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			&quot;wifi_ssid&quot;: &quot;wifi_ssid&quot;,
			&quot;wifi_pass&quot;: &quot;12345678&quot;,
			&quot;dhcp&quot;: 1,
			&quot;ip&quot;: &quot;192.168.1.147&quot;,
			&quot;netmask&quot;: &quot;255.255.255.0&quot;,
			&quot;gateway&quot;: &quot;192.168.1.1&quot;,
			&quot;dns&quot;: &quot;114.114.114.114;8.8.8.8;&quot;
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;wifi_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送`wifi_set`配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;wifi_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			&quot;wifi_ssid&quot;: &quot;wifi_ssid&quot;,
			&quot;wifi_pass&quot;: &quot;12345678&quot;,
			&quot;dhcp&quot;: 1,
			&quot;ip&quot;: &quot;192.168.1.147&quot;,
			&quot;netmask&quot;: &quot;255.255.255.0&quot;,
			&quot;gateway&quot;: &quot;192.168.1.1&quot;,
			&quot;dns&quot;: &quot;114.114.114.114;8.8.8.8;&quot;
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;wifi_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```


---

## 移动侦测配置获取与设置

> Page ID: 298031396

[TOC]

## 消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;level&quot;: 2,
	&quot;frequency&quot;: 1,
	&quot;trig_speaker&quot;: 0,
	&quot;trig_speaker_repeat&quot;: 0,
	&quot;sound_file_no&quot;: 0,
	&quot;trig_record&quot;: 0,
	&quot;trig_msgpush&quot;: 1,
	&quot;trig_gb28181&quot;: 1,
	&quot;trig_onvif&quot;: 0,
	&quot;trig_gat1400&quot;: 0,
	&quot;trig_light&quot;: 0,
	&quot;light_not_flicker&quot;: 0,
	&quot;trig_light_flicker&quot;: 0,
	&quot;trig_light_delay&quot;: 0,
	&quot;trig_alarm_out&quot;: [0, 0],
	&quot;gat1400_snapinterval&quot;: 15,
	&quot;all_time&quot;: 1,
	&quot;period&quot;: [
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
	],
	&quot;points&quot;: [
		[&quot;0:0&quot;, &quot;640:0&quot;, &quot;640:360&quot;, &quot;0:360&quot;],
		[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;],
		[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;],
		[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;]
	],
	&quot;refer_width&quot;: 640,
	&quot;refer_height&quot;: 360
}
```
##移动侦测参数定义

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |移动侦测开关|0--关闭      1--开启|
|level |int   |移动侦测灵敏度 |0-4, 0为迟钝,4为灵敏|
|frequency |int   |侦测频率|不在使用|
|trig_speaker |int   |联动告警音	|0-不开启联动   1-开启联动|
|trig_speaker_repeat |int   |告警音重复次数	|0-6次  注：实际播报次数为trig_speaker_repeat+1|
|sound_file_no |int   |联动告警音编号	| 0-6|
|trig_record |int   |联动告录像	|0--关闭      1--开启 |
|trig_msgpush |int   |联动消息推送	|0--关闭      1--开启 |
|trig_gb28181 |int   |GB28181联动消息推送	|0--关闭      1--开启 |
|trig_onvif |int   |onvif联动消息推送	|0--关闭      1--开启 |
|trig_gat1400 |int   |GA/T1400联动图片推送	|0--关闭      1--开启 |
|trig_light |int   |联动灯光	|0--关闭      1--开启 |
|light_not_flicker |int   |联动灯光是否闪烁|0--闪烁      1--常量 |
|trig_light_flicker |int   |联动灯光闪烁频率 	|0为高闪,1为中闪,2为低闪 |
|trig_light_delay |int   |联动灯光持续时间	|0-10秒(需设备支持灯光) |
|gat1400_snapinterval |int   |1400上报间隔 |秒数 15-300|
|trig_alarm_out |array   |联动报警输出list	|元素值 0 -不开启联动 1-开启联动 (设备报警输出数量需大于0)|
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |array   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|refer_width |int   |坐标参考分辨率宽	| 一般不去修改|
|refer_height |int   |坐标参考分辨率高	| 一般不去修改|
|points |array   |检测区域坐标	| 凸四边形坐标，顺时针记录坐标位置，一个数组表示一个 四边形区域，一般最多设置2个区域|
##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;alarm_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `alarm_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;alarm_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`alarm_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;alarm_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;alarm_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送`alarm_set`配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;alarm_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;alarm_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```



---

## 区域入侵配置获取与设置

> Page ID: 298031397

[TOC]

## 消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;level&quot;: 2,
	&quot;trig_speaker&quot;: 0,
	&quot;trig_speaker_repeat&quot;: 0,
	&quot;sound_file_no&quot;: 10,
	&quot;trig_record&quot;: 0,
	&quot;trig_msgpush&quot;: 0,
	&quot;trig_gb28181&quot;: 1,
	&quot;trig_onvif&quot;: 0,
	&quot;trig_gat1400&quot;: 0,
	&quot;trig_light&quot;: 0,
	&quot;light_not_flicker&quot;: 0,
	&quot;trig_light_flicker&quot;: 0,
	&quot;trig_light_delay&quot;: 0,
	&quot;trig_alarm_out&quot;: [0, 0],
	&quot;gat1400_snapinterval&quot;: 15,
	&quot;show_area&quot;: 2,
	&quot;refer_size&quot;: 41943400,
	&quot;shotstatus&quot;: 0,
	&quot;all_time&quot;: 1,
	&quot;period&quot;: [
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
	],
	&quot;points&quot;: [
		[&quot;12:6&quot;, &quot;170:8&quot;, &quot;176:354&quot;, &quot;11:355&quot;],
		[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;],
		[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;],
		[&quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;, &quot;0:0&quot;]
	]
}
```
##区域入侵参数定义

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |区域入侵开关|0--关闭      1--开启|
|level |int   |区域入侵灵敏度 |0-4, 0为迟钝,4为灵敏|
|trig_speaker |int   |联动告警音	|0-不开启联动   1-开启联动|
|trig_speaker_repeat |int   |告警音重复次数	|0-6次  注：实际播报次数为trig_speaker_repeat+1|
|sound_file_no |int   |联动告警音编号	| 0-6|
|trig_record |int   |联动告录像	|0--关闭      1--开启 |
|trig_msgpush |int   |联动消息推送	|0--关闭      1--开启 |
|trig_gb28181 |int   |GB28181联动消息推送	|0--关闭      1--开启 |
|trig_onvif |int   |onvif联动消息推送	|0--关闭      1--开启 |
|trig_gat1400 |int   |GA/T1400联动图片推送	|0--关闭      1--开启 |
|trig_light |int   |联动灯光	|0--关闭      1--开启 |
|light_not_flicker |int   |联动灯光是否闪烁|0--闪烁      1--常量 |
|trig_light_flicker |int   |联动灯光闪烁频率 	|0为高闪,1为中闪,2为低闪 |
|trig_light_delay |int   |联动灯光持续时间	|0-10秒(需设备支持灯光) |
|trig_alarm_out |array   |联动报警输出list	|元素值 0 -不开启联动 1-开启联动 (设备报警输出数量需大于0)|
|gat1400_snapinterval |int   |1400上报间隔 |秒数 15-300|
|show_area |int   |osd显示检测区域	|0，2--关闭      1--开启 |
|all_time |int   |全天侦测 |0--非全天      1-全天|
|period |array   |非全天侦测时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|
|refer_size |int   |坐标参考分辨率 高16位为宽 	低16位为高| 一般不去修改|
|points |array   |检测区域坐标	| 凸四边形坐标，顺时针记录坐标位置，一个数组表示一个 四边形区域，一般最多设置2个区域|
##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;invade_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `invade_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;invade_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`alarm_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;invade_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;invade_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送`invade_set`配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;invade_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;invade_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```




---

## 录像配置获取与设置

> Page ID: 298031398

[TOC]

## 消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;all_time&quot;: 0,
	&quot;pre_record&quot;: 5,
	&quot;period&quot;: [
		[&quot;0:00~23:59&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:00~23:59&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:00~23:59&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:00~23:59&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:00~23:59&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:00~23:59&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:00~23:59&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
	]
}
```
##录像参数定义

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |录像开关|0--关闭      1--开启|
|all_time |int   |全天录像 |0--非全天      1-全天|
|pre_record |int   |预录像时长 秒|0-15|
|period |array   |非全天录像时间段 |从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;record_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `record_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;record_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`record_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;record_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;record_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送`record_set`配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;record_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;record_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```





---

## 音频输入输出配置获取与设置

> Page ID: 298031399

[TOC]

## 消息结构
```JSON
{
	&quot;enable_in&quot;: 1,
	&quot;in_volume&quot;: 100,
	&quot;enable_out&quot;: 1,
	&quot;out_volume&quot;: 100
}
```
##音频输入输出参数定义

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable_in |int   |音频输入|0--关闭      1--开启|
|in_volume |int   |输入音量 |0-100|
|enable_out |int   |音频输出 秒|0--关闭      1--开启|
|out_volume |int   |输出音量 |0-100|

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;voice_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `voice_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;voice_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`voice_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;voice_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;voice_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送`voice_set`配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;voice_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;voice_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```





---

## TF卡信息获取与格式化

> Page ID: 298031400

[TOC]

## 消息结构
```JSON
{
	&quot;format_process&quot;: 0,
	&quot;free&quot;: &quot;51333&quot;,
	&quot;size&quot;: &quot;60872&quot;,
	&quot;status&quot;: 1
}
```
##TF卡参数定义

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|format_process |int   |格式化进度|0-100|
|free |string   |剩余空间 |单位为M|
|size |string   |总空间 秒|单位为M|
|status |int   |sd卡状态  |0-sd卡不存在 1-正常 2-未格式化 3-格式化成功 4-只读 5-格式化中|

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;tf_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `tf_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;tf_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`tf_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;tf_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##TF卡格式化
### 数据指令
```xml
	&lt;VSConfigType&gt;tf_format&lt;/VSConfigType&gt;
```
###TF卡格式化

服务器发送`tf_format`配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;tf_format&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;tf_format&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```






---

## 时区配置获取与设置

> Page ID: 298031401

[TOC]

## 消息结构
```JSON
{
	&quot;timezone&quot;: 480,
	&quot;ntp_svr&quot;: &quot;xxxxx&quot;,
	&quot;ntp_interval&quot;: 60,
	&quot;timing_mode&quot;: 0
}
```
##录像参数定义

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|timezone |int   |时区分钟数 60*时区编号  东8区 60*8=480 |-720到720|
|ntp_svr |string   |ntp校时服务地址| 服务器地址|
|ntp_interval |int   |ntp校时间隔 | 60-1440|
|timing_mode |int   |ntp校时方式 |0-默认校时 1-指定NTP服务器 2-onvif校时 3-国标校时 4-1400校时|

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;timezone_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `timezone_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;timezone_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`timezone_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;timezone_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;timezone_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送`timezone_set`配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;timezone_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;timezone_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```





---

## OSD配置获取与设置

> Page ID: 298031402

[TOC]

## 消息结构
```JSON
{
	&quot;osd_list&quot;: [{
		&quot;enable&quot;: 1,
		&quot;x&quot;: 8,
		&quot;y&quot;: 4
	}, {
		&quot;enable&quot;: 1,
		&quot;text&quot;: &quot;osd_text_line&quot;,
		&quot;x&quot;: 8,
		&quot;y&quot;: 340
	}, {
		&quot;enable&quot;: 0,
		&quot;text&quot;: &quot;&quot;,
		&quot;x&quot;: -2,
		&quot;y&quot;: 250
	}, {
		&quot;enable&quot;: 0,
		&quot;text&quot;: &quot;&quot;,
		&quot;x&quot;: -2,
		&quot;y&quot;: 268
	}, {
		&quot;enable&quot;: 0,
		&quot;text&quot;: &quot;&quot;,
		&quot;x&quot;: -2,
		&quot;y&quot;: 286
	}, {
		&quot;enable&quot;: 0,
		&quot;text&quot;: &quot;&quot;,
		&quot;x&quot;: -2,
		&quot;y&quot;: 304
	}, {
		&quot;enable&quot;: 0,
		&quot;text&quot;: &quot;&quot;,
		&quot;x&quot;: -2,
		&quot;y&quot;: 322
	}, {
		&quot;enable&quot;: 0,
		&quot;text&quot;: &quot;&quot;,
		&quot;x&quot;: -2,
		&quot;y&quot;: 340
	}],
	&quot;date_format&quot;: 4,
	&quot;time_format&quot;: 3
}
```
##OSD参数定义
|data数据|类型|说明|取值范围|
|:-----  |:-----|:-----|-----                           |
|date_format |int   |日期格式|0:M/d/yyyy  example: 3/6/2013 1:MM/dd/yyyy  example: 03/06/2013 2:dd/MM/yyyy  example: 06/03/2013 3:yyyy/MM/dd  example: 2013/03/06 4:yyyy-MM-dd  example: 2013-06-03 5:dddd, MMMM dd, yyyy  example: Wednesday, March 06, 2013	6:MMMM dd, yyyy  example: March 06, 2013 7:dd MMMM, yyyy  example: 06 March, 2013|
|time_format |int   |时间格式|0:h:mm:ss tt  example: 2:14:21 PM 1:hh:mm:ss tt  example: 02:14:21 PM 2:H:mm:ss  example: 14:14:21 3:HH:mm:ss  example: 14:14:21|
|osd_list |list   |支持的8个OSD的集合 |osd_list[0]为时间日期OSD，其余为自定义OSD|

|osd_list元素|类型|说明|取值范围|
|:-----  |:-----|:----- |-----                           |
|enable |int   |OSD显示与否|0-不显示  1-显示|
|text |string   |OSD文字信息| OSD长度&lt;= 64|
|x |int   |支持的8个OSD的集合 | 0-靠左   -1-居中  -2-靠右|
|y |int   |支持的8个OSD的集合 |340-底部倒数第0行   322-底部倒数第一行 304-底部倒数第二行 286-底部倒数第三行 268-底部倒数第四行 250-底部倒数第五行 左边按照640*360的参考分辨率计算|
##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;osd_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `osd_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;osd_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`osd_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;osd_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;osd_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送`osd_set`配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;osd_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;osd_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```





---

## 灯光亮度/夜视模式配置获取与设置

> Page ID: 298031403


[TOC]

## 消息结构
```JSON
{
	&quot;light_level&quot;: 50,
	&quot;light_wkmode&quot;: 0
}
```
##灯光亮度/夜视模式参数定义

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|light_level |int   |灯光亮度|0-100|
|light_wkmode |int   |灯光工作模式|0表示匹配设备本身, 1-红外,2-全彩,3-智能全彩|

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;light_mode_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `light_mode_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;light_mode_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`light_mode_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;light_mode_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置(需要设备支持灯光)
### 数据指令
```xml
	&lt;VSConfigType&gt;light_mode_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送`light_mode_set`配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;light_mode_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;light_mode_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```






---

## GB28181配置获取与设置

> Page ID: 298031404

[TOC]

## 消息结构
```JSON
{
	&quot;enable&quot;: 0,
	&quot;stream_num&quot;: 0,
	&quot;server_domain&quot;: &quot;4101050000&quot;,
	&quot;server_id&quot;: &quot;41010500002000000001&quot;,
	&quot;server_addr&quot;: &quot;192.168.1.76&quot;,
	&quot;server_port&quot;: 5060,
	&quot;server_pass&quot;: &quot;admin123&quot;,
	&quot;dev_port&quot;: 5060,
	&quot;device_id&quot;: &quot;41010500001320000001&quot;,
	&quot;channel_id&quot;: &quot;41010500002020000001&quot;,
	&quot;alarm_id&quot;: &quot;41010500001340000010&quot;,
	&quot;expire_time&quot;: 3600,
	&quot;hart_time&quot;: 30,
	&quot;hart_num&quot;: 3,
	&quot;proto_type&quot;: 0,
	&quot;protocol_version&quot;: 0
}
```
## 参数定义
|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |国标开关	|0--关闭 &lt;br/&gt; 1--开启|
|server_id |string   |SIP服务器id |字符串|
|server_addr |string   |SIP服务器地址 |字符串|
|server_domain |string   |SIP域 |字符串|
|server_port |int   |SIP服务器端口	|整型 |
|server_pass |string   |密码 |字符串|
|dev_port |int   |设备本地端口	|整型 |
|device_id |string   |设备id |字符串|
|alarm_id |string   |报警id |字符串|
|expire_time |int   |注册有效时长	|	秒数1-86400区间 |
|hart_time |int   |心跳周期	|	秒数1-86400区间 |
|hart_num |int   |心跳超时数	|	秒数2-30区间 |
|proto_type |int   |网络方式	|	0-UDP &lt;br/&gt; 1-TCP |
|stream_num |int   |码流	|	0-主码流 &lt;br/&gt; 1-子码流 |
|protocol_version |int   |协议版本	|	0-GBT28181-2016 &lt;br/&gt; 1-GBT28181-2022 |

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;gb_get&lt;/VSConfigType&gt;  //gb_get 国标1配置 gb_1_get国标2配置
```
###参数获取交互示例
服务器发送查询指令 `gb_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gb_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```


设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`gb_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gb_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;gb_set&lt;/VSConfigType&gt;  //gb_set 国标1设置 gb_1_set 国标2设置
```
&lt;font color=&quot;red&quot;&gt;当两个国标配置都启用的时候，协议只能同时使用TCP/UDP，dev_port要配置为不同的端口,由于重新设置了28181配置，设备会重连服务器，服务器可能不能是收到设备返回设置是否成功的消息&lt;/font&gt;
###参数设置交互示例

服务器发送gb_set配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gb_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gb_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```



---

## GAT1400配置获取与设置

> Page ID: 298031405

[TOC]

## 消息结构
```JSON
{
	&quot;enable&quot;: 0,
	&quot;gat_1400_addr&quot;: &quot;http://192.168.1.199:1888&quot;,
	&quot;user&quot;: &quot;admin&quot;,
	&quot;password&quot;: &quot;1111111&quot;,
	&quot;device_id&quot;: &quot;15010001491119000101&quot;,
	&quot;channel_id&quot;: &quot;5010001491119000101&quot;,
	&quot;heart_time&quot;: 30,
	&quot;heart_num&quot;: 3
}
```
## 参数定义
|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |1400开关	|0--关闭      1--开启|
|gat_1400_addr |string   |视图库上报地址 |字符串|
|user |string   |视图库用户名 |字符串|
|password |string   |视图库密码 |字符串|
|device_id |string   |设备id	|整型 |
|channel_id |string   |通道id |字符串|
|hart_time |int   |心跳周期	|	秒数5-300区间 |
|hart_num |int   |心跳超时数	|	2-10 |


##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;gat_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `gat_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gat_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```


设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`gat_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gat_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;gat_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送gat_set配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gat_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;gat_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```




---

## 定时抓拍配置获取与设置

> Page ID: 298031406

[TOC]

## 消息结构
```JSON
{
	&quot;enable&quot;: 0,
	&quot;interval_time&quot;: 60,
	&quot;all_time&quot;: 1,
	&quot;period&quot;: [
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
	]
}
```
##定时抓拍参数定义
|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |全景抓拍开关|0--关闭      1--开启|
|all_time |int   |全天录像 |0--非全天      1-全天|
|interval_time |int   |抓拍间隔 秒| 10 - 28800|
|period |array   | 非全天抓拍时间段|从周天开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;timedcap_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `timedcap_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;timedcap_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`timedcap_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;timedcap_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;timedcap_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送`timedcap_set`配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;timedcap_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;timedcap_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```






---

## 报警输出配置获取与控制

> Page ID: 298031407

[TOC]

-需要设备支持报警输出
## 报警输出通道有效性查询消息结构
```JSON
{
	&quot;gpio_alarm_out&quot;: [{
		&quot;state&quot;: 1
	}, {
		&quot;state&quot;: 1
	}]
}
```
##报警输出通道有效性参数定义
|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|gpio_alarm_out |list   |通道集合| 数组0 标识第一通道 数组1 标识第二通道 state 0 报警输出通道不可用    state 1 报警输出通道可用|
## 报警输出通道控制消息结构
```JSON
{
	&quot;channel&quot;:0 ,
	&quot;open&quot;: 0
}
```
##报警输出通道控制参数定义
|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|channel |int   |通道|0 第一通道 1 第二通道|
|open |int   |开关状态|0-关闭 1-打开 （注：此方式手动开启报警输出，必须手动关闭 )|

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;alarm_out_get&lt;/VSConfigType&gt;
```
####参数获取交互示例
服务器发送查询指令 `alarm_out_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;alarm_out_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`alarm_out_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;alarm_out_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考报警输出通道有效性查询消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##报警输出控制
-手动控制
### 数据指令
```xml
	&lt;VSConfigType&gt;alarm_work&lt;/VSConfigType&gt;
```
####参数设置交互示例

服务器发送`alarm_work`控制指令,`VSConfig`为json格式的参数

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;alarm_work&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参考报警输出通道控制消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;alarm_work&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```







---

## 变焦曲线校准

> Page ID: 298031408

[TOC]

需要设备支持变焦
#### 数据指令
```xml
	&lt;VSConfigType&gt;align_curve&lt;/VSConfigType&gt;
```

###参数获取交互示例
服务器发送align_curve指令

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;align_curve&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;align_curve&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```

---

## 日夜切换模式配置获取与设置

> Page ID: 298031409


[TOC]

## 消息结构
```JSON
{
	&quot;antiflicker&quot;: 0,
	&quot;wdr&quot;: 0,
	&quot;flip&quot;: 0,
	&quot;mirror&quot;: 0,
	&quot;ai_isp_mode&quot;: 0,
	&quot;light_work&quot;: {
	&quot;enable&quot;: 0,
	&quot;worktime&quot;: &quot;0:0-0:0&quot;
	},
	&quot;light_level&quot;: 50
}
```
## 参数定义

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|antiflicker |int   |工频抗闪|0--关闭  50-50HZ    60--60HZ|
|wdr |int   |宽动态|0--关闭    1--开启  需设备支持wdr|
|flip |int   |图像翻转 |0-不翻转  1-翻转|
|mirror |int   |图像镜像 |0-不镜像  1-镜像|
|ai_isp_mode |int   |AI ISP |0-降噪  1-轻量级降噪   2-细节   3-轻量级细节 需支持AIISP|
|light_level |int   |灯光亮度 | -1：关闭   0-自动 &gt;0亮度等级0-100 |
|light_work |obj   |灯光工作模式 | obj|

|light_work数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |日夜切换模式|0--日夜自动切换  1-日夜定时切换|
|worktime |string   |日夜定时切换时间段 日夜定时切换有效| 白天时间断 例如: &quot;1:0-20:0&quot;|

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;light_work_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `light_work_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;light_work_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```


设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`light_work_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;light_work_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;light_work_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送light_work_set配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;light_work_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参数定义
		}}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;light_work_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```



---

## 杂项配置获取与设置

> Page ID: 298031410


[TOC]

## 消息结构
```JSON
{
	&quot;onvif_check_auth&quot;: 1,
	&quot;rtsp_check_auth&quot;: 0,
	&quot;frame_reduction&quot; : 0,
	&quot;alarm_delay&quot;: [5, 5],
	&quot;event_merge&quot; : 0,
	&quot;merge_duration&quot; : 10,
	&quot;disable_reboot&quot; : 0
}
```
##参数定义

|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|onvif_check_auth |int   |onvif密码校验|0--不校验    1--校验|
|rtsp_check_auth |int   |rtsp校验密码|0--不校验    1--校验|
|frame_reduction |int   |自动降帧开关  默认开启|0--不降帧  1--降帧 (某些平台可能没有此配置)|
|alarm_delay |list   |报警输出对应通道延时配置秒数：5-600  需设备支持报警输出|秒数5-600|
|event_merge |int   |AI信息本地存储事件合并开关|0--不合并    1--合并|
|merge_duration |int   |AI信息本地存储事件合并时长| 秒数15-60|
|disable_reboot |int   |禁用断网重启功能| 0-断网重启  1-断网不重启|

##参数获取
### 数据指令
```xml
	&lt;VSConfigType&gt;other_get&lt;/VSConfigType&gt;
```
###参数获取交互示例
服务器发送查询指令 `other_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;other_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```


设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`other_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;other_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参数定义
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;other_set&lt;/VSConfigType&gt;
```
###参数设置交互示例

服务器发送other_set配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;other_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//参数定义
		}}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;other_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```



---

## 远程音频播放

> Page ID: 298031931

[TOC]


#### 数据指令
```xml
	&lt;VSConfigType&gt;play_audio&lt;/VSConfigType&gt;
```

###参数获取交互示例
服务器发送play_audio指令

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;play_audio&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			&quot;file_url&quot; : &quot;http://xxxxxxxa/xasax/xaaa.alaw&quot;,//音频文件的网络连接地址,格式必须为8K 16位单通道的 alaw或pcm
            &quot;repeat&quot; : 2 //音频播放次数 1-10 , 若无此参数，则仅播放一次
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;play_audio&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```


---

# GB28181 AI Algorithm Config

## 算法支持列表获取与算法切换

> Page ID: 298031411

[TOC]
## 算法支持列表与当前使用算法获取
### 算法支持列表与当前使用算法消息结构
```JSON
{
	&quot;support&quot;: [2, 0, 1, 21],
	&quot;current&quot;: 1
}
```
### 算法支持列表定义

|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|support |list  |支持算法集合|算法枚举值集合|
|current |int   |当前运行算法| 算法枚举值|

|算法类型|枚举值|
|:-----  |:-----|
|人脸抓拍 |0  |
|人脸识别 |1  |
|人形算法 |2  |
|人车非算法 |3  |
|宠物检测 |4  |
|车牌检测算法 |5  |
|人流统计算法 |6  |
|口罩检测算法 |7  |
|电瓶车检测算法 |8  |
|陌生人识别算法 |9  |
|车型检测算法 |10  |
|离岗检测算法 |11  |
|火焰检测算法 |12  |
|消防通道占用检测算法 |13  |
|安全帽检测算法 |15  |
|电瓶车载人检测算法 |16  |
|人脸+车+车牌算法|17|
|机动车+电瓶车+摩托车|18|
|三轮车+电瓶车+摩托车|19|
|安全帽检测（基于头肩检测)|20|
|人流统计(基于头肩检测)|21|
|车辆预警算法|22|
|厨房三白检测|23|
|哭声检测|24|
|人脸签到|25|
|电瓶车头盔道闸控制|26|
|消防通道车辆检测|27|
### 数据指令
```xml
	&lt;VSConfigType&gt;aichose_get&lt;/VSConfigType&gt;
```
###算法支持列表与当前使用算法获取交互示例
服务器发送查询指令 `aichose_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;aichose_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```


设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`aichose_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;aichose_get&lt;/VSConfigType &gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//算法支持列表与当前使用算法消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##算法切换
&lt;font color=&quot;red&quot;&gt;算法切换过后重启生效&lt;/font&gt;
### 数据指令
```xml
	&lt;VSConfigType&gt;aichose_set&lt;/VSConfigType&gt;
```
### 算法切换消息结构
```JSON
{
	&quot;chose_type&quot;: 1
}
```
chose_type是算法支持列表与当前使用算法消息结构中支持的枚举值

###算法切换交互示例

服务器发送aichose_set配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;aichose_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
			{
				&quot;chose_type&quot;: 1
			}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;aichose_set&lt;/VSConfigType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```



---

## 算法配置获取与设置

> Page ID: 298031412


[TOC]
##算法参数消息结构
### event消息结构
```JSON
{
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 1,
		&quot;sound_file_no2&quot;: 2,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;similaritythreshold&quot;:75,
		&quot;trig_alarm_out&quot;: [0, 0]
	}
}
```
|event数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 2关闭 1--开启|
|speaker_repeat |int  |告警音重复次数 | 0 -6 实际播放次数为speaker_repeat+1|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|sound_file_no2 |int  |告警音频文件2下标 | 从报警音频列表获取   有此字段则支持两个告警音，没有则只支持一个告警音频|
|trig_light |int   |灯光告警开关状态（1：开，2：关， -1：不支持）|
|light_not_flicker |int   |灯光告警类型|0=闪烁, 1=常亮，(需设备支持灯光)|
|trig_light_flicker |int   |灯光闪烁频率|0=高闪,1=中闪,2=低闪，(需要灯光告警类型为闪烁)|
|trig_light_delay |int   |灯光联动持续时间|0-10秒(需设备支持灯光)|
|trig_record |int   |联动SD卡录像|0-不开启联动录像   1-开启联动录像 |
|trig_gb28181 |int   |联动国标消息	|0-不开启联动   1-开启联动  (需设备支持国标)|
|trig_gat1400 |int   |联动1400消息	|0-不开启联动   1-开启联动  (需设备支持1400协议)|
|trig_onvif |int   |联动onvif消息	|0-不开启联动   1-开启联动|
|similaritythreshold |int   |人脸识别阈值|0-100，默认75一般不去修改，人脸识别类算法特有|
|trig_alarm_out |array   |联动报警输出array|元素值 0 -不开启报警输出联动 1-开启报警输出联动 (第一个元素第一路报警，第二个元素第二路报警)|
###timearea消息结构
```JSON
{
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
		[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|timearea数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|refer_width |int   |坐标参考分辨率宽| 宽:高=16:9|
|refer_height |int   |坐标参考分辨率高 | 宽:高=16:9|
|showarea |int   |是否显示检测区域| 1开启osd显示检测区域 2关闭osd显示检测区域|
|all_time |int  |是否为全天检测 | 1 全天检测 0 非全天检测|
|points |array  |检测区域坐标 | 以refer_width，refer_height为参考的凸四边形的四个顶点，顺时针顺序存放，参考坐标左上角为（0，0）|
|period |array   |非全天侦测时间段 |从周日开始，每天最多五个时间段，例如：[&quot;0:0~1:0&quot;, &quot;1:0~2:0&quot;, &quot;2:0~3:0&quot;, &quot;4:0~5:0&quot;, &quot;6:0~7:0&quot;]|

###人脸抓拍消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;snapinterval&quot;: 3,
	&quot;snapmodel&quot;: 1,
	&quot;pixel&quot;: 64,
	&quot;distinguishthreshold&quot;: 0.88,
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|snapinterval |int   |抓拍间隔|秒数1-300 仅定时抓拍有效|
|snapmodel |int   |抓拍模式| 1-快速抓拍  2-定时抓拍  3-质量抓拍|
|pixel |int   |人脸抓拍最小像素| 64-1080|
|distinguishthreshold |float   |质量抓拍阈值|0.5-1.0 仅质量抓拍有效|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|

###人脸识别消息结构
```json
{
	&quot;enable&quot;: 1,
	&quot;pixel&quot;: 64,
	&quot;unrecognized_report&quot;:1,
	&quot;snapinterval&quot;: 3,
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;similaritythreshold&quot;:75,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|pixel |int   |人脸识别最小像素| 64-1080|
|unrecognized_report |int   |是否上报抓拍数据| 0--不上报  1--上报|
|snapinterval |int   |人脸抓拍间隔（秒）&lt;br/&gt;只有unrecognized_report为1时生效| 1-300|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|

###火焰检测消息结构（传感器）
```JSON
{
        &quot;enable&quot;: 1,
        &quot;sensitivity&quot;: 3,
        &quot;enable_smoke&quot;: 2,
        &quot;enable_fire&quot;: 2,
        &quot;display_detection_box&quot;: 1,
        &quot;report_interval_time&quot;: 3,
        &quot;report_interval_time_smoke&quot;: 3,
        &quot;report_interval_time_fire&quot;: 3,
        &quot;vision_smoke_det_thres&quot;: 0.80,
        &quot;vision_smoke_align_thres&quot;: 0.70,
        &quot;vision_fire_det_thres&quot;: 0.80,
        &quot;vision_fire_align_thres&quot;: 0.70,
        &quot;vision_smoke_sensitivity&quot;:3,
        &quot;vision_fire_sensitivity&quot;:3,
        &quot;event&quot;: {
            &quot;alarminterval&quot;: 3,
            &quot;audioalarmstatus&quot;: 1,
            &quot;speaker_repeat&quot;: 0,
            &quot;sound_file_no&quot;: 8,
            &quot;trig_light&quot;: 2,
            &quot;light_not_flicker&quot;: 0,
            &quot;trig_light_flicker&quot;: 0,
            &quot;trig_light_delay&quot;: 5,
            &quot;trig_record&quot;: 0,
            &quot;trig_obs_record&quot;: 0,
            &quot;trig_gat1400&quot;: 1,
            &quot;trig_gb28181&quot;: 0,
            &quot;trig_onvif&quot;: 1,
            &quot;trig_alarm_out&quot;: [
                0,
                0
            ]
        },
        &quot;event_smoke&quot;: {
            &quot;alarminterval&quot;: 3,
            &quot;audioalarmstatus&quot;: 2,
            &quot;speaker_repeat&quot;: 0,
            &quot;sound_file_no&quot;: 12,
            &quot;trig_light&quot;: 2,
            &quot;light_not_flicker&quot;: 0,
            &quot;trig_light_flicker&quot;: 0,
            &quot;trig_light_delay&quot;: 5,
            &quot;trig_record&quot;: 0,
            &quot;trig_gat1400&quot;: 0,
            &quot;trig_gb28181&quot;: 0,
            &quot;trig_onvif&quot;: 0,
            &quot;trig_alarm_out&quot;: [
                0,
                0
            ]
        },
        &quot;event_fire&quot;: {
            &quot;alarminterval&quot;: 3,
            &quot;audioalarmstatus&quot;: 2,
            &quot;speaker_repeat&quot;: 0,
            &quot;sound_file_no&quot;: 30,
            &quot;trig_light&quot;: 2,
            &quot;light_not_flicker&quot;: 0,
            &quot;trig_light_flicker&quot;: 0,
            &quot;trig_light_delay&quot;: 5,
            &quot;trig_record&quot;: 0,
            &quot;trig_obs_record&quot;: 0,
            &quot;trig_gat1400&quot;: 0,
            &quot;trig_gb28181&quot;: 0,
            &quot;trig_onvif&quot;: 0,
            &quot;trig_alarm_out&quot;: [
                0,
                0
            ]
        },
        &quot;timearea&quot;: {
            &quot;refer_width&quot;: 1920,
            &quot;refer_height&quot;: 1080,
            &quot;showarea&quot;: 2,
            &quot;all_time&quot;: 1,
            &quot;points&quot;: [
                &quot;0:0&quot;,
                &quot;1920:0&quot;,
                &quot;1920:1080&quot;,
                &quot;0:1080&quot;
            ],
            &quot;period&quot;: [
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ]
            ]
        },
        &quot;timearea_smoke&quot;: {
            &quot;refer_width&quot;: 1920,
            &quot;refer_height&quot;: 1080,
            &quot;showarea&quot;: 2,
            &quot;all_time&quot;: 1,
            &quot;points&quot;: [
                &quot;0:0&quot;,
                &quot;1920:0&quot;,
                &quot;1920:1080&quot;,
                &quot;0:1080&quot;
            ],
            &quot;period&quot;: [
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ]
            ]
        },
        &quot;timearea_fire&quot;: {
            &quot;refer_width&quot;: 1920,
            &quot;refer_height&quot;: 1080,
            &quot;showarea&quot;: 2,
            &quot;all_time&quot;: 1,
            &quot;points&quot;: [
                &quot;0:0&quot;,
                &quot;1920:0&quot;,
                &quot;1920:1080&quot;,
                &quot;0:1080&quot;
            ],
            &quot;period&quot;: [
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ],
                [
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;,
                    &quot;0:0~0:0&quot;
                ]
            ]
        }
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|enable |int   |火焰传感器检测开关 |1-开启  2-关闭|
|sensitivity |int   |灵敏度等级 |1-10 越小越灵敏 |
|display_detection_box |int   |是否开启显示检测框 仅视觉检测有效|0 不显示 1 显示|
|enable_smoke |int   |烟雾检测算法开关 |1-开启  2-关闭|
|enable_fire |int   |火焰算法测算法开关 |1-开启  2-关闭|
|report_interval_time |int   |传感器抓拍上报间隔 |1-300秒 |
|report_interval_time_smoke |int   |烟雾检测抓拍上报间隔 |1-300秒 |
|report_interval_time_fire |int   |火焰检测算法抓拍上报间隔 |1-300秒 |
|~~vision_smoke_det_thres~~ |float   |烟雾检测阈值 已废弃|0.2-1.0 |
|~~vision_smoke_align_thres~~ |float   |烟雾校准灵敏度 已废弃|0.2-1.0 |
|~~vision_fire_det_thres~~ |float   |火焰检测阈值&quot; 已废弃 |0.2-1.0 |
|~~vision_fire_align_thres~~ |float   |火焰校准阈值 已废弃|0.2-1.0 |
|vision_fire_sensitivity |int   |视觉火焰检测灵敏度 |1(迟钝)-5（灵敏）默认3 |
|vision_smoke_sensitivity |int   |视觉烟雾检测灵敏度 |1(迟钝)-5（灵敏）默认3|
|event |obj   |事件类型处理obj |同上人脸抓拍算法参数|
|event_smoke |obj   |烟雾检测事件类型处理 |obj|
|event_fire |obj   |火焰检测算法事件类型处理 |obj|
|timearea |obj  |时间和区域类型处理obj |obj|
|timearea_smoke |obj  |烟雾检测时间和区域类型处理obj |obj|
|timearea_fire |obj  |火焰检测算法时间和区域类型处理obj |obj|

|event\event_smoke\event_fire数据|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|alarminterval |int   |告警间隔时长| 0-60|
|audioalarmstatus |int   |告警声音 | 1--开启 非1为关闭|
|speaker_repeat |int  |告警音重复次数 | 0 -6 注：为声音重复次数，不是声音播放次数|
|sound_file_no |int  |告警音频文件1下标 | 从报警音频列表获取|
|trig_xxx   |	||[详见联动配置说明](http://yctx.vs98.com:1381/web/#/p/b0bae400ab9d730eb31ee019487afc75)|



|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|
### 车牌识别消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;repeat_report&quot;: 1,
	&quot;repeat_report_interval_time&quot;: 3,
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|repeat_report |int   |是否开启重复上报| 1--开启  0-关闭 同一车牌是否持续上报|
|repeat_report_interval_time |int   |持续上报间隔 |1-300秒|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|

###车辆抓拍消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;repeat_report&quot;: 1,
	&quot;repeat_report_interval_time&quot;: 3,
	&quot;vehc_type_array&quot;:[5,6,7,8,9],
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|repeat_report |int   |是否开启重复上报| 1--开启  0-关闭 同一车牌是否持续上报|
|repeat_report_interval_time |int   |持续上报间隔 |1-300秒|
|vehc_type_array |array   |需要抓拍的车辆类型 |1 公交车 2 摩托车 3 mpv 4 皮卡 5 小汽车 6 suv 7 三轮车 8 卡车 9 面包车|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|

### 电瓶车检测/车辆预警消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;repeat_report&quot;: 1,
	&quot;repeat_report_interval_time&quot;: 5,
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|repeat_report |int   |是否开启重复上报| 1--开启  0-关闭 同一车是否持续上报|
|repeat_report_interval_time |int   |持续上报间隔 |1-300秒|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|

### 电瓶车载人检测/电动车头盔道闸控制消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;repeat_report&quot;: 1,
	&quot;repeat_report_interval_time&quot;: 5,
	&quot;type&quot;:1,
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|type |int   |算法类型 |默认为1，不可更改 |
|repeat_report |int   |是否开启重复上报| 1--开启  0-关闭 同一车是否持续上报|
|repeat_report_interval_time |int   |持续上报间隔 |1-300秒|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|

### 安全帽检测消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;forbid_color_array&quot;:[5],
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|forbid_color_array |array   |默认抓拍未戴安全帽,此项有值表示也抓拍戴了该颜色安全帽的人 |1 黑色,2 蓝色,3 红色 ,4 白色 ,5 黄色|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|

### 人流统计（头肩）消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;line_start&quot;:&quot;100:100&quot;,
	&quot;line_end&quot;:&quot;800:800&quot;,
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|line_start |string   |检测线起点坐标 |参考坐标timearea: refer_width refer_height 起点到终点的右侧为进入方向|
|line_end |string   |检测线终点坐标 |参考坐标timearea: refer_width refer_height 起点到终点的右侧为进入方向|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|

### 消防通道车辆检测消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;need_end_event&quot;:1,
	&quot;stay_time&quot;:300,
	&quot;repeat_report&quot;: 1,
	&quot;repeat_report_interval_time&quot;: 5,
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|need_end_event |int   |是否需要上报接结束事件| 1--开启  0-关闭|
|stay_time |int   |允许停留时间|5-3600秒|
|repeat_report |int   |是否开启重复上报| 1--开启  0-关闭|
|repeat_report_interval_time |int   |持续上报间隔 |1-300秒|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|

### 厨房三白检测消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;det_type_array&quot;:[5],
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;all_time&quot;: 1,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|det_type_array |array   |需要检测的事件类型|厨师帽=1,口罩 = 2,打电话 = 3,抽烟 = 4,工作服 = 5, 老鼠=6|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构|

### 人脸签到消息结构
```JSON
{
	&quot;enable&quot;: 1,
	&quot;repeat_report&quot;:1,
	&quot;repeat_report_interval_time&quot;:5,
	&quot;event&quot;: {
		&quot;alarminterval&quot;: 0,
		&quot;audioalarmstatus&quot;: 2,
		&quot;speaker_repeat&quot;: 0,
		&quot;sound_file_no&quot;: 30,
		&quot;trig_light&quot;: 2,
		&quot;light_not_flicker&quot;: 0,
		&quot;trig_light_flicker&quot;: 0,
		&quot;trig_light_delay&quot;: 5,
		&quot;trig_record&quot;: 0,
		&quot;trig_gb28181&quot;: 0,
		&quot;trig_gat1400&quot;: 1,
		&quot;trig_onvif&quot;: 0,
		&quot;trig_alarm_out&quot;: [0, 0]
	},
	&quot;timearea&quot;: {
		&quot;refer_width&quot;: 1920,
		&quot;refer_height&quot;: 1080,
		&quot;showarea&quot;: 2,
		&quot;points&quot;: [&quot;0:0&quot;, &quot;1920:0&quot;, &quot;1920:1080&quot;, &quot;0:1080&quot;],
		&quot;period&quot;: [
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;],
			[&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;,&quot;0:0~0:0&quot;, &quot;0:0~0:0&quot;]
		]
	}
}
```
|data数据|类型|说明|取值范围|
|:-----  |:-----|----- |
|enable |int   |算法检测开关 |1--开启  2-关闭|
|repeat_report |int   |是否开启重复上报| 1--开启  0-关闭|
|repeat_report_interval_time |int   |重复上报间隔 |1-300秒|
|event |obj   |event消息结构 |event消息结构|
|timearea |obj  |timearea消息结构 |timearea消息结构 去除 alltime period增加至每天12个时间段 每个时间段不超过5分钟|
##当前算法参数获取
### 数据指令
```xml 
	//老版本 已废弃:老版本含有AIType字段 
	&lt;VSConfigType&gt;ai_config_get&lt;/VSConfigType&gt;
	&lt;AIType&gt;0&lt;/AIType&gt;
	//新版本 增加 VSConfigExpandData字段 填充内容参见文档《P2P/HTTP数据交互》
	&lt;VSConfigType&gt;ai_config_get&lt;/VSConfigType&gt;
	&lt;VSConfigExpandData&gt;{&quot;ai_type&quot;:0}&lt;/VSConfigExpandData&gt;
```
-AIType 当前算法枚举值
###当前算法参数获取交互示例
服务器发送查询指令 `ai_config_get`
 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Query&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;ai_config_get&lt;/VSConfigType&gt;
		//老版本 已废弃 老版本含有AIType字段
		&lt;AIType&gt;0&lt;/AIType&gt;
		//新版本 增加 VSConfigExpandData字段
		&lt;VSConfigExpandData&gt;{&quot;ai_type&quot;:0}&lt;/VSConfigExpandData&gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
	&lt;/Query&gt;
```


设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备发送`ai_config_get`的结果, `VSConfig`的数据为json格式的配置信息
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98GetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;ai_config_get&lt;/VSConfigType&gt;
		//老版本 已废弃 老版本含有AIType字段
		&lt;AIType&gt;0&lt;/AIType&gt;
		//新版本 增加 VSConfigExpandData字段
		&lt;VSConfigExpandData&gt;{&quot;ai_type&quot;:0}&lt;/VSConfigExpandData&gt;
		&lt;SN&gt;17430&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//对应算法消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Response&gt;
```

服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```
##算法参数设置
### 数据指令
```xml
	&lt;VSConfigType&gt;ai_config_set&lt;/VSConfigType&gt;
	//老版本 已废弃 老版本含有AIType字段 
	&lt;AIType&gt;0&lt;/AIType&gt;
	//新版本直接填充VSConfig  填充内容参见文档《P2P/HTTP数据交互》
```
###算法参数设置交互示例

服务器发送ai_config_set配置指令,`VSConfig`为json格式的参数 建议先获取后再进行设置

 ```html
	MESSAGE sip:目的终端设备编码@目的域名或 IP 地址端口 SIP/2.0
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=852843529
	Content-Length: 消息实体的字节长度
	CSeq: 2 MESSAGE
	Call-ID: a84b4c76e66710
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=e40807c0
	Content-Type: Application/MANSCDP+xml
	Max-Forwards: 70
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Control&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;ai_config_set&lt;/VSConfigType&gt;
		//老版本 已废弃 老版本含有AIType字段
		&lt;AIType&gt;0&lt;/AIType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000001110000001&lt;/DeviceID&gt;
		&lt;VSConfig&gt;
		{
			//对应算法消息结构
		}
		&lt;/VSConfig&gt;
	&lt;/Control&gt;
```
设备应答200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
```
设备返回设置是否成功
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 1 MESSAGE
	Content-Length: 0
	&lt;?xml version=&quot;1.0&quot;?&gt;
	&lt;Response&gt;
		&lt;CmdType&gt;VS98SetConfig&lt;/CmdType&gt;
		&lt;VSConfigType&gt;ai_config_set&lt;/VSConfigType&gt;
		//老版本 已废弃 老版本含有AIType字段
		&lt;AIType&gt;0&lt;/AIType&gt;
		&lt;SN&gt;11&lt;/SN&gt;
		&lt;DeviceID&gt;64010000041310000345&lt;/DeviceID&gt;
		&lt;Result&gt;OK&lt;/Result&gt;
	&lt;/Response&gt;
```
服务器返回200 OK
```html
	SIP/2.0 200 OK
	Via: SIP/2.0/UDP 源域名或 IP 地址
	From: &lt;sip:源终端设备编码@源域名&gt;;tag=237f57dc
	To: &lt;sip:目的终端设备编码@目的域名&gt;;tag=13057
	Call-ID: a84b4c76e66710
	CSeq: 3 MESSAGE
	Content-Length: 0
```



---

# AI Info Definition

## 火焰/烟雾

> Page ID: 298031378

[TOC]



### 火焰/烟雾
- 告警类型：AET_EVENT_FIRE
- json示例：
```json
{
	&quot;event&quot;: &quot;fire&quot;,
	&quot;capture_time&quot;:175164468734,
	&quot;alarm_status&quot;: 1,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **火焰对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  火焰为fire 烟雾为smoke |
|2 |截图时间  | capture_time  |  int | R  |  utx时间戳 |
|3 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|4 |Jpg宽    | w  | int|  O  |  jpg宽  |
|5 |Jpg高    | h  | int|  O  |  jpg高 |
|6 |Jpg大小  | size  | int|  O  |  jpg图片大小  |


---

## 电动车

> Page ID: 298031379

[TOC]

### 电动车
- 告警类型：AET_EVENT_EBIKE
- json示例：
```json
{
	&quot;event&quot;: &quot;ebike&quot;,
	&quot;capture_time&quot;::1770368658,
	&quot;alarm_status&quot;: 1,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **电瓶车对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为ebike |
|2 |图片抓拍时间    | capture_time  | int|  R  |  抓拍图片的UNIX时间戳|
|3 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|4 |Jpg宽    | w  | int|  O  |  jpg宽  |
|5 |Jpg高    | h  | int|  O  |  jpg高 |
|6 |Jpg大小  | size  | int|  O  |  jpg图片大小  |



---

## 消防通道

> Page ID: 298031380

[TOC]

### 消防通道()
- 告警类型：AET_EVENT_FPOD
- json示例：
```json
{
	&quot;event&quot;: &quot;fpod&quot;,
	&quot;capture_time&quot;:1770368658,
	&quot;alarm_status&quot;: 1,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **消防通道对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为fpod |
|2 |图片抓拍时间  | capture_time  |  int | R  |  unix时间戳 |
|3 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|4 |Jpg宽    | w  | int|  O  |  jpg宽  |
|5 |Jpg高    | h  | int|  O  |  jpg高 |
|6 |Jpg大小  | size  | int|  O  |  jpg图片大小  |


---

## 安全帽

> Page ID: 298031381

### 安全帽
- 告警类型：AET_EVENT_HELMET
- json示例：
```json
{
	&quot;event&quot;: &quot;helmet_hs&quot;,
	&quot;capture_time&quot;:1770368844,
	&quot;helmet_status&quot;: 1,
	&quot;alarm_status&quot;: 1,
	&quot;helmet_color&quot;: 5,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **安全帽对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  值可为helmet、helmet_hs |
|2 |抓拍时间  | capture_time  |  int | R  |  unix时间戳 |
|3 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|4 |安全帽佩戴状态    | helmet_status | int|  R  |  安全帽佩戴状态 0 未佩戴 1已佩戴  |
|5 |安全帽颜色    | helmet_color | int|  R/O  |  安全帽佩戴状态为1时有效 0 未知  1 黑色 2 蓝色 3 红色 4 白色 5 黄色  |
|6 |Jpg宽    | w  | int|  O  |  jpg宽  |
|7 |Jpg高    | h  | int|  O  |  jpg高 |
|8 |Jpg大小  | size  | int|  O  |  jpg图片大小  |



---

## 离岗

> Page ID: 298031382

[TOC]

### 离岗
- 告警类型：AET_EVENT_ODD
- json示例：
```json
{
	&quot;event&quot;: &quot;offduty&quot;,
	&quot;capture_time&quot;:1770368844,
	&quot;offduty_status&quot;: 1,
	&quot;alarm_status&quot;: 1,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **离岗对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  值固定为offduty |
|2 |截图时间  | capture_time  |  int | R  |  unix时间戳 |
|3 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|4 |在岗状态    | offduty_status | int|  R  |  在岗状态 0 在岗 1 离岗 |
|5 |Jpg宽    | w  | int|  O  |  jpg宽  |
|6 |Jpg高    | h  | int|  O  |  jpg高 |
|7 |Jpg大小  | size  | int|  O  |  jpg图片大小  |



---

## 电动车头盔/超载

> Page ID: 298031383

[TOC]


### 电动车头盔/超载
- 告警类型：AET_EVENT_RIDER
- json示例：
```json
{
	&quot;event&quot;: &quot;rider_helmet&quot;,
	&quot;capture_time&quot;:1770368844,
	&quot;canopy&quot;:0,
	&quot;helmet_status&quot;: 1,
	&quot;person_num&quot;: 2,
	&quot;alarm_status&quot;: 1,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **电动车头盔/超载对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  rider_helmet/rider_overload/tricycle_helmet       rider_helmet为二轮车头盔检测事件,rider_overload 为超载事件 ，tricycle_helmet s三轮车未带头盔|
|2 |截图时间  | capture_time  |  int | R  |  unix时间戳 |
|3 |雨棚  | canopy  |  int | O  |  0 无雨棚 1有雨棚 |
|4 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|5 |载人数    | person_num | int|  O  |  载人数 |
|6 |头盔状态    | helmet_status | int|  R/O  |  event 为rider_helmet时必选 0 未知 1未戴 2 部分未戴 3全戴  |
|7 |Jpg宽    | w  | int|  O  |  jpg宽  |
|8 |Jpg高    | h  | int|  O  |  jpg高 |
|9 |Jpg大小  | size  | int|  O  |  jpg图片大小  |


---

## 人脸抓拍/人脸识别/陌生人

> Page ID: 298031384

[TOC]

### 人脸抓拍/识别/陌生人
- 告警类型：AET_EVENT_FACE
- json示例：
```json
{
	&quot;event&quot;: &quot;face_snap&quot;,
	&quot;start_time&quot;:1770368844,
	&quot;capture_time&quot;:1770368844,
	&quot;live_status&quot;: 1,
	&quot;alarm_status&quot;: 1,
	&quot;gender&quot;: 1,
	&quot;age&quot;: 25,
	&quot;mask&quot;: 1,
	&quot;name&quot;: &quot;张三&quot;,
	 &quot;similarity&quot;: &quot;0.8&quot;,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **人脸抓拍/识别/陌生人对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  face_snap人脸抓拍 face_recg人脸识别 face_msr 陌生人检测|
|2 |人员出现时间    | start_time | int|  R  |  unix时间戳  |
|3 |抓图时间    | capture_time | int|  R  |  unix时间戳  |
|4 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|5 |活体    | live_status | int|  O  |  0 未知 1 活体 2 非活体  |
|6 |人员姓名    | name | string|  R/O  |  face_recg 必选  在库人员名称 |
|7 |相似度    | similarity  | string|  R/O  |  face_recg 必选  0-1的浮点数字符串|
|8 |人员类型    | person_type  | int|  O  |  -1 未知 0 白名单 1 黑名单 2 陌生人   |
|9 |Jpg宽    | w  | int|  O  |  jpg宽  |
|10 |Jpg高    | h  | int|  O  |  jpg高 |
|11|Jpg大小  | size  | int|  O  |  jpg图片大小  |
|12 |性别    | gender  | int|  O  |  0未知的性别 1男性 2女性 9未说明的性别 |
|13|年龄    | age  | int|  O  |  预测年龄 |
|14|口罩    | mask  | int|  O  |  0 未戴 1 戴 2 未知 |


---

## 车辆抓拍/车辆预警

> Page ID: 298031385

[TOC]

### 车辆抓拍/车辆预警
- 告警类型：AET_EVENT_VEHICLE
- json示例：
```json
{
	&quot;event&quot;: &quot;vehc&quot;,
	&quot;start_time&quot;:1770368844,
	&quot;capture_time&quot;:1770368880,
	&quot;car_view&quot;: 1,
	&quot;car_type&quot;: 5,
	&quot;alarm_status&quot;: 1,
	&quot;car_color&quot;: 1,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **车辆抓拍对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为vehc |
|2 |车辆出现时间  | start_time  |  int | R  |  unix时间戳 |
|3 |抓拍时间  | capture_time  |  int | R  |  unix时间戳 |
|4 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|5 |车辆方向    | car_view | int|  O  |  0 车头 1 车尾 |
|6 |车辆类型    | car_type | int|  O  |  0:自行车 1:公交车 2:摩托车3：MPV 4：皮卡车 5：小汽车 6：SUV:三轮车 8:大货车9:面包车  |
|7 |车辆颜色    | car_color  | int|  O  |  1:蓝 2:绿 3:黄 4:黄绿 5:白6:黑 7:橙色 8:粉红色9:红色 10:灰色 11:青色12:紫色 13:棕色 14:金色15:混色  |
|8 |Jpg宽    | w  | int|  O  |  jpg宽  |
|9 |Jpg高    | h  | int|  O  |  jpg高 |
|10 |Jpg大小  | size  | int|  O  |  jpg图片大小  |


---

## 车牌识别

> Page ID: 298031386

[TOC]

### 车牌识别
- 告警类型：AET_EVENT_PLATE
- json示例：
```json
{
	&quot;event&quot;: &quot;plate&quot;,
	&quot;start_time&quot;:1770368844,
	&quot;capture_time&quot;:1770368880,
	&quot;plate_num&quot;: &quot;川A00001&quot;,
	&quot;alarm_status&quot;: 1,
	&quot;plate_type&quot;: 1,
	&quot;plate_color&quot;: 1,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **车牌识别对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为plate |
|2 |车辆出现时间  | start_time  |  int | R  |  unix时间戳 |
|3 |抓拍时间  | capture_time  |  int | R  |  unix时间戳 |
|4 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|5 |车牌号    | plate_num | string|  O  |  车牌号 |
|6 |车牌类型    | plate_type | int|  O  |  0:小型汽车 蓝牌 1:小型汽车 绿牌 2:大型汽车 黄牌或者黄绿车牌 3：军用汽车 4：警用汽车 5：挂车 6：教练车 7:领事馆车 8:大使馆车 9 境外车 10:其他车  |
|7 |车牌颜色    | plate_color  | int|  O  |  1:蓝 2:绿 3:黄 4:黄绿 5:白 6:黑  |
|8 |Jpg宽    | w  | int|  O  |  jpg宽  |
|9 |Jpg高    | h  | int|  O  |  jpg高 |
|10 |Jpg大小  | size  | int|  O  |  jpg图片大小  |



---

## 区域入侵

> Page ID: 298031387

[TOC]

### 区域入侵
- 告警类型：AET_EVENT_INVADE
- json示例：
```json
{
	&quot;event&quot;: &quot;invade&quot;,
	&quot;capture_time&quot;:1770368844,
	&quot;alarm_status&quot;: 1,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **区域入侵对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为invade |
|2 |抓图时间  | capture_time  |  int | R  |  unix时间戳 |
|3 |告警状态  | alarm_status  |  int | O  |  事件触发状态：0 触发 1持续 2结束 |
|4 |Jpg宽    | w  | int|  O  |  jpg宽  |
|5 |Jpg高    | h  | int|  O  |  jpg高 |
|6 |Jpg大小  | size  | int|  O  |  jpg图片大小  |


---

## 移动侦测

> Page ID: 298031388

[TOC]

### 移动侦测
- 告警类型：AET_EVENT_MOTIONDECT
- json示例：
```json
{
	&quot;event&quot;: &quot;motion&quot;,
	&quot;capture_time&quot;: 1770368844,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **移动侦测对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为motion |
|2 |抓图时间  | capture_time  |  int | O  |  unix时间戳 |
|3 |Jpg宽    | w  | int|  O  |  jpg宽  |
|4 |Jpg高    | h  | int|  O  |  jpg高 |
|5 |Jpg大小  | size  | int|  O  |  jpg图片大小  |


---

## 厨房三白

> Page ID: 298031438

### [TOC]

### 厨房三白
- 告警类型：AET_EVENT_KITCHEN
- json示例：
```json
{
	&quot;event&quot;: &quot;kitchen&quot;,
	&quot;hat_state&quot;: 1,
	&quot;mask_state&quot;: 1,
	&quot;play_phone_state&quot;: 1,
	&quot;smoking_state&quot;: 1,
	&quot;uniform_state&quot;: 1,
	&quot;alarm_status&quot;: 1,
	&quot;mouse_state&quot;:1,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **厨房三白对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为kitchen|
|2 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|3 |佩戴厨师帽状态    | hat_state | int|  O  |  0未知 1 佩戴 2未戴 |
|4 |佩戴口罩状态    | mask_state | int|  O  |  0未知 1 佩戴 2未戴 |
|5 |打电话状态    | play_phone_state  | int|  O  |0未知 1 接打 2未接打 |
|6 |抽烟状态    | smoking_state  | int|  O  |0未知 1 抽烟 2 未抽烟|
|7 |穿工作服状态    | uniform_state  | int|  O  |0未知 1 穿 2 未穿|
|8 |老鼠检测    | mouse_state  | int|  O  |0未知 1 有 2 无|
|6 |Jpg宽    | w  | int|  O  |  jpg宽  |
|7 |Jpg高    | h  | int|  O  |  jpg高 |
|8 |Jpg大小  | size  | int|  O  |  jpg图片大小  |





---

## 超员/低于额定人员告警

> Page ID: 298031923

[TOC]

### 超员告警
- 告警类型：AET_EVENT_OVERCROWDING
- json示例：
```json
{
	&quot;event&quot;: &quot;overcrowding&quot;,
	&quot;alarm_status&quot;: 1,
	&quot;person_num&quot;:5,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **超员检测对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为overcrowding |
|2 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|3 | 人员数量 | person_num  |  int | R  |   |
|4 |Jpg宽    | w  | int|  O  |  jpg宽  |
|5 |Jpg高    | h  | int|  O  |  jpg高 |
|6 |Jpg大小  | size  | int|  O  |  jpg图片大小  |

### 低于限定人员告警
- 告警类型：AET_EVENT_DOWNSIZING
- json示例：
```json
{
	&quot;event&quot;: &quot;downsizing&quot;,
	&quot;alarm_status&quot;: 1,
	&quot;person_num&quot;:1,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 ** 低于限定人员对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为downsizing |
|2 |告警状态  | alarm_status  |  int | R  |  事件触发状态：0 触发 1持续 2结束 |
|3 | 人员数量 | person_num  |  int | R  |   |
|4 |Jpg宽    | w  | int|  O  |  jpg宽  |
|5 |Jpg高    | h  | int|  O  |  jpg高 |
|6 |Jpg大小  | size  | int|  O  |  jpg图片大小  |

---

## 客流统计

> Page ID: 298031982

[TOC]

### 客流统计
- 告警类型：AET_EVENT_COUNT
- json示例：
```json
{
	&quot;event&quot;: &quot;people_count&quot;,
	&quot;enter_count&quot;:100,
	&quot;leave_count&quot;:80,
	&quot;start_counting_time&quot;:176639100,
	&quot;capture_time&quot;:1766396803
}
```
 **电瓶车对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为people_count |
|2 |进入客人数量    | enter_count  | int|  R |   |
|3 |离开客人数量    | leave_count  | int|  R |  leave_count |
|4 |开始统计时间  | start_counting_time  | int|  R  |  utc时间戳  |
|5 |当前时间  | capture_time  | int|  R  |  utc时间戳,设备端的统计时间|


---

## 定时抓拍

> Page ID: 298031983

[TOC]

### 定时抓拍
- 告警类型：AET_EVENT_TIMEDCAPTURE
- json示例：
```json
{
	&quot;event&quot;: &quot;timedcapture&quot;,
	&quot;capture_time&quot;:1770368844,
	&quot;w&quot;: 1920,
	&quot;h&quot;: 1080,
	&quot;size&quot;: 86400
}
```
 **区域入侵对象特征属性**

| 序号  |  名称   | 标识符  | 类型  | 必选/可选  |备注|
| ------------ | ------------ | ------------ | ------------ | ------------ | ------------ |
|1 |事件类型  | event  |  string | R  |  固定为timedcapture |
|2 |抓图时间  | capture_time  |  int | R  |  unix时间戳 |
|3 |Jpg宽    | w  | int|  O  |  jpg宽  |
|4 |Jpg高    | h  | int|  O  |  jpg高 |
|5 |Jpg大小  | size  | int|  O  |  jpg图片大小  |



---

# ISP

## 图像参数

> Page ID: 298031457


[TOC]
##### 一、图像配置获取

##### HTTP请求
- ` Method: GET `
- ` Params: N/A `
- `  http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_get&amp;name=image //获取图像配置`

##### P2P信令
```JSON
	{
	&quot;cmd&quot;:&quot;image_get&quot;, //操作命令 image_get 图像获取
	&quot;data&quot;:{}
	}
``` 

##### 数据返回
```JSON
	  {
		&quot;status&quot;: 0,
		&quot;data&quot;: {
			 &quot;wdr&quot; : 0, 	 	    //wdr 需设备支持wd
			 &quot;antiflicker&quot;:0,       //工频抗闪 
			 &quot;flip&quot;:0,     		   //图像翻转 
			 &quot;mirror&quot;:0,     		//图像镜像 
			 &quot;custom_enable&quot; : 0,   //自定义图像配置使能
			 &quot;brightness&quot; : 50, 	  //亮度 
			 &quot;contrast&quot;:50,       //对比度 
			 &quot;saturation&quot;:50,     //饱和度 
			 &quot;hue&quot;:50,   		 //色调 
			 &quot;sharpness&quot; : 50,   //锐度 
			 &quot;deahaze&quot; : 255,   //去雾开关（需设备支持去雾，dv500\cv610都支持）
			&quot;shutter_type&quot;:1, 	//自定义曝光配置  开启或关闭
			&quot;max_shutter_mode&quot;:0,//最大曝光时间模式
			&quot;min_shutter_mode&quot;:0,//最小曝光时间模式
			&quot;max_gain&quot;:1024,//最大系统增益
			&quot;min_gain&quot;:1024,//最小系统增益
			&quot;disable_strong_light&quot; : 0, //禁用强光抑制 ，0-不禁用 1-禁用
			&quot;disable_ae_weight&quot; : 0    //禁用背光补偿 ，0-不禁用 1-禁用
		},
		&quot;msg&quot; : &quot;success&quot;
	  }
```

##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|data |obj   |码流配置信息|
|msg |string   |请求返回的提示信息|

|data数据键值|类型|说明|取值范围|
|:-----  |:-----|-----                           |
|wdr |int   |宽动态|0关闭 1打开  需设备支持wdr|
|antiflicker |int   |抗闪|0关闭 50 -50hz 60- 60hz|
|flip |int   |图像翻转|0不翻转 1-翻转|
|mirror |int   |图像镜像|0不镜像 1-镜像|
|custom_enable |int   |图像自定义参数使能|0不使能 1-使能|
|brightness |int   |亮度|0-100 0表示自动|
|contrast |int   |对比度|0-100 0表示自动|
|saturation |int   |饱和度|0-100 0表示自动|
|hue |int   |色调|0-100 0表示自动|
|sharpness |int   |锐度|0-100 0表示自动|
|deahaze |int   |去雾|0-100 0表示自动|
|shutter_type |int   |自定义曝光配置开启|0-自动  1-手动|
|min_shutter_mode |int   |最大曝光时间模式|[0]-不使用 [1]-1/20000 (50us) [2]-1/10000 (100us) [3]-1/4000 (250us) [4]-1/2000 (500us) [5]-1/1500 (666us) [6]-1/1000 (1000us) [7]-1/750 (1333us) [8]-1/500 (2000us) [9]-1/250 (4000us) [10]-1/200 (5000us) [11]-1/150(6666us) [12]-1/100 (10000us) [13]-1/50 (20000us) [14]-1/25 (40000us) [15]-1/20 (50000us) [16]-1/15 (66666us)	[17]-1/10 (100000us)|
|max_shutter_mode |int   |最大曝光时间模式|[0]-不使用 [1]-1/20000 (50us) [2]-1/10000 (100us) [3]-1/4000 (250us) [4]-1/2000 (500us) [5]-1/1500 (666us) [6]-1/1000 (1000us) [7]-1/750 (1333us) [8]-1/500 (2000us) [9]-1/250 (4000us) [10]-1/200 (5000us) [11]-1/150(6666us) [12]-1/100 (10000us) [13]-1/50 (20000us) [14]-1/25 (40000us) [15]-1/20 (50000us) [16]-1/15 (66666us)	[17]-1/10 (100000us)|
|min_gain |int   |最小曝光增益|1024-2048000|
|max_gain |int   |最大曝光增益|1024-2048000|
|disable_strong_light |int   |禁用强光抑制|0-不禁用（默认） 1-禁用|
|disable_ae_weight |int   |禁用背光补偿|0-不禁用（默认） 1-禁用|
##### 二、图像配置设置

##### HTTP请求
- ` Method: POST `
- ` Params: 见请求参数 `
- ` http://192.168.1.2/cgi-bin/vs_cgi_v2?act=cfg_image //设置图像配置`

##### P2P信令
```JSON
	{
		&quot;cmd&quot;:&quot;image_set&quot;, //操作命令 image_set图像设置 
		&quot;data&quot;:{
			//见请求参数
		}
	}
```

##### 请求参数

|data数据键值|类型|是否为必要参数|取值范围|
|:-----  |:-----|-----                           |
|wdr |int   |否 |宽动态 0关闭 1打开  需设备支持wdr|
|antiflicker |int  |否 |抗闪0关闭  50-50hz  60-60hz|
|flip |int   |否 |图像翻转0不翻转 1-翻转|
|mirror |int   |否 |图像镜像0不镜像 1-镜像|
|custom_enable |int   |是 | 图像自定义参数使能 0不使能 1-使能|
|brightness |int   |是 |亮度 0-100 0表示自动|
|contrast |int    |是 |对比度0-100 0表示自动|
|saturation |int    |是 |饱和度0-100 0表示自动|
|hue |int    |是|色调 0-100 0表示自动|
|sharpness |int   |是 |锐度0-100 0表示自动|
|deahaze |int    |是|去雾，0-自动 非0手动（1-255）|
|shutter_type |int    |是|自定义曝光配置开启 0-自动  1-手动|
|min_shutter_mode |int    |是 |最大曝光时间模式[0]-不使用 [1]-1/20000 (50us) [2]-1/10000 (100us) [3]-1/4000 (250us) [4]-1/2000 (500us) [5]-1/1500 (666us) [6]-1/1000 (1000us) [7]-1/750 (1333us) [8]-1/500 (2000us) [9]-1/250 (4000us) [10]-1/200 (5000us) [11]-1/150(6666us) [12]-1/100 (10000us) [13]-1/50 (20000us) [14]-1/25 (40000us) [15]-1/20 (50000us) [16]-1/15 (66666us)	[17]-1/10 (100000us)|
|max_shutter_mode |int   |是 |最大曝光时间模式[0]-不使用 [1]-1/20000 (50us) [2]-1/10000 (100us) [3]-1/4000 (250us) [4]-1/2000 (500us) [5]-1/1500 (666us) [6]-1/1000 (1000us) [7]-1/750 (1333us) [8]-1/500 (2000us) [9]-1/250 (4000us) [10]-1/200 (5000us) [11]-1/150(6666us) [12]-1/100 (10000us) [13]-1/50 (20000us) [14]-1/25 (40000us) [15]-1/20 (50000us) [16]-1/15 (66666us)	[17]-1/10 (100000us)|
|min_gain |int    |是|最小曝光增益1024-2048000|
|max_gain |int   |是 |最大曝光增益1024-2048000|
|disable_strong_light |int   |是 |禁用强光抑制 0-不禁用（默认） 1-禁用|
|disable_ae_weight |int  |是 |禁用背光补偿 0-不禁用（默认） 1-禁用|

##### HTTP返回示例
```JSON
{
	&quot;status&quot;: 0,
	&quot;msg&quot; : &quot;success&quot;
}
```
##### HTTP返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|status |int   |请求结果  0:请求成功 -1:请求失败|
|msg |string   |请求返回的提示信息|

##### P2P返回示例
```JSON
{
	&quot;cmd&quot;:&quot;image_set&quot;,//操作命令,与请求一致
	&quot;result&quot;:1,//0 失败  1成功
	&quot;data&quot;:{}
}
```
##### P2P返回参数说明 
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd |string   |操作命令,与请求一致|
|result |int   |请求返回操作结果|
|data |obj   |请求返回的提示信息,无返回数据则为空obj|

---

# WEB Config

## NAS配置

> Page ID: 298031910

[TOC]

# 1、功能简介
**此功能需要先将电脑上的文件夹进行共享操作，让摄像机在网络上找到此文件夹。
配置完成后摄像机将录像文件直接存放在电脑上，外出测试录制视频也可实时查看，方便测试操作。**
# 2、创建共享文件夹
## 2.1 选择文件夹，右键打开属性-共享-高级共享设置
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=ea6bd2a9d2f1fde913b8222adcd291fb)
## 2.2 勾选“共享此文件夹”，然后点击“权限”
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=5e77b8759d3a09b7dbc16b343237598a)
## 2.3 更改权限，如图所示
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=75892aa31aba22f2703f9198f0f27c41)

# 3、填写配置
## 3.1 打开设备WEB，点击“存储配置”-“NAS配置”
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=b89b261b4c61f09d669e24761927e1a9)
## 3.2 打开开关，填入对应参数
- 协议：固定选SMB3
- 地址：填写步骤一中共享的文件夹路径，格式为IP+文件夹名，可参照图片
- 用户名：为登录计算机的用户名
- 密码：为登录计算机的用户密码

![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=15935ae98f941708235ca9e1c788a2f8)
## 3.3 点击“保存”，若操作正确会提示“保存成功”
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=07d77f1b142c0e463cbd30d4eeeb16b1)
# 4、查看录像文件
操作成功后，可在共享出来的文件夹中，看到设备的录像文件
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=4a4f7426b57dc8210c1ffca52b0e4948)
# 5、配置失败问题原因分析
## 5.1 核对WEB参数
地址、用户名、密码，核对一遍，必须填正确
## 5.2 文件夹权限不正确
参考步骤2.3，将权限完全开放
## 5.3 打开网络发现
打开“控制面板”-“网络和 Internet”-“网络和共享中心”-“高级共享设置”，将网络发现的开关打开
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=78c6dfda7129d223247f2fa190e88737)
## 5.4 关闭防火墙
打开“Windows安全中心”-“防火墙和网络保护”，关闭当前网络的防火墙
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=4641b0b25ae380a27d80649d5b402d70)

---

# MWP Protocol

## 前言介绍

> Page ID: 298031968

[TOC]

# 总体设计

因为基于主要基于`MQTT+WebRTC Protocol`的协议，所以简称MWP

- 设计目的：
	1、简化基于浏览器为展示终端的全套摄像机访问协议，涉及到观看、管理、回放、控制、云存储等业务，初衷是全面代替GB28181+GAT1400；
	2、解决GB28181协议设计复杂，冗余，又没规定细节，以及在互联网上使用SIP会被中间层交换拦截的问题；
	3、解决GAT1400消息交互复杂，又无长连接，消息不能即时交互的问题；
	4、解决现存协议无富媒体消息推送的问题；
	5、解决对像存储无法与摄像机其它交互做协同的问题；
	6、解决AI端、云/边深度结合的系统性问题；

- 摄像机端：MQTT+RTP/WebRTC+OSS

- 服务器端：MQTT Broker+ZLMediaKit+OSS(MinIO/阿里/亚马逊S3/华为云)+微服务(RESTful)

- 总体框架

```seq

participant 摄像机 as C
participant MQTT Broker as T
participant 客户端/浏览器 as B

C-&gt;T: MQTT带鉴权连接
T-&gt;C: 返回登录状态
C-&gt;T: 发布设备信息
C-&gt;T: 订阅相关通知：配置，云台控制，OTA，推流，对讲，回放
B-&gt;T: 发送 配置，云台控制，OTA，其它控制等
T--&gt;C: 配置，云台控制，OTA，其它控制

```

- 请求视频/回放/对讲

```seq

participant 摄像机 as C
participant MQTT Broker as T
participant 微服务 as M
participant ZLMediaKit as Z
participant 客户端/浏览器 as B

B-&gt;M: 发送直播请求
	note over Z: 携带app=x&amp;stream=xx&amp;ssrc=xxx&amp;pt=96&amp;use_ps=1
	note over Z: 调用'/index/api/startSendRtpPassive'
M--&gt;Z: 携带参数请求
Z--&gt;M: 返回推流端口
M-&gt;T: 发送推流消息
	note  left of T: (含ssrc,ip,端口，tcp/udp,主子码流)
T--&gt;C: 发送推流消息
M-&gt;B: 返回ZLM地址
C-&gt;Z: 发送RTP流
B-&gt;Z: 通过ZLM地址播放视频流

```

关于微服务，需要与MQTT Broker通信，用于发送推流通知；并且可以管理多个ZLM用于负载均衡，ssrc的这个值需要微服务统一管理，用UINT32从0x0~0xffff ffff绕圈循环，避免串流


## 摄像机MQTT设计

### 连接相关

clientID为摄像机的DID（使用设备信息里面的p2p号），由于DID在整个体系中是唯一不可改的；
username与password为校验设备是否可以合法接入服务器的标识；

### 主题（topic）设计

关于topic的说明；由于可以使用`+`（单层）与`#`（多层）做订阅过滤，使用`/`做分层级过处理，所以，设计上可以用这个方式来订阅自己关心的消息：
 * 比如事件服务器可以使用`event/+/ai`就可以监测所有ai事件消息；
 * 服务器可以使用`dev_info/+`检测所有设备上线消息；
 * 摄像机可以使用`{DID}/#`订阅所有发送给自己的消息；

```python
# 设备相关
&quot;dev_info/{DID}&quot;          	# 设备上线通知，设备信息

# 常规，自己定义一个微服务，检测'{DID}/rtp/+'主题
&quot;{DID}/rtp/play&quot;     		# 直播
&quot;{DID}/rtp/playback&quot;     	# 回放
&quot;{DID}/rtp/talk&quot;     		# 对讲
&quot;{DID}/record&quot;     		# 录像查询

# 控制相关
&quot;{DID}/control/ptz&quot;     # 云台控制
&quot;{DID}/control/config&quot;  # 配置的getter与setter，参考现有的消息交互
&quot;{DID}/control/system&quot;  # 系统

# 事件相关
&quot;event/{DID}/alarm&quot;     # 报警事件, 基础的报警信息
&quot;event/{DID}/ai&quot;        # AI事件, 报文体参考GAT1400
```

### 用户端主题约定

```
user_xxx
```

### 消息交互设计
`事件`相关的主题，属于摄像机主动发出，用户端只需要订阅即可，属于1对N发送；
`常规`与`控制`相关的主题，由用户端发起，在响应的时候，只需要1对1处理就可以了，所以，在请求的json中，需要增加一个`from`字段，用于响应处理结果；
示例如下：

```seq

participant 摄像机 as C
participant MQTT Broker as S
participant 客户端/浏览器 as B

B--&gt;C: 请求配置{DID}/control/config，负载：{...,&quot;from&quot;:&quot;{UID}&quot;}
C--&gt;B: 响应结果{UID}/control/config，负载：{...,&quot;from&quot;:&quot;{DID}&quot;}
```

## ZLMediaKit推流与鉴权

- 按需要推流
~~在`on_stream_not_found`里面发送MQTT消息给摄像机让其推流~~
在`on_stream_none_reader`绑定到微服务的接口上，微服务发MQTT消息给摄像机关闭推流，用户端也可以直接调用微服务接口，微服务调用ZLM的'/index/api/closeRtpServer'关闭流服务

- 鉴权
`on_play`在里面判断是否合法，不合法返回失败，绑定到微服务接口上



## 关于AI相关

- 车牌信息通过MQTT直接下发
- 人脸库通过MQTT下发人脸照片或者库文件的URL地址，摄像机从指定URL下载相关的信息
- AI事件摄像机先将图片上传到OSS，然后通过MQTT把AI信息+上传的URL信息发送出去，业务服务器可以通过订阅相关信息，做数据存储业务



---

## 相关docker搭建

> Page ID: 298031970


## emqx

emqx:5.8.8是最后一个社区版本

```bash
mkdir -p ~/mwp/mqtt ~/mwp/mqtt/data ~/mwp/mqtt/log
cd ~/mwp/mqtt

docker pull emqx/emqx:5.8.8
docker run --restart=always -d --name mwp-mqtt \
  --hostname node1.emqx.com \
  --user &quot;$(id -u):$(id -g)&quot; \
  -e &quot;EMQX_NODE_NAME=emqx@node1.emqx.com&quot; \
  -p 1883:1883 -p 8083:8083 \
  -p 8084:8084 -p 8883:8883 \
  -p 18083:18083 \
  -v $PWD/data:/opt/emqx/data \
  -v $PWD/log:/opt/emqx/log \
  emqx/emqx:5.8.8
```

* 访问地址
	http://192.168.1.94:18083
	用户名：admin
	密码：public
	

## zlmediakit

```bash
mkdir -p ~/mwp/zlmediakit ~/mwp/zlmediakit/config
cd ~/mwp/zlmediakit
docker run --rm zlmediakit/zlmediakit:master \
  cat /opt/media/conf/config.ini &gt; ~/mwp/zlmediakit/config/config.ini
# 不用这个方式了
docker run --restart=always -id --name mwp-zlmediakit \
-e &quot;TZ=Asia/Shanghai&quot; \
-p 1935:1935 \
-p 8080:80 \
-p 8443:443 \
-p 8554:554 \
-p 10000:10000 \
-p 10000:10000/udp \
-p 8000:8000/udp \
-p 9000:9000/udp \
-p 30000-35000:30000-35000 \
-v $PWD/config:/opt/media/conf \
-v $PWD/logs:/opt/media/bin/log \
zlmediakit/zlmediakit:master \
./MediaServer -s default.pem -c ../conf/config.ini -l 2

# 或者直接主机模式
docker run --restart=always -id --name mwp-zlmediakit \
-e &quot;TZ=Asia/Shanghai&quot; \
--net=host \
-v $PWD/config:/opt/media/conf \
-v $PWD/logs:/opt/media/bin/log \
zlmediakit/zlmediakit:master \
./MediaServer -s default.pem -c ../conf/config.ini -l 2
```

* 访问地址
	http://192.168.1.94/
	

## MinIO
```bash
mkdir -p ~/minio/mwp/data ~/minio/mwp/config
cd ~/mwp/minio

docker pull minio/minio:latest

docker run -d --restart=always\
  -p 9000:9000 \
  -p 9001:9001 \
  --name mwp-minio \
  -v $(pwd)/data:/data \
  -v $(pwd)/config:/root/.minio \
  -e &quot;MINIO_ROOT_USER=admin&quot; \
  -e &quot;MINIO_ROOT_PASSWORD=12345678&quot; \
  minio/minio:latest server /data --console-address &quot;:9001&quot;
  
# 或者直接主机模式
docker run -d --restart=always\
  --network host \
  --name mwp-minio \
  -v $(pwd)/data:/data \
  -v $(pwd)/config:/root/.minio \
  -e &quot;MINIO_ROOT_USER=admin&quot; \
  -e &quot;MINIO_ROOT_PASSWORD=12345678&quot; \
  minio/minio:latest server /data --console-address &quot;:9001&quot;
```
* 访问地址
	http://ip:9001
	用户名：admin
	密码：12345678
	
	


---

## gozero制作的demo示例

> Page ID: 298031977


## mwp_demo

[下载地址](http://yctx.vs98.com:880/sdk/mwp_demo.tgz &quot;下载地址&quot;)
解压以后，阅读里面的`README.md`，有关于环境的部署与运行方式。

---

## minio配置流程

> Page ID: 298031980

[TOC]

# MinIO基础配置
## 1.登录
输入MinIO搭建时的WEB端后台地址，输入用户名和密码
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=c664592f695292ec67364f23f73218e3)
## 2.创建存储桶
所有的文件必须要存储到桶中，因此需要先创建存储桶
  1.点击左侧栏【Buckets】，这里会展示存储桶配置信息
  2.再点击右上方【Create Bucket】，创建桶
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=dc882fda5eeed9fe471c32320245cf6f)
  3.在红框中输入桶名
  4.点击下方按钮【Create Bucket】，即可成功创建新的桶
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=5e72cd5089db38ec9df7d3423b1f17ea)
  5.若要修改存储桶信息，依然是点击左侧的【Buckets】菜单，修改对应信息即可
## 3.创建Access Key
接口访问时需要使用密钥，因此需要先生成密钥
  1.点击左侧栏【Access Keys】，这里会展示已有密钥的信息
  2.点击右上方【Create Access Key】，进行创建
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=1a796931d520f9aee0001f535a80bf2f)
  3.系统会自动生成对应的【Access Key】和【Secret key】，点击下方按钮【create】即可。【Secret key】只会在此时生成时显示，请注意保存好密钥信息
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=b51e08504fed2d67645196bc74d00127)
## 4.查看和下载文件
点击【Object Browser】菜单，可看到创建的存储桶，点击进入，可查看存储的文件。选中对应文件即可下载、分享、删除等操作
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=fb3d42ecb2e5bc1ab176598788cc3c45)
# 摄像机配置MinIO
## 1.打开设备web
 1.浏览器输入摄像机后台WEB地址，打开Web登录界面。输入设备的用户名和密码，分别填入登录界面，点击登录即可。
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=787610ab1d78ea2aa47e955d037efe9d)
 2.点击【存储配置】-【云存储配置】，打开【云存储开关】。
## 2.配置云存储信息
按下图所示选择【亚马逊云存储/MinIO】平台，然后将云存服务器其他对应的信息填入
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=5b64298a0cd30ff90436ee685140faf5)
### 1.Access key、Secret key
将创建密钥时的【Access Key】和【Secret key】对应填入。如果忘记密钥，可重新生成。
### 2.云存储桶名
填入创建时的桶名
### 3.云存储节点
此信息是指搭建MinIO时映射的服务端地址，用于文件传输访问。将服务器对应地址信息填入即可。要注意：不是console的web登录地址。
### 4.云存储二级节点
若使用的桶名下需要明确二级节点目录，对应填入即可，注意不能以’/’开始。
### 5.录像文件上传设置
其他项都可以根据需求自行调整，涉及到视频码流类型，视频时长，触发方式等等。



**所有信息确认无误后，点击【保存】。可以测试一下触发云存推送后，服务器上是否成功收到视频。**

---

# MWP RESTful Interface

## 摄像机端获取MQTT地址与OSS地址

> Page ID: 298031971


[TOC]

##### 简要描述

- 摄像机登录
- 发起方：Camera

##### 请求URL
- `api/v1/dev/login`
  
##### 请求方式
- post 

##### 参数
```json
{
&quot;version&quot;:&quot;20260115102940&quot;, 
&quot;model&quot;:&quot;HI-H402W6_NZ&quot;, 
&quot;model_alias&quot;:&quot;HI-H402W6_NZ&quot;,
&quot;p2p&quot;:&quot;TESTD00000000000001&quot;, 
&quot;hid&quot;:&quot;D00000000000001&quot;, 
&quot;chipsn&quot;:&quot;3516c6130000098a0000000000000000000000000000000000000000&quot;,
&quot;type&quot;:0,
&quot;sub_type&quot;:2
}
```

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|version |是  |string |固件版本号   |
|model |是  |string | 固件型号    |
|model_alias     |是  |string | 固件型号别名    |
|p2p     |是  |string | p2p号，这个是重点，后面都要使用，唯一，不会重复    |
|hid     |是  |string | 硬件ID，唯一，不会重复   |
|chipsn     |是  |string | 芯片序列号，唯一，不会重复   |
|type     |是  |string | 设备类型： 0-卡片机, 1-摇头机, 2-鱼眼摄像机, 3-nvr，4-枪机/半球, 5-变焦摄像机  |
|sub_type     |是  |string | 0-为红外型, 1-为全彩型, 2-是双光源型  |

 ##### 返回示例
```json
 {
    &quot;code&quot;: 0,
    &quot;msg&quot;: &quot;OK&quot;,
    &quot;data&quot;: {
        &quot;mqtt&quot;: {
            &quot;host&quot;: &quot;192.168.1.94&quot;,
            &quot;port&quot;: 1883,
            &quot;sport&quot;: 8883,
            &quot;user&quot;: &quot;D00000000000001&quot;,
            &quot;pass&quot;: &quot;6df007ce70a44a5fcbbf5796f9871202&quot;
        },
        &quot;oss&quot;: {
            &quot;enabled&quot;: 0,
            &quot;name&quot;: &quot;&quot;,
            &quot;ak&quot;: &quot;&quot;,
            &quot;sk&quot;: &quot;&quot;,
            &quot;bucket&quot;: &quot;&quot;,
            &quot;end_point&quot;: &quot;&quot;,
            &quot;file_def_attr&quot;: &quot;&quot;,
            &quot;expire&quot;: 0,
            &quot;prefix&quot;: &quot;&quot;,
            &quot;rec_strm_type&quot;: 0,
            &quot;obs_type&quot;: 0,
            &quot;upload_mode&quot;: 0,
            &quot;record_file_time&quot;: 0,
            &quot;record_mode&quot;: 0,
            &quot;record_audio&quot;: 0,
            &quot;all_time&quot;: 0
        }
    }
}
```
 ##### 返回参数说明 

在http返回值为200，其它错误码参见http响应码

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|code |int   |操作码0为成功 |
|msg |string   |成功或失败的错误信息 |
|mqtt  |
|host |string   |QMTT服务器地址 |
|port |int   |QMTT服务器端口 |
|sport |int   |QMTT服务器端口（SSL）,如果此字段与port同在，只会使用sport,也可以两者只返回一个 |
|user |string   |登录用户名，建议直接返回摄像机的hid做为用户名 |
|pass |string   |登录密码，此值建议由服务器动态生成 |
|oss ||
|- |   |参见[OBS配置](http://yctx.vs98.com:1381/web/#/601874687/298031902 &quot;OBS配置&quot;) |

 ##### 备注

- 如果有错误，看msg



---

# MWP Called by MQTT

## MQTT用户或摄像机连接鉴权

> Page ID: 298031972

[TOC]

##### 简要描述

- MQTT请求鉴权
- 发起方：Camera或用户在向MQTT服务器发起连接的时候，MQTT服务器收到登录信息的请求校验接口

##### 请求URL
- `api/v1/dev/auth`
  
##### 请求方式
- post 

##### 参数
```json
{
&quot;clientid&quot;:&quot;TESTD00000000000001&quot;,
&quot;username&quot;:&quot;D00000000000001&quot;,
&quot;password&quot;:&quot;6df007ce70a44a5fcbbf5796f9871202&quot;
}
```

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|clientid |是  |string |如果是摄像机，此值对应p2p值；如果是用户，则为用户管理产生  |
|username |是  |string | 如果是摄像机，则为hid；如果是用户，则为用户管理产生    |
|password     |是  |string | 如果是摄像机，则为服务器产生；如果是用户，则为用户管理产生    |


 ##### 返回示例
```json
 {
    &quot;result&quot;: &quot;allow&quot;,
    &quot;is_superuser&quot;: false,
    &quot;reason&quot;: &quot;&quot;,
    &quot;expiry_time&quot;: 0
}
```
 ##### 返回参数说明 

|参数名|类型|说明|
|:-----  |:-----|-----                           |
|result |string   |allow或deny |

参见[MQTT REST API](https://docs.emqx.com/zh/emqx/v5.8/admin/api.html#curl &quot;MQTT REST API&quot;)
参见[MQTT相关文档](https://docs.emqx.com/en/emqx/v5.8/admin/api-docs.html#tag/Plugins &quot;MQTT相关文档&quot;)

##### 备注

- 如果有错误，看msg

##### 需要进行的配置
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=672450cfac1005325c4ca1f7e22bdac2)


---

## 用户或摄像机上下线通知

> Page ID: 298031973

[TOC]

##### 简要描述

- MQTT在收到设备连接或是连接被断开时调用
- 发起方：MQTT服务器

##### 请求URL
- `api/v1/dev/xline`
  
##### 请求方式
- post

##### 参数
```json
{
&quot;clientid&quot;:&quot;TESTD00000000000001&quot;,
&quot;username&quot;:&quot;D00000000000001&quot;,
&quot;peername&quot;:&quot;192.168.1.126&quot;
&quot;reason&quot;:&quot;&quot;
}
```

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|clientid |是  |string |如果是摄像机，此值对应p2p值；如果是用户，则为用户管理产生  |
|username |是  |string | 如果是摄像机，则为hid；如果是用户，则为用户管理产生    |
|peername     |是  |string | 上线ip    |
|reason     |是  |string | 离线是告知原因    |


##### 返回示例
http状态返回200

##### 需要进行配置
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=44a94877a615749bcf1c77aab583373f)
![](http://yctx.vs98.com:1381/server/index.php?s=/api/attachment/visitFile&amp;sign=97fcd05ffbeaec8da923267de1ab6320)



---

# MWP Called by ZLM

## 直播流请求

> Page ID: 298031974

[TOC]

##### 简要描述

- 客户端请求视频流
- 发起方：浏览器或客户应用端

##### 请求URL
- `api/v1/zlm/LivePlay`
  
##### 请求方式
- post 

##### 参数
```json
{
    &quot;did&quot;: &quot;TESTD00000000000001&quot;,
    &quot;stream_id&quot;: 0,
    &quot;channel&quot;: 0
}
```

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|did |是  |string |摄像机的p2p值  |
|stream_id | 是 |int | 流id，主码流是0，子码流是1    |
|channel     |是  |int | 单目摄像机恒为0  |


 ##### 返回示例
```json
{
    &quot;code&quot;: 0,
    &quot;msg&quot;: &quot;OK&quot;,
    &quot;data&quot;: {
        &quot;url&quot;: &quot;http://192.168.1.94/index/api/webrtc?app=rtp&amp;stream=live_D00000000000001_ch0_s0&amp;type=play&quot;
    }
}
```
 ##### 返回参数说明 
 
在http返回值为200，其它错误码参见http响应码

|参数名|类型|说明|
|:-----  |:-----|----- |
|code |int   |操作码0为成功 |
|msg |string   |成功或失败的错误信息 |
|url |string   |为WebRTC地址 |





---

## 直播流关闭

> Page ID: 298031975

[TOC]

##### 简要描述

- 客户端请求关闭视频流
- 发起方：浏览器或客户应用端

##### 请求URL
- `api/v1/zlm/LiveStop`
  
##### 请求方式
- post 

##### 参数
```json
{
    &quot;did&quot;: &quot;TESTD00000000000001&quot;,
    &quot;stream_id&quot;: 0,
    &quot;channel&quot;: 0
}
```

|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|did |是  |string |摄像机的p2p值  |
|stream_id | 是 |int | 流id，主码流是0，子码流是1    |
|channel     |是  |int | 单目摄像机恒为0  |


 ##### 返回示例
```json
{
    &quot;code&quot;: 0,
    &quot;msg&quot;: &quot;OK&quot;,
    &quot;data&quot;: null
}
```
 ##### 返回参数说明 
 
 在http返回值为200，其它错误码参见http响应码

|参数名|类型|说明|
|:-----  |:-----|----- |
|code |int   |操作码0为成功 |
|msg |string   |成功或失败的错误信息 |





---

## 直接流无人观看

> Page ID: 298031976

[TOC]

##### 简要描述

- 视频流无人观看
- 发起方：ZLMediakit

##### 请求URL
- `api/v1/zlm/NoneReader`
  
##### 请求方式
- post 

##### 参数
```json
{
    &quot;app&quot; : &quot;rtp&quot;,
    &quot;hook_index&quot; : 21,
    &quot;mediaServerId&quot; : &quot;your_server_id&quot;,
    &quot;params&quot; : &quot;&quot;,
    &quot;schema&quot; : &quot;rtsp&quot;,
    &quot;stream&quot; : &quot;live_D00000000000001_ch0_s0&quot;,
    &quot;vhost&quot; : &quot;__defaultVhost__&quot;
}
```
文档参考[ZLMediakit相关章节on_stream_none_reader](https://github.com/zlmediakit/ZLMediaKit/wiki/MediaServer%E6%94%AF%E6%8C%81%E7%9A%84HTTP-HOOK-API &quot;ZLMediakit相关章节on_stream_none_reader&quot;)

```
 ##### 返回参数说明 
 
 在http返回值为200，





---

# MWP MQTT Commands

## 系统相关

> Page ID: 298031961

[TOC]

# 指令格式

###### topic
```
{DID}/control/system
```

######  信令格式
```json
{
	&quot;cmd&quot;:&quot;xxx&quot;,
	&quot;val&quot;:&quot;xx&quot;
}
```

## 1. 固件更新

###### 请求
```json
{
	&quot;cmd&quot;:&quot;update&quot;,
	&quot;val&quot;:&quot;http://aaa.bbb.com/aaaa.bin&quot;
}
```
|参数名|必选|类型|说明|
|:----    |:---|:----- |-----   |
|val |否  |string |可选，如果不指定，将使用系统自己的检测升级规则   |

###### 响应
无

## 2. 重启

###### 请求
```json
{
	&quot;cmd&quot;:&quot;reboot&quot;
}
```

###### 响应
无

## 3. 恢复出厂设置

###### 请求
```json
{
	&quot;cmd&quot;:&quot;reset&quot;
}
```

###### 响应
无

## 4. 策略更新
(1)云存或者服务器策略变更。
###### 请求
```json
{
	&quot;cmd&quot;:&quot;strategy&quot;
}
```

###### 响应
无


## 5. 上报设备信息

###### 请求
```json
{
	&quot;cmd&quot;:&quot;report&quot;
}
```

###### 响应
回应使用上线时的**topic**：
```
dev_info/{DID}
```
```json
{
&quot;ver&quot;:&quot;20251218184126&quot;,
&quot;gb28181&quot;:&quot;34020000001320000001&quot;,
&quot;mac&quot;:&quot;98000000098A&quot;,
&quot;p2p&quot;:&quot;TESTD00000000000001&quot;,
&quot;hid&quot;:&quot;D00000000000001&quot;,
&quot;model&quot;:&quot;HI-H402W6_NZ&quot;,
&quot;lang&quot;:0,
&quot;type&quot;:0,
&quot;odm&quot;:0
}
```
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|ver  |string   |版本号  |
|gb28181  |string   |国标编码  |
|mac |string |MAC地址|
|p2p|string|p2p号（唯一，且不变, 做为整个交互DID）|
|hid|string|硬件ID（唯一，且不变）|
|model|string|设备型号|



---

## 摄像机配置

> Page ID: 298031962

[TOC]

# 指令格式

配置相关信令格式参考[《P2P交互信令与HTTP请求接口简述》](http://yctx.vs98.com:1381/web/#/601874687/298031288 &quot;《P2P交互信令与HTTP请求接口简述》&quot;)章节，发送方增加了`from`字段，便于MQTT回复给指定的使用方；下面以获取主码流配置项举例：

###### topic
```
{DID}/control/config
```

######  信令格式
```json
{
	&quot;cmd&quot;:&quot;video_get&quot;,
	&quot;from&quot;:&quot;{UID}&quot;
}
```

###### 响应
topic
```
{UID}/control/config
```
报文体
```json
{
&quot;cmd&quot;: &quot;video_get&quot;,
&quot;from&quot;: &quot;{DID}&quot;,
&quot;data&quot;: {
...
},
&quot;result&quot;: 1
}
```

###### 示例
- 发送
*topic:*
`TESTD00000000000001/control/config`
```json
{
    &quot;cmd&quot;:&quot;video_get&quot;,
    &quot;from&quot;:&quot;user_yctx_ahui&quot;
}
```

- 响应
*topic:*
`user_yctx_ahui/control/config`
```json
{
    &quot;cmd&quot;: &quot;video_get&quot;,
    &quot;data&quot;: {
        &quot;bm_type&quot;: 0,
        &quot;frame&quot;: 12,
        &quot;quality&quot;: 1,
        &quot;rc_mode&quot;: 1,
        &quot;fbl&quot;: 2,
        &quot;encrypt&quot;: 0,
        &quot;bitrate&quot;: 300,
        &quot;I_interval&quot;: 5000,
        &quot;smart_encode&quot;: 0,
        &quot;version&quot;: 1
    },
    &quot;result&quot;: 1
}
```

---

## RTP直播

> Page ID: 298031963

[TOC]

##  开启直播
### topic
```
{DID}/rtp/play
```
### 信令格式
```json
{
	&quot;cmd&quot;: &quot;start_play&quot;,
	&quot;from&quot;:&quot;{UID}&quot;,
	&quot;data&quot;: {
		&quot;callid&quot;: &quot;asdfgcbjs&quot;,
		&quot;channel&quot;: 0,
		&quot;stream_id&quot;: 0,
		&quot;ssrc&quot;: 943592384,
		&quot;server_ip&quot;: &quot;192.168.1.94&quot;,
		&quot;server_port&quot;: 10000,
		&quot;tcp&quot;: 1
	}
}
```
### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  start_play|
|from  |string   |信令发送者id|
|callid  |string   |唯一id 后续通过这个id关闭直播  |
|channel  |int   |摄像机通道 单目 默认为 0 ，双目 0 1 ...n  第n路码流 |
|stream_id |int |0：主码流 1：子码流|
|ssrc|int|rtp同源标识符|
|server_ip|string|流媒体服务器收流ip（设备可访问）|
|server_port|int|流媒体服务器收流端口|
|tcp|int|RTP传输协议 0 UDP 1TCP|

##  开启直播响应
### topic
```
{UID}/rtp/play
```
```json
{
	&quot;cmd&quot;:&quot;start_play&quot;,
	&quot;from&quot;:&quot;{DID}&quot;,
	&quot;result&quot;:1
}
```
### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  start_play|
|from  |string   |信令发送者id (设备id)|
|result  |int   |1 成功 其他失败|

##  关闭直播信
### topic
```
{DID}/rtp/play
```
### 信令格式
```json
{
	&quot;cmd&quot;:&quot;stop_play&quot;,
	&quot;from&quot;:&quot;{UID}&quot;,
	&quot;data&quot;:{&quot;callid&quot;:&quot;asdfgcbjs&quot;}
}
```
### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  stop_play|
|from  |string   |信令发送者id|
|callid  |string   |唯一id start_play 中的callid  |


## 关闭直播响应
### topic
```
{UID}/rtp/play
```
### 信令格式
```json
{
	&quot;cmd&quot;:&quot;stop_play&quot;,
	&quot;from&quot;:&quot;{DID}&quot;,
	&quot;result&quot;:1
}
```
### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|start_play  |string   |固定为  start_play|
|from  |string   |信令发送者id (设备id)|
|result  |int   |1 成功 其他失败|


---

## RTP回放

> Page ID: 298031964

[TOC]


##  开启回放
### topic
```
{DID}/rtp/playback
```
###信令格式
```json
{
	&quot;cmd&quot;: &quot;start_play&quot;,
	&quot;from&quot;:&quot;{UID}&quot;,
	&quot;data&quot;: {
		&quot;callid&quot;: &quot;asdfgcbjs&quot;,
		&quot;channel&quot;: 0,
		&quot;ssrc&quot;: 943592384,
		&quot;server_ip&quot;: &quot;192.168.1.94&quot;,
		&quot;server_port&quot;: 10000,
		&quot;startTime&quot;:1766630544,
		&quot;endTime&quot;:1766630844,
		&quot;playbackspeed&quot;:10,
		&quot;tcp&quot;: 1
	}
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  start_play|
|from  |string   |信令发送者id|
|callid  |string   |唯一id 后续通过这个id关闭直播  |
|channel  |int   |摄像机通道 单目 默认为 0 ，双目 0 1 ...n  第n路码流 |
|ssrc|int|rtp同源标识符|
|server_ip|string|流媒体服务器收流ip（设备可访问）|
|server_port|int|流媒体服务器收流端口|
|startTime |int |起始时间 unix时间戳|
|endTime |int |0：结束时间 unix时间戳|
|playbackspeed |int |播放速度 1 0.1倍慢放 3 0.25 倍慢放 5 0.5倍慢放 10 正常 20 2倍快放 40 4倍快放 80 8倍快放|
|tcp|int|RTP传输协议 0 UDP 1TCP|

## 开启回放响应
### topic
```
{UID}/rtp/playback
```
###信令格式
```json
{
	&quot;cmd&quot;:&quot;start_play&quot;,
	&quot;from&quot;:&quot;{DID}&quot;,
	&quot;result&quot;:1
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  start_play|
|from  |string   |信令发送者id(设备id)|
|result  |int   |1 成功 其他失败|

##  回放设置参数
### topic
```
{DID}/rtp/playback
```
###信令格式
```json
{
	&quot;cmd&quot;: &quot;set_param&quot;,
	&quot;from&quot;:&quot;{UID}&quot;,
	&quot;data&quot;: {
		&quot;callid&quot;: &quot;asdfgcbjs&quot;,
		&quot;playbackspeed&quot;: 10,
		&quot;playbackSeek&quot;: 0,
		&quot;playbackstatus&quot;: 0
	}
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  set_param|
|from  |string   |信令发送者id|
|callid  |string   |唯一id start_play 中的callid  |
|playbackspeed  |int   |播放速度 1 0.1倍慢放 3 0.25 倍慢放 5 0.5倍慢放 10 正常 20 2倍快放 40 4倍快放 80 8倍快放|
|playbackSeek  |int   |播放跳转（seek）相对于starttime的定位的秒数 范围[0 ~ endTime-startTime）|
|playbackstatus  |int   |1 暂停 0 播放 |

## 回放设置参数响应
### topic
```
{UID}/rtp/playback
```
###信令格式
```json
{
	&quot;cmd&quot;:&quot;set_param&quot;,
	&quot;from&quot;:&quot;{DID}&quot;,
	&quot;result&quot;:1
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  start_play|
|from  |string   |信令发送者id(设备id)|
|result  |int   |1 成功 其他失败|

##关闭回放
### topic
```
{DID}/rtp/playback
```
###信令格式
```json
{
	&quot;cmd&quot;:&quot;stop_play&quot;,
	&quot;from&quot;:&quot;{UID}&quot;,
	&quot;data&quot;:{&quot;callid&quot;:&quot;asdfgcbjs&quot;}
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  stop_play|
|from  |string   |信令发送者id|
|callid  |string   |唯一id start_play 中的callid  |


## 关闭回放响应
### topic
```
{UID}/rtp/playback
```
###信令格式
```json
{
	&quot;cmd&quot;:&quot;stop_play&quot;,
	&quot;from&quot;:&quot;{DID}&quot;,
	&quot;result&quot;:1
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|start_play  |string   |固定为  start_play|
|from  |string   |信令发送者id(设备id)|
|result  |int   |1 成功 其他失败|



---

## 录像查询

> Page ID: 298031965

[TOC]


##录像查询
### topic
```
{DID}/record
```
### 信令格式
```json
{
	&quot;cmd&quot;: &quot;record_search&quot;,
	&quot;from&quot;: &quot;{UID}&quot;,
	&quot;data&quot;: {
		&quot;startTime&quot;:1766630544,
		&quot;endTime&quot;:1766630844,
		&quot;recordtype&quot;:0
	}
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  record_search|
|from  |string   |信令发送者id|
|startTime |int |起始时间 unix时间戳 一天中的事件 不支持跨天查询|
|endTime |int |0：结束时间 unix时间戳 一天中的事件 不支持跨天查询|
|recordtype  |int   |0 普通录像 1移动侦测录像 2 人形录像 3声音侦测录像 4全部录像|

## 录像查询响应
### topic
```
{UID}/record
```
### 信令格式
```json
{
	&quot;cmd&quot;: &quot;record_search&quot;,
	&quot;from&quot;: &quot;{DID}&quot;,
	&quot;result&quot;: 1,
	&quot;data&quot;: {
		&quot;recordlist&quot;: [{
			&quot;startTime&quot;: 1766630544,
			&quot;endTime&quot;: 1766630844,
			&quot;recordtype&quot;: 0
		}, {
			&quot;startTime&quot;: 1766630544,
			&quot;endTime&quot;: 1766630844,
			&quot;recordtype&quot;: 1
		}, {
			&quot;startTime&quot;: 1766630544,
			&quot;endTime&quot;: 1766630844,
			&quot;recordtype&quot;: 2
		}]
	}
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  start_play|
|from  |string   |信令发送者id（设备id）|
|result  |int   |1 成功 其他失败|
|data  |obj   |录像记录列表|
|recordlist  |array   |录像文件列表 一个录像记录一个子对象|
|startTime  |int   |录像开始时间 unix时间戳|
|endTime  |int   |录像结束时间 unix时间戳|
|recordtype  |int   |录像类型 0 普通录像 1移动侦测录像 2 人形录像 3声音侦测录像|



---

## PTZ控制

> Page ID: 298031966

[TOC]


##  云台移动
### topic
```
{DID}/control/ptz
```
###信令格式
```json
{
    &quot;cmd&quot;: &quot;ptz&quot;,
    &quot;from&quot;: &quot;{UID}&quot;,
    &quot;data&quot;: {
        &quot;ptz_cmd&quot;: 2,
        &quot;ptz_speed&quot;: 50,
        &quot;ptz_pos&quot;: 0,
        &quot;ptz_duration&quot;: 1
    }
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  ptz|
|from  |string   |信令发送者id|
|ptz_cmd  |int   |云台控制指令，参照ENUM_PTZCMD，停止云台请发0，并保留json格式  |
|ptz_speed  |int   |云台移动速度 0-100 |
|ptz_pos|int|云台位置|
|ptz_duration|int|持续时间|

## 云台移动响应
### topic
```
{UID}/control/ptz
```
###信令格式
```json
{
    &quot;cmd&quot;: &quot;ptz&quot;,
    &quot;from&quot;: &quot;{UID}&quot;,
    &quot;result&quot;: 1
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  ptz|
|from  |string   |信令发送者id(设备id)|
|result  |int   |1 成功 其他失败|
##  预置点操作(调用 设置 删除)
### topic
```
{DID}/control/ptz
```
###信令格式
```json
{
    &quot;cmd&quot;: &quot;ptz&quot;,
    &quot;from&quot;: &quot;{UID}&quot;,
    &quot;data&quot;: {
        &quot;ptz_cmd&quot;: 11,
        &quot;ptz_speed&quot;: 50,
        &quot;ptz_pos&quot;: 6,
        &quot;ptz_duration&quot;: 1
    }
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  ptz|
|from  |string   |信令发送者id|
|ptz_cmd  |int   |云台控制指令， 设置：10,删除: 11,调用: 12 |
|ptz_speed  |int   |云台移动速度 0-100，可为0 |
|ptz_pos|int|云台位置，当前需要设置/删除/调用的位置|
|ptz_duration|int|持续时间，可为0|

## 预置点操作响应
### topic
```
{UID}/control/ptz
```
###信令格式
```json
{
    &quot;cmd&quot;: &quot;ptz&quot;,
    &quot;from&quot;: &quot;{UID}&quot;,
    &quot;result&quot;: 1
}
```
###参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  ptz|
|from  |string   |信令发送者id(设备id)|
|result  |int   |1 成功 其他失败|



---

## 人脸库-更新/删除/查询

> Page ID: 298031967

[TOC]

#  人脸库更新

## 特征值同步方式(推荐)
 此方式为批量操作设备人脸库，设备人脸库中存在该人脸（PersonID 相同）就进行替换。否则就新增。如需删除设备人脸库 请使用facedb_delete指令
 特征值是由linx特征值工具生成, [linux特征值取工具](http://yctx.vs98.com:1381/web/#/p/3e02d335a106bca33c0afb2d701b1e77 &quot;linux特针织提取工具&quot;)
### 特征值同步指令下发
#### topic
```
{DID}/control/config
```

#### 信令格式
```json
{
	&quot;cmd&quot;: &quot;facedb_update_eigenvalue&quot;,
	&quot;from&quot;: &quot;{UID}&quot;,
	&quot;data&quot;: {
		&quot;url&quot;:&quot;http://xxxxxxxxxxx&quot;
	}
}
```
#### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  facedb_update_eigenvalue|
|from  |string   |信令发送者id|
|data  |obj   |指令对象|
|url  |string   |人脸特征值库下载地址 限制长度256|


#### 人脸特征值库格式示例
 IPC收到同步指令后，使用url中的地址下载特征值，此参数是由[linux特征值取工具](http://yctx.vs98.com:1381/web/#/p/3e02d335a106bca33c0afb2d701b1e77 &quot;linux特针织提取工具&quot;)生成，不允许修改
```json
{
	&quot;mode_version&quot;: &quot;711382&quot;,
	&quot;Person&quot;: [{
			&quot;PersonID&quot;: &quot;person_1&quot;,
			&quot;Name&quot;: &quot;test1&quot;,
			&quot;GroupID&quot;: &quot;testgroup&quot;,
			&quot;PersonType&quot;: 0,
			&quot;Feature&quot;: &quot;ULuNu7ZQBz7sjB+7/DsRPifBCT6t+9K88TvXvT+vUr62QxG+yL43OmriET6/GOE9mWmzvai35z0AUqe9vZahvT+W7b0zLzY+wxVuPeHTlr1NniU+NFE1PSyUU76UcIC9luk8vakjCb7kUPk85rK3POI2ab2AyHy6Nm1WPm3PD7wtWSM+zNzmO15Gljv4p8U94CYRvR0fmz2loK89mX4UPl3Dtz4U+v+9GxYmvti7qT0t6409NuesPAqCYj2AN6Y98YV3PsKq5DzN9Pe91l9WvN4Vrj2UAZq7bAEuPk5p8z2i3Fq9qdxHvWwAqD3NGd+9lZNBPY+JBb6cQp088rUJPn/dBD3vwlU9bnTavOCu/j2qM1892vpJPYZNj70mQcm8mLQOvQRMiL14GAM9sLqbvjZNHT4NDkQ+xeJQvn5zWTwkHfO9XStRPPXF9D1iJEI+JB2AvVmBlz28ArM8UmaNvpFc0L3dwqi8RGezvErBOj77HnE+Y7FAPOb4+LwAy0s84MdmuyAk3b0zdxw+fscIPLbCmD1It8y8PAJ3PaL0tr0nA3q8Xy26PLSOIL5OzLk9aBgVvuij8D2XhV6+WfaLPj5yjD0LbkQ+MSOMPSXm5DyLZGE8SPKpvjLJzr2amos96IwjvlSSITz2jUo9hO8ePpDkur1RBAe+CHOeOp0meL2axOW9udylPBAnw7y3e+M8eFrJvSt8DT4LElW+1oNAPIoG1ryt8DM+24wfPtFnJ77tli896f4bvk1Pxz2+3ks9S1nvvVAbR774+3q8Q6EYvew3UD4iBqA8GZWwPQ//Fb5QGqA9eJ5tvNPTdz3n0ga9GkwMPqNKxL0POha+zVA0PL88fT7ZAw8+dN8sPeKPiz1X9mI9E3obPliGIjvKGNg9/1TqvRx2ND1CAC080k8RvqQrY7vSh8S8gEPfPQJmbT0W1ee9KLZnvYbS1L1hUje+dHGkvXgoxL0QkSY+s6IjvqUnIb0IUKQ9AmEwvgjIB76YUK29gPwPvrwYIL7/VYG98XbWvRB3sD2qW4O+ihH0u3MdMr4kApq9AwK3vmUqYL4bjcK9ihxHvvM2M74dYT09G2Ymvkt8jLwIUSc+P7CsPHSsAL5En4I9xlUBvvKOsr1IN8A96tOJvDDtLjvKtuo9WxYNvoiRGT5oIdg7r6OcPaZR271MVVG9E6nBPdj+0r0JTI8+UZ4RvrRYLD1zVL67LfWnPD/SPj1wg+G9HXMrPvD4J76aVtC84TEXPe5hvr0eebS9Xyd5Pkh6vz3sxLc9ZOozPmIGnDw9QwO+uEOQPYpNVj0apYS9zUmGPpHUvL17j6Q9mGVCvePA8b02YnA9sTa7vdjtlDq4zLg8G9YQvg==&quot;
		},
		{
			&quot;PersonID&quot;: &quot;person_2&quot;,
			&quot;Name&quot;: &quot;test2&quot;,
			&quot;GroupID&quot;: &quot;testgroup&quot;,
			&quot;PersonType&quot;: 0,
			&quot;Feature&quot;: &quot;sP9svJ025j02nm09f8quPZrMGz4Go4c8JxKAPY/dq71Sc1y+KQEcPlZ0e7yt8tw91s+WvTHtZD2hiB2+u9jDvSvuIr5SojM+kJjTPeIDtr2r26k9b6lKPm1Gor2o98e9vhJBvk+I1r1t+i++qKwOvTg6nDu8FJs9GVKRPJBsi73HhUu8yIkHPRJv27y2ulI+vOkIvYOcFj0ws4o93rPoPfuKWb3wFd89M179vXBimT3sA4S92W96vYuQnb2faAk9V60APhcloTzUpBA9GBVMvUbdl7xSk8W8Uj7CvU6Ajj26iR69pXmRvpwitD3/TNa9TiTHvEzenz2h3CY9KhKGPYBCIjpnVpk93z3RvDx9JD5GHCw9vBxNPJWrP75e4QM9QR01PboPZr3vbBG85lEkvnFly7tUVKo9nW4Bvh0/IzvCDLK9M5PHPHqv1L2F9k89EvABPjzFEDyGQpc98PhwvjWMAL1V0wY+qkQaPUmStj0kxTY+zgxLvUhtIT7jmd290DoQPlpWM77FTFA9/Y6NPSF3mr3cZZC9LC5QvH6mrb2QhUc9uE6bvSUq9r1eXrM7MAyNvOKlgz1/9IO+MQirPmOAND5cJCY+oULOPBCGXzyUrUa8gblpvi3RwT1cEyC9YlDZvYixbLxJfeg9PP7bPcmueL0V04+9nejGvOAWv7weEpi9tLJzPfCD4j3IZVU8Zpc2vWG1BD1YViC+AogCPviA4r3qQYw+qgAmPhs8Yr7N0xo+6OwKPeKW3j0Uip89WLWavLhZED5y6Z09WLdJPW/M1T0YDte7nM5APoLpxbtPuRU9WLoMPX9i8L129iS+MkylPScmOT0w7Fo60neiPGj9xz37AQY+5NuNvX0nAz3PJIm94sw+PlMwij61d8q85kHCvEHwnzsMgRy++efbPa9pFr3CeiU+nn8DPqxyUT3EBAU94O8jvhwsTL4VpEG+n3sovsOzf71V06C7ofFQvvWf2L0SrwC+3sfBPLwA+r0Bqb09xmGbvkve2r0BFxa+fo9WvbSL6z2LWR++epv0vBFx/TxCfas9u9GYvhICJb3xm2A9lEaDvgAWZL5eXCG9LEjtvbo6Cr59Yzu9JB5zPTeTQ71d/2k8vUYmveNZNL2Wock9yH0ZPYSj4bwbEou9luoLvfQH/D38hec8//knPcCior3uMzE8JtP+vVxUcD1bVZ0+FXmGPf9qUj4s79s9BN/tvVSktz1NUrA90J+MPkhRI74YXuk9TazqPTx70D1gYr+8xTZfPuB/NT5cX6W8/+eXPvtfLz17p+69iKNou+XDM7zqTwi9NEwcPvxNF7vA5rK7suChvdmw3L1YPSe9W5dAvu6e8T37n8+9MgQvPA==&quot;
		}
	]
}
```

###  特征值同步指令响应
&lt;font color='red'&gt;
 人脸特征值同步涉及到特征值下载，特征值转换，是耗时操作，响应指令会等待同步完成后才返回给发送者
&lt;/font&gt;
#### topic
```
{UID}/control/config
```
#### 信令格式
```json
{
	&quot;cmd&quot;:&quot;facedb_update_eigenvalue&quot;,
	&quot;from&quot;:&quot;{DID}&quot;,
	&quot;result&quot;:1
}
```
#### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  facedb_update_eigenvalue|
|from  |string   |信令发送者id (设备id)|
|result  |int   |1 成功 其他失败|


## 图片同步方式
 此方式可以一次同步一个或多个人脸，如果设备中已经存在该人脸，就进行替换。
 图片为jpg格式，分辨率最大限制1920*1080，单个图片大小低于500K
 此方式同步人脸库较慢，建议使用特征值下发方式进行同步
### 图片同步指令下发
#### topic
```
{DID}/control/config
```

#### 信令格式
```json
{
	&quot;cmd&quot;: &quot;facedb_update_pic&quot;,
	&quot;from&quot;: &quot;{UID}&quot;,
	&quot;data&quot;: {
		&quot;Person&quot;:[
				{&quot;PersonID&quot;:&quot;person_1&quot;,&quot;Name&quot;:&quot;test1&quot;,&quot;GroupID&quot;:&quot;testgroup&quot;,&quot;PersonType&quot;:0,&quot;url&quot;:&quot;http://xxxxxxxx&quot;},
				{&quot;PersonID&quot;:&quot;person_2&quot;,&quot;Name&quot;:&quot;test2&quot;,&quot;GroupID&quot;:&quot;testgroup&quot;,&quot;PersonType&quot;:0,&quot;url&quot;:&quot;http://xxxxxxxx&quot;}
			]
	}
}
```

#### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  facedb_update_pic|
|from  |string   |信令发送者id|
|data  |obj   |指令对象|
|Person  |array   |多个人脸信息|
|PersonID  |string   |人脸id(唯一) 限制长度64|
|Name  |string   |人员名称 限制长度64|
|GroupID  |string   |人员所属组 限制长度64|
|PersonType  |int   |0 白名单 1黑名单|
|url  |string   |人脸图下载地址 限制长度256|

###  图片同步指令响应
&lt;font color='red'&gt;
 人脸图片同步涉及到多个图片的下载，图片解码，特征值提取，是耗时操作，响应指令会等待同步完成后才返回给发送者
&lt;/font&gt;
#### topic
```
{UID}/control/config
```
#### 信令格式
```json
{
	&quot;cmd&quot;:&quot;facedb_update_pic&quot;,
	&quot;from&quot;:&quot;{DID}&quot;,
	&quot;data&quot;:{
		&quot;Person&quot;:[
			{&quot;PersonID&quot;:&quot;person_1&quot;,&quot;result&quot;:1},
			{&quot;PersonID&quot;:&quot;person_2&quot;,&quot;result&quot;:1}
		]
	},
	&quot;result&quot;:1
}
```
#### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  facedb_update_pic|
|from  |string   |信令发送者id (设备id)|
|data  |obj   |返回数据对象|
|Person  |array   |多个人脸图同步信息|
|PersonID  |string   |人脸id(唯一) 限制长度64|
|Person-&gt;result  |int   |1 成功 其他失败 |
|result  |int   |1 成功 其他失败|

#  人脸库删除
###人脸库删除指令下发
#### topic
```
{DID}/control/config
```
#### 信令格式
```json
{
	&quot;cmd&quot;: &quot;facedb_delete&quot;,
	&quot;from&quot;: &quot;{UID}&quot;,
	&quot;data&quot;: {
		&quot;Person&quot;:[&quot;person_1&quot;,&quot;person_2&quot;]
	}
}
```
#### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  facedb_delete|
|from  |string   |信令发送者id|
|data  |obj   |指令对象|
|Person  |array   |多个人员的 PersonID 限制长度64，如果想要删除全部人脸，Person array中 只填一个值 &quot;DELETEALL&quot; &lt;/br&gt;示例:&quot;Person&quot;:[&quot;DELETEALL&quot;]|

###  人脸库删除指令响应
#### topic
```
{UID}/control/config
```
#### 信令格式
```json
{
	&quot;cmd&quot;:&quot;facedb_delete&quot;,
	&quot;from&quot;:&quot;{DID}&quot;,
	&quot;result&quot;:1
}
```
#### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  facedb_delete|
|from  |string   |信令发送者id (设备id)|
|result  |int   |1 成功 其他失败|

#  人脸库查询
###  人脸库查询指令下发
#### topic
```
{DID}/control/config
```
#### 信令格式
```json
{
	&quot;cmd&quot;: &quot;facedb_query&quot;,
	&quot;from&quot;: &quot;{UID}&quot;,
	&quot;data&quot;: {
		&quot;page&quot;:1,
		&quot;pagesize&quot;:20
	}
}
```
#### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  facedb_query|
|from  |string   |信令发送者id (设备id)|
|data  |obj   |指令数据对象|
|page  |int   |分页查询 查询第几页数据，第一次查询时填1|
|pagesize  |int   |一页最大的数据量（分页）|

###  人脸库查询指令响应
#### topic
```
{DID}/control/config
```
#### 信令格式
```json
{
	&quot;cmd&quot;:&quot;facedb_query&quot;,
	&quot;from&quot;:&quot;{DID}&quot;,
	&quot;data&quot;:{
		&quot;Person&quot;:[
			{&quot;PersonID&quot;:&quot;person_1&quot;,&quot;Name&quot;:&quot;test1&quot;,&quot;GroupID&quot;:&quot;testgroup&quot;,&quot;PersonType&quot;:0},
			{&quot;PersonID&quot;:&quot;person_2&quot;,&quot;Name&quot;:&quot;test2&quot;,&quot;GroupID&quot;:&quot;testgroup&quot;,&quot;PersonType&quot;:0}
		],
		&quot;total&quot;: 2,
		&quot;page&quot;: 1,
		&quot;pagesize&quot;: 20,
		&quot;totalpages&quot;: 1
	},
	&quot;result&quot;:1
}
```
#### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  facedb_query|
|from  |string   |信令发送者id (设备id)|
|data  |obj   |指令数据对象|
|Person  |array   |多个人脸信息|
|total  |int   |设备中的总人脸数|
|page  |int   |当前的查询页数 同下发查询指令中的page|
|pagesize  |int   |一页最大的数据量 同下发查询指令中的page）|
|totalpages  |int   |总共有多少页 根据 total / pagesize + (total % pagesize &gt; 0 ? 1 : 0)|
|result  |int   |1 成功 其他失败 失败不含data节点|

---

## 截图

> Page ID: 298031978

[TOC]


##  截图
### 截图指令下发
#### topic
```
{DID}/control/config
```

#### 信令格式
```json
{
	&quot;cmd&quot;: &quot;manual_snapshot&quot;,
	&quot;from&quot;: &quot;{UID}&quot;,
	&quot;data&quot;: {
		&quot;channel&quot;:0,
		&quot;stream&quot;:0
	}
}
```
#### 参数说明
|参数名|类型|说明|
|:----- |:----- |-----                           |
|cmd  |string   |固定为  manual_snapshot|
|from  |string   |信令发送者id|
|data  |obj   |指令对象|
|channel  |int   |多目设备编号0,1，单目设备默认为0|
|stream  |int   |0 主码流,1子码流，受限于设备能力集，如果设备只支持特定分辨率截图，该参数不生效|

###  截图指令响应
&lt;font color='red'&gt;
 截图成功后会把图片传到对象存储服务器（设备需配置对象存储服务器，否则不支持），是耗时操作，响应指令会等待上传成功后才返回给发送者
&lt;/font&gt;
#### topic
```
{UID}/control/config
```
#### 信令格式
```json
{
	&quot;cmd&quot;:&quot;manual_snapshot&quot;,
	&quot;from&quot;:&quot;{DID}&quot;,
	&quot;obs_url_prefix&quot;: &quot;http://192.168.1.96:9000/test/&quot;,
	&quot;obs_path_all&quot;: &quot;123456789abcdefghioss/20260129/130313-52-PzFgMRzncly2vfyClV8fD5GUmXWOsyo3.jpg&quot;,
	&quot;expires&quot;:1770260045,
	&quot;data&quot;: {
		&quot;capture_time&quot;:1769655245,
		&quot;width&quot;:1920,
		&quot;height&quot;:1080
	},
	&quot;result&quot;:1
}
```
#### 参数说明
|参数名|类型|说明|
|:-----  |:-----|-----                           |
|cmd  |string   |固定为  manual_snapshot|
|from  |string   |信令发送者id (设备id)|
|result  |int   |1 成功 其他失败|
|obs_url_prefix  |string   |图片对象存地址前缀  仅成功时存在|
|obs_path_all  |string   |图片对象存地址前缀  仅成功时存在 访问图片时将obs_url_prefix obs_path_all地址进行拼接|
|expires  |int|对象存过期时间 仅成功时存在|
|data  |obj   |截图数据对象 仅成功时存在|
|capture_time  |int   |抓拍时间戳|
|width  |int   |图片宽|
|height  |int   |图片高|

---
