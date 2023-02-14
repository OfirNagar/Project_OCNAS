function [ code ] = DTMF_Code( row,col )

%This function gets row and cols and returns code.

    code = 0;
    for i = 1:4
        if(row(i))
            for j = 1:4
                if(col(j))
                code = 10*i+j;
                end
            end
        end
    end
end

