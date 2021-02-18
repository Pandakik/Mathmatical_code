function createfigure(X1, Y1)
%CREATEFIGURE(X1, Y1)
%  X1:  x 数据的向量
%  Y1:  y 数据的向量

%  由 MATLAB 于 14-Aug-2020 00:31:32 自动生成

% 创建 figure
figure1 = figure('InvertHardcopy','off','Color',[1 1 1]);

% 创建 axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% 创建 plot
plot(X1,Y1,'MarkerSize',20,'Marker','o','LineWidth',2,'LineStyle','none');

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','0',...
    'Position',[120.214734967742 30.253426 1.4210854715202e-14]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','1',...
    'Position',[120.232915956989 30.3136482461752 1.4210854715202e-14]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','2',...
    'Position',[120.385147 30.296161 0]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','3',...
    'Position',[120.186408967742 30.2595712461752 1.4210854715202e-14]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','4',...
    'Position',[120.230137956989 30.2009832461752 1.4210854715202e-14]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','5',...
    'Position',[120.174105978495 30.2690924923505 1.4210854715202e-14]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','6',...
    'Position',[120.120181956989 30.246203 1.4210854715202e-14]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','7',...
    'Position',[120.196845967742 30.2935067538248 1.4210854715202e-14]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','8',...
    'Position',[120.251346967742 30.1504207538248 1.4210854715202e-14]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','9',...
    'Position',[120.192861978495 30.3555032461752 1.4210854715202e-14]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','10',...
    'Position',[120.288567827957 30.403098 1.4210854715202e-14]);

% 创建 text
text('Parent',axes1,'LineWidth',2,'FontSize',20,'String','11',...
    'Position',[120.067019849462 30.2889404239818 1.4210854715202e-14]);

% 创建 ylabel
ylabel('纬度（°）','LineWidth',2,'FontSize',20);

% 创建 xlabel
xlabel('经度（°）','LineWidth',2,'FontSize',20);

% 创建 title
title('第二轮卫健委物资运输路线图','LineWidth',2,'FontSize',20);

% 取消以下行的注释以保留坐标区的 X 范围
% xlim(axes1,[120.060584677419 120.310584677419]);
% 取消以下行的注释以保留坐标区的 Y 范围
% ylim(axes1,[30.118289207384 30.418289207384]);
% 取消以下行的注释以保留坐标区的 Z 范围
% zlim(axes1,[-1 1]);
box(axes1,'on');
% 设置其余坐标区属性
set(axes1,'FontSize',20,'LineWidth',2);
% 创建 arrow
annotation(figure1,'arrow',[0.619791666666667 0.664583333333332],...
    [0.486394557823129 0.614427884975128],'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.683333333333333 0.8328125],...
    [0.662131519274377 0.8718820861678],'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.603125 0.5359375],...
    [0.482993197278912 0.493197278911565],...
    'Color',[0 0.450980392156863 0.741176470588235],...
    'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.468229166666667 0.18125],...
    [0.531746031746032 0.575962996629356],...
    'Color',[0.850980392156863 0.329411764705882 0.101960784313725],...
    'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.604166666666667 0.566666666666667],...
    [0.489795918367347 0.565759637188209],'Color',[0 1 0],'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.572395833333333 0.652604166666667],...
    [0.606575963718821 0.645124716553288],'Color',[0 1 0],'LineWidth',2);

% 创建 doublearrow
annotation(figure1,'doublearrow',[0.550520833333333 0.609375],...
    [0.729024943310658 0.496598639455782],'Color',[0 0 1],'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.667708333333333 0.7140625],...
    [0.310657596371882 0.223356009070295],'Color',[1 1 0],'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.602604166666667 0.496354166666667],...
    [0.485260770975057 0.529478458049887],'Color',[1 0 0],'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.3421875 0.603125],...
    [0.445578231292517 0.469387755102041],...
    'Color',[0 0.450980392156863 0.741176470588235],...
    'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.509374999999999 0.3359375],...
    [0.492063492063492 0.467120181405896],...
    'Color',[0 0.450980392156863 0.741176470588235],...
    'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.65625 0.611458333333333],...
    [0.621315192743764 0.49546485260771],'Color',[0 1 0],'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.7171875 0.621354166666667],...
    [0.238095238095238 0.467120181405896],'Color',[1 1 0],'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.833854166666667 0.621875],...
    [0.860544217687075 0.477324263038549],'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.619791666666667 0.65],...
    [0.458049886621315 0.352607709750567],'Color',[1 1 0],'LineWidth',2);

% 创建 arrow
annotation(figure1,'arrow',[0.1796875 0.603125],...
    [0.560090702947846 0.467120181405896],'Color',[1 0 0],'LineWidth',2);

