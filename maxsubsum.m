function [row,col,numrows,numcols,summa] = maxsubsum(A)
%MAXSUBSUM takes the matrix A and outputs
%the stats of the submatrix with the 
%largest sum.
%   [ROW,COL,NUMROWS,NUMCOLS,SUMMA] = MAXSUBSUM(A)
%   ROW and COL are the leftmost indicies of the
%   submatrix.
%   NUMROWS and NUMCOLS are the dimensions of the
%   submatrix.
%   SUMMA is the sum of the submatrix
rows = s(1);
cols = s(2);
sums = [];
for start_row_id = 1:rows
    for start_col_id = 1:cols
        for n_rows = 1:rows
            for n_cols = 1:cols
                end_row_id = start_row_id+(n_rows-1);
                end_col_id = start_col_id+(n_cols-1);
                if end_row_id <= rows && end_col_id <= cols
                    totalsum = sum(sum(A(start_row_id:end_row_id,start_col_id:end_col_id,1)));
                    sums = [sums;start_row_id,start_col_id,n_rows,n_cols,totalsum];
                end
            end
        end
    end
end

sum_array = sums(:,5);
[a b] = max(sum_array);
row = sums(b,1);
col = sums(b,2);
numrows = sums(b,3);
numcols = sums(b,4);
summa = sums(b,5);
