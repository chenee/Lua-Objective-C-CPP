Lua-Objective-C-CPP
===================

this is a demo project,show you how to hybrid Lua, C++, Objective-C.
e.g. call C++ from OC, operate C++ class by Lua，which called by OC ...

thanks to these project:

1. [cocos2dx-lua].
2. [https://github.com/narfdotpl/lua-on-ios].
3. [http://www.codenix.com/~tolua/].


How to setup the hybrid lua project.
---------------------

1. to build a lua project for Xcode,we need lua runtime library: luajit so. add prebuilod luajit related files to the project. (it's lua-5.1.x ,which support by tolua++. if you use cocoapods like "pod lua". it will download & configure lua-5.2.x for you,it doesn't compatible with the latest tolua++ version 1.0.93 ). of course, you can add the source file and build them with your project.
2. OK,you can call lua from OC now, but how to use C++ class in lua ?
the answer is:tolua++. (http://www.codenix.com/~tolua/) I upload a "tools/tolua" dir with the Xcode project. you can have a try,but don't forgort install tolua++ before "make" :)
3. this project demo:
[run lua string directly]
[call lua function from OC]
[regist C function to lua, then call it from lua(thanks to narfdotpl/lua-on-ios)]
[operate c++ class from lua  (by me ^_*)]








