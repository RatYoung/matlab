%Generate Hilbert martix
for n=2:6
    disp('n:');
    disp(n);
    H = zeros(n, n);
    for i=1:n
        for j=1:n
            H(i, j) = 1/(i+j-1);
        end
    end
    x = ones(n, 1);
    b = H*x;
    bn = b;
    
    %列主元消去法
    %①
    det = 1;
    %②
    for k=1:n-1
        ik = k;
        max = abs(H(k, k));
        for i=k:n
            if (abs(H(i, k)) > max)
                max = abs(H(i, k));
                ik = i;
            end
        end
        if (H(ik, k) == 0)
            det = 0;
            return
        end
        if (ik ~= k)
            for j = k:n
                tmp = H(k, j);
                H(k, j) = H(ik, j);
                H(ik, j) = tmp;
            end
            tmp = b(k);
            b(k) = b(ik);
            b(ik) = tmp;
            det = -det;
        end
        for i = k+1:n
            H(i, k) = H(i, k)/H(k, k);
            for j = k+1:n
                H(i ,j) = H(i, j) - H(i, k)*H(k, j)/H(k, k);
            end
            b(i) = b(i) - H(i, k)*b(k)/H(k, k);
        end
        det = H(k, k)*det;
    end
    %③
    if (H(n, n) == 0)
        det = 0;
        return
    end
    %④
    b(n) = b(n)/H(n, n);
    for i = n-1:-1:1
        sum = 0;
        for j = i+1:n
            sum = sum + H(i, j)*b(j);
        end
        b(i) = (b(i)-sum)/H(i, i);
    end
    %⑤
    det = det*H(n, n);
    x1 = b;
    rn = bn - H*x1;
    x2 = x1 - x;
    disp(rn);
    disp(x2);
    disp(x1);
end