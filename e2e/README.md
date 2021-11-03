## 测试脚本使用说明 
e2e目录下的脚本基于python开发，主要用于自动化测试基于hermes的跨链交互用例。
### 环境要求
python3+
#### 安装第三方库：
```
pip install toml
```
### 启动测试节点
- 建议分别启动两个同构链节点，用于同构链之间，异构链之间的交互测试。
- 如果只启动两个测试节点，根据测试节点情况，修改hermes.toml文件中的chains信息,把不需要测试节点信息注释掉或者删除掉
### 运行测试脚本
```
python run.py -c ../hermes.toml --cmd hermes-dv 
```
### 观察测试运行结果

## TODO
- 增加配置文件：把命令参数配置到文件中；
- 支持单用例测试和批量用例测试；
- 增加python依赖安装脚本