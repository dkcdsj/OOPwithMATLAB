clear all;

% 1. 创建两个对象
obj1 = Grid();
obj2 = Grid();

disp('--- 初始状态 ---');
disp(['obj1: ', num2str(obj1.SharedData.Value)]);
disp(['obj2: ', num2str(obj2.SharedData.Value)]);

% 2. 修改 obj1 里面的数据
% 注意：我们没有修改 obj1 的属性本身，而是修改了属性所指向对象的 Value
obj1.SharedData.Value(1) = 100;

disp(' ');
disp('--- 修改 obj1 之后 ---');
disp(['obj1: ', num2str(obj1.SharedData.Value)]); 
% 见证奇迹（灾难）的时刻：obj2 也变了！
disp(['obj2: ', num2str(obj2.SharedData.Value)]);

% 验证它们是否指向同一个对象
disp(' ');
if obj1.SharedData == obj2.SharedData
    disp('✓ obj1.SharedData 和 obj2.SharedData 是同一个对象！（共享）');
else
    disp('obj1.SharedData 和 obj2.SharedData 是不同的对象');
end
