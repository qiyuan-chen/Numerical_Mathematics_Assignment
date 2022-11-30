function [x, best_value, iter] = hookejeeves(n, x0, h, min_h, maxiter)
% 输入
% n 变量数量，x0 初始值（向量），h 搜索步长，min_h 最小步长
% toll 误差，maxiter 最大迭代次数，func求解函数
%
% 输出
% x 最佳点，best_value函数最佳值，iter迭代次数
    x = x0;
    best_value = func(x);
    iter = 0;
    while h > min_h
        [x_new] = explore(n, x, h); % x_new保存探索后的结果
        if x_new == x
            h = h/2; % 探索后的结果还是原来的点，说明不优化了，减少步长
        else
            ff = func(x_new); % 探索方向后的点的函数值
            direction = x_new - x; % 方向
            
            % 为了更高效，不能只在这个方向上走一步，需要多走几步，接下来确定步长

            j = 2;
            ff_new = ff;
            x_new1 = j * direction + x;

            while(func(x_new1) < ff_new)
                % 当再走一个单位方向后的值更小时
                ff_new = func(x_new1);
                j = j + 1;
                x_new1 = j * direction + x; %走j步
            end

            % 退出循环的时候，j是最小值的下一步，所以需要使用j-1回到最小值的j
            x = (j - 1) * direction + x;
            % 开始新的迭代
        end
        iter = iter+1;
        if maxiter < iter
            % 大于迭代步数
            break
        end
    end
    best_value = func(x);
end
