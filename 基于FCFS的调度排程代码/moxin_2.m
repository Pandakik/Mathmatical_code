clear
load data2��
t = 0 : 86400;
%���ݱ��
%��ʼ��

%��̨
wk(g,n,k) %��̨��ȥ��λ��
wn(n,t,k)%��̨��ǰ���ڵ�λ��
x(:,t,n,k) =%��̨״̬��1������0������
G(:,n,k)%��λ�ÿɴ�����Ʒ
o(:,t,n,k)%�û�̨��һ�μӹ�����Ʒ
ta(k,n,p)%�û�����p�μӹ���ʼʱ��
ts(k,n,p)%�û�����p�μӹ�����ʱ��
gn(k,n)%��ʾ��k�ֻ�̨����ȥ����վ��
tw(k)%��λ��ʱ��
tb = th(k);%thΪ��ģ��ʱ��
TT(k)%��k����̨��TT
FDT(k)%��k����̨��FDT
nn(k)%ÿ�ֻ�̨��n��k��������

%lot
h(:,j)%��ʾ��lot�ǵڼ�����Ʒ
%��ʾ�ڼ�����Ʒ
s(j,t)%��ʾ��lot��ʱ������λ��
td(j,t)%��ʾ��lot��ʱ�ĵȴ�ʱ��
xj(j,t)%��ʾ��j��lot��tʱ�̵�״̬
js%lot���
num(j)%��j��lotװ�Ĳ���Ƭ��

%����
savew(z) = j;   %��¼�ɴ���λ�õ�lot
savez(u) = z;
product %����     

for t = 0 : 86400
    for k = 1:8%����̨
        for n = 1 : nn(k)%ÿ����̨��n̨����
            z = 1;
           if sum(x(:,t,n,k)) = 0%����û�̨���ڿ���״̬
            for j = 1 : js%��ˮ���Ϲ���js��lot
                if xj(j,t)==0
                for g = 1:gn(k,n) %�жϸû�̨�ܲ��ܵ����lot����վ��,g��ʾ�û�̨��ȥ����λ��
                    
                    if wk(g,n,k) = s(j,t) %�ж��ܲ��ܴ����λ�õ�lot
                    savew(z) = j;   %��¼�ɴ���λ�õ�lot
                    z = z+1;%һ����z��j�ɱ��û�̨������
                    end

                end
                end
            end
            
            %�ж��ܷ���ò�Ʒ
            u = 0;%����ɴ���Ʒ����
            tdmax = 0;
            jmax = 0;
            
            for i = 1:z
                savesa = h(:,sazve(z))'*G(:,n,k);%�ж��ܷ����lot�е���Ʒ
                if savesa == 1
                    ta = t;%��¼����ʼʱ��
                    savez(u) = z;
                    u = u+1;
                           if td(savew(savez(u)),t)>td(savew(savez(u-1)),t)%�ҳ����ĵȴ�ʱ��
                            tdmax = td(savew(savez(u)),t);
                            jmax = savew(savez(u));
                        end 
                end
            end
            
            %�ж��ڲ���ͬһ��λ��
            ta = t
            if s(jmax,t) = wn(n,t,k)
                            if h(:,jmax) = o(:,t,n,k)%�ж��Ƿ���Ҫ�л�����
                                %����Ҫ������
                                %��ʼ�ӹ�
                                tb = t;%������ǰʱ��
                                tp = FDT(k)+(num(jmax)-1)*TT(K);
                                for t = ta:ta+tp
                                x(:,t,n,k) = h(:,jmax);
                                wn(n,t,k) = wn(n,t,k); 
                                xj(jmax,t) = 1;%��ʾ��lot���ڱ��ӹ�
                                end
                                t = ta;%�ָ�ʱ��
                                s(jmax,ta+tp) = s(j,ta)+1;%�ӹ�����lot�ƶ�����һ��վ��ǰ
                                xj(jmax,ta+tp) = 0;
                                td(jmax,ta+tp) = 0;
                                x(k,n,ta+tp) = 0;
                                o(:,ta+tp,n,k) = h(:,jmax);
                                if s(jmax,ta+tp)==22
                                            product = product+num(jmax);
                                        end
                            else
                            %
                                     tb = th(k);%thΪ��ģ��ʱ��
                                     tp = FDT(k)+(num(jmax)-1)*TT(K);
                                     for t = ta+tb:ta+tb+tp
                                    x(:,t,n,k) = h(:,jmax);
                                    wn(n,t,k) = wn(n,ta,k); 
                                    xj(jmax,t) = 1;%��ʾ��lot���ڱ��ӹ�
                                    end
                                    s(jmax,ta+tb+tp) = s(j,ta)+1;%�ӹ�����lot�ƶ�����һ��վ��ǰ
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
                                if h(:,jmax) = o(k,n,t)%�ж��Ƿ���Ҫ�л�����
                                %����Ҫ������
                                %��ʼ�ӹ�
                                    tb =tw(k);
                                    tp = FDT(k)+(num(jmax)-1)*TT(K);
                                    for t = ta+tb:ta+tb+tp)
                                    x(:,t,n,k) = h(:,jmax);
                                    wn(n,t,k) = wn(n,t,k); 
                                    xj(jmax,t) = 1;%��ʾ��lot���ڱ��ӹ�
                                    end
                                    s(jmax,ta+tb+tp) = s(j,ta)+1;%�ӹ�����lot�ƶ�����һ��վ��ǰ
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
                                    xj(jmax,t) = 1;%��ʾ��lot���ڱ��ӹ�
                                    end
                                    s(jmax,ta+tb+tp) = s(jmax,ta)+1;%�ӹ�����lot�ƶ�����һ��վ��ǰ
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
                    %���lot�Ҳ�����̨����ȴ�
                    %�ȴ�ʱ�䴦��
                    for j =1:js
                        if xj(j,t)=0;
                            for k = 1:8
                            for n = 1:nn(k)
                              for g = 1:gn(k,n)%��ʾһ����̨����ȥ����λ��
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
                       
                        
                        
                        %�����̨�Ҳ��������lot��ȴ�
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
