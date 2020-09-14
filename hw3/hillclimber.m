function [x,var] = hillclimber(fun,lb,ub,step) %step���C�@�B���Z��
    x = zeros(1,2); %x�x�s�̫᪺�y��
    x1 = (ub-lb)*rand()+lb; %�̷� ub�P lb�]�w�H���y��
    x2 = (ub-lb)*rand()+lb;
    var = fun(x1,x2);
    while true
        dir = 0;
        %% �]�m�����X�d��
        right = x1 + step;
        left = x1 - step;
        up = x2 + step;
        down = x2 - step;
        if right > ub
            right = ub;
        end
        if left < lb
            left = lb;
        end
        if up > ub
            up = ub;
        end
        if down < lb
            down = lb;
        end
        
        %% ���|�Ӥ�V�A���է���p��
        v = fun(right,x2);
        if v<var
            var=v;
            dir=1;
        end
        v = fun(left,x2);
        if v<var
            var=v;
            dir=2;
        end
        v = fun(x1,up);
        if v<var
            var=v;
            dir=3;
        end
        v = fun(x1,down);
        if v<var
            var=v;
            dir=4;
        end
        
        %% �����p��(���Ӥ�V��)�A�Ϊ̬O���@�ӷ��p��(break)
        if dir == 0
            x = [x1,x2];
            break;
        elseif dir==1
            x1=right;
        elseif dir==2
            x1=left;
        elseif dir==3
            x2=up;
        elseif dir==4
            x2=down;
        end
    end
end