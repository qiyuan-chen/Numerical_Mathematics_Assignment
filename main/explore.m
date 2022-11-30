function [x] = explore(n, x0, h)
% 输入
% n 变量数量，x0 初始值（向量），func求解函数，h为步长
%
% 输出
% x 最佳点
    x = x0;
    f0 = func(x);% 得到f(x_0)
    for i = 1:n
        x(i) = x(i) + h(i); 
        ff = func(x); %在一个方向上尝试
        if ff < f0
            % 如果这个方向取值更小了，那么继续尝试下一个ei方向，并把最小值赋为当前值
            f0 = ff; 
        else
            % 否则就尝试相反方向
            x(i) = x0(i) - h(i); 
            ff = func(x);
            if ff < f0
                % 如果相反方向小了，那么就把最小值赋为当前值，继续尝试下一个方向
                f0 = ff; 
            else
                % 如果两个方向尝试完，都不如x0处小，那么这个方向上最小的点就是x0
                x(i) = x0(i);
            end
        end
    end