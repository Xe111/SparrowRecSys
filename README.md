# 项目介绍
本项目基于SparrowRecSys电影推荐系统，进行了部分功能扩展，主要包括对于电影导演和演员信息的添加，以及基于导演和演员信息的电影推荐功能。

## 环境要求
* Java 8
* Scala 2.11
* Python 3.6+
* TensorFlow 2.0+

## 快速开始
将项目用IntelliJ打开后，找到`RecSysServer`，右键点选`Run`，然后在浏览器中输入`http://localhost:6010/`即可看到推荐系统的前端效果。

## 项目数据
项目数据来源于https://www.imdb.com，使用PyMovieDb库在IMDb爬取了1000部电影的导演和演员信息。

## 项目技术架构
项目技术架构遵循经典的工业级深度学习推荐系统架构，包括了离线数据处理、模型训练、近线的流处理、线上模型服务、前端推荐结果显示等多个模块。

## 项目实现的深度学习模型
* Word2vec (Item2vec)
* DeepWalk (Random Walk based Graph Embedding)
* Embedding MLP
* Wide&Deep
* Nerual CF
* Two Towers
* DeepFM
* DIN(Deep Interest Network)

## 项目分工
数据收集与处理(贡献度)：陈雨泉(100%)
后端代码：陈雨泉(80%)、张洵(10%)、何锦(10%)
前端代码：陈雨泉(80%)、张洵(20%)
ppt及视频制作：何锦(50%)、陈雨泉(50%)
汇报演示：何锦(100%)

