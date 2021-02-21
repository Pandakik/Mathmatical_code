clear
load data2；
t = 0 : 86400;
%数据表格
%初始化

%机台
wk(g,n,k) %机台可去的位置
wn(n,t,k)%机台当前所在的位置
x(:,t,n,k) =%机台状态，1工作，0不工作
G(:,n,k)%该位置可处理商品
o(:,t,n,k)%该机台上一次加工的商品
ta(k,n,p)%该机器第p次加工开始时间
ts(k,n,p)%该机器第p次加工结束时间
gn(k,n)%表示第k种机台能能去几个站点
tw(k)%换位置时间
tb = th(k);%th为换模具时间
TT(k)%第k个机台的TT
FDT(k)%第k个机台的FDT
nn(k)%每种机台有n（k）个机器

%lot
h(:,j)%表示该lot是第几种商品
%表示第几种商品
s(j,t)%表示该lot该时刻所处位置
td(j,t)%表示该lot此时的等待时间
xj(j,t)%表示第j个lot在t时刻的状态
js%lot编号
num(j)%第j个lot装的玻璃片数

%其他
savew(z) = j;   %记录可处理位置的lot
savez(u) = z;
product %产量     

for t = 0 : 86400
    for k = 1:8%个机台
        for n = 1 : nn(k)%每个机台有n台机器
            z = 1;
           if sum(x(:,t,n,k)) = 0%如果该机台处于空闲状态
            for j = 1 : js%流水线上共有js个lot
                if xj(j,t)==0
                for g = 1:gn(k,n) %判断该机台能不能到这个lot所处站点,g表示该机台能去几个位置
                    
                    if wk(g,n,k) = s(j,t) %判断能不能处理该位置的lot
                    savew(z) = j;   %记录可处理位置的lot
                    z = z+1;%一共有z个j可被该机台所处理
                    end

                end
                end
            end
            
            %判断能否处理该产品
            u = 0;%储存可处商品个数
            tdmax = 0;
            jmax = 0;
            
            for i = 1:z
                savesa = h(:,sazve(z))'*G(:,n,k);%判断能否处理该lot中的商品
                if savesa == 1
                    ta = t;%记录处理开始时间
                    savez(u) = z;
                    u = u+1;
                           if td(savew(savez(u)),t)>td(savew(savez(u-1)),t)%找出最大的等待时间
                            tdmax = td(savew(savez(u)),t);
                            jmax = savew(savez(u));
                        end 
                end
            end
            
            %判断在不在同一个位置
            ta = t
            if s(jmax,t) = wn(n,t,k)
                            if h(:,jmax) = o(:,t,n,k)%判断是否需要切换摸具
                                %不需要换摸具
                                %开始加工
                                tb = t;%保护当前时刻
                                tp = FDT(k)+(num(jmax)-1)*TT(K);
                                for t = ta:ta+tp
                                x(:,t,n,k) = h(:,jmax);
                                wn(n,t,k) = wn(n,t,k); 
                                xj(jmax,t) = 1;%表示该lot正在被加工
                                end
                                t = ta;%恢复时间
                                s(jmax,ta+tp) = s(j,ta)+1;%加工完后该lot移动到下一个站点前
                                xj(jmax,ta+tp) = 0;
                                td(jmax,ta+tp) = 0;
                                x(k,n,ta+tp) = 0;
                                o(:,ta+tp,n,k) = h(:,jmax);
                                if s(jmax,ta+tp)==22
                                            product = product+num(jmax);
                                        end
                            else
                            %
                                     tb = th(k);%th为换模具时间
                                     tp = FDT(k)+(num(jmax)-1)*TT(K);
                                     for t = ta+tb:ta+tb+tp
                                    x(:,t,n,k) = h(:,jmax);
                                    wn(n,t,k) = wn(n,ta,k); 
                                    xj(jmax,t) = 1;%表示该lot正在被加工
                                    end
                                    s(jmax,ta+tb+tp) = s(j,ta)+1;%加工完后该lot移动到下一个站点前
                                    xj(jmax,ta+tb+tp) = 0;
                                    td(jmax,ta+tb+tp) = 0;
                                    x(:,ta+tb+tp,n,k) = 0;
                                    o(:,ta+tb+tp,n,k) = h(:,jmax);
                                    t = ta;
                                    if s(jmax,ta+tb+tp)==22
                                            product = product+num(jmax);
                                    end
                                        t = ta;

                            end
            
            else
                                if h(:,jmax) = o(k,n,t)%判断是否需要切换摸具
                                %不需要换摸具
                                %开始加工
                                    tb =tw(k);
                                    tp = FDT(k)+(num(jmax)-1)*TT(K);
                                    for t = ta+tb:ta+tb+tp)
                                    x(:,t,n,k) = h(:,jmax);
                                    wn(n,t,k) = wn(n,t,k); 
                                    xj(jmax,t) = 1;%表示该lot正在被加工
                                    end
                                    s(jmax,ta+tb+tp) = s(j,ta)+1;%加工完后该lot移动到下一个站点前
                                    xj(jmax,ta+tb+tp) = 0;
                                    td(jmax,ta+tb+tp) = 0;
                                    x(:,ta+tb+tp,n,k) = 0;
                                    o(:,ta+tb+tp,n,k) = h(:,jmax);
                                                                          if s(jmax,ta+tb+tp)==22
                                            product = product+num(jmax);
                                                                          end
                                        t = ta;
                                else
                            %
                                     tb = tw(k)+th(k);
                                     tp = FDT(k)+(num(jmax)-1)*TT(K);
                                     for t = ta+tb:ta+tb+tp)
                                    x(:,t,n,k) = h(:,jmax);
                                    w(n,t,k) = w(n,ta,k); 
                                    xj(jmax,t) = 1;%表示该lot正在被加工
                                    end
                                    s(jmax,ta+tb+tp) = s(jmax,ta)+1;%加工完后该lot移动到下一个站点前
                                    xj(jmax,ta+tb+tp) = 0;
                                    td(jmax,ta+tb+tp) = 0;
                                    x(:,ta+tb+tp,n,k) = 0;
                                    o(:,ta+tb+tp,n,k) = h(:,jmax);
                                    t =ta;
                                        if s(jmax,ta+tb+tp)==22
                                            product = product+num(jmax);
                                        end
                                end
                
            end
            
           end
        end
    end
                    %如果lot找不到机台，则等待
                    %等待时间处理
                    for j =1:js
                        if xj(j,t)=0;
                            for k = 1:8
                            for n = 1:nn(k)
                              for g = 1:gn(k,n)%表示一个机台可以去几个位置
                                  if s(j,t) == wk(g,n,k)
                                      
                                      if h(:,j)'*G(:,n,k)==1
                                          if sum(x(:,t,n,k)) = 0
                                              flag = 1;
                                              break;
                                          else
                                              flag =0
                                          end
                                        
                                          end
                                      end
                                  end
                              end
                            end
                        end
                        end
                        if flag ==0
                        td(j,t+1) = td(j,t)+1;
                        end
                       
                        
                        
                        %如果机台找不到处理的lot则等待
                        for n=1:nn(k)
                            if sum(x(:,t,n,k)) == 0
                                for j = 1:js
                                     if s(j,t) == wk(g,n,k)
                                      if h(:,j)'*G(:,n,k)==1
                                          if xj(j,t) = 0
                                              flag = 1;
                                              break;
                                          else
                                              flag =0;
                                          end
                                      end
                                     end

                                end
                            end
                        end
                        if flag == 0
                        x(:,t+1,n,k)=x(:,t,n,k);
                        wn(n,t+1,k) = wn(n,t,k);
                        o(:,t+1,n,k) = o(:,t,n,k)
                        end
                        
       
end
        
    
    
end
