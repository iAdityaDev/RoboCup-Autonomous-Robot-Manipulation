classdef Transpose_To_AddLayer1011 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.

    %#ok<*PROPLC>
    %#ok<*NBRAK>
    %#ok<*INUSL>
    %#ok<*VARARG>
    properties (Learnable)
    end

    properties (State)
    end

    properties
        Vars
        NumDims
    end


    methods(Static, Hidden)
        % Specify the path to the class that will be used for codegen
        function name = matlabCodegenRedirect(~)
            name = 'best.coder.Transpose_To_AddLayer1011';
        end
    end


    methods
        function this = Transpose_To_AddLayer1011(name)
            this.Name = name;
            this.NumInputs = 7;
            this.OutputNames = {'x_model_22_m_0_m__15'};
        end

        function [x_model_22_m_0_m__15] = predict(this, x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__25, x_model_22_m_0_m__28, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims)
            if isdlarray(x_model_22_m_0_m__23)
                x_model_22_m_0_m__23 = stripdims(x_model_22_m_0_m__23);
            end
            if isdlarray(x_model_22_m_0_m__24)
                x_model_22_m_0_m__24 = stripdims(x_model_22_m_0_m__24);
            end
            if isdlarray(x_model_22_m_0_m__25)
                x_model_22_m_0_m__25 = stripdims(x_model_22_m_0_m__25);
            end
            if isdlarray(x_model_22_m_0_m__28)
                x_model_22_m_0_m__28 = stripdims(x_model_22_m_0_m__28);
            end
            x_model_22_m_0_m__23NumDims = numel(x_model_22_m_0_m__23NumDims);
            x_model_22_m_0_m__24NumDims = numel(x_model_22_m_0_m__24NumDims);
            x_model_22_m_0_m__25NumDims = numel(x_model_22_m_0_m__25NumDims);
            x_model_22_m_0_m__28NumDims = 4;
            x_model_22_m_0_m__23 = best.ops.permuteInputVar(x_model_22_m_0_m__23, ['as-is'], 0);
            x_model_22_m_0_m__24 = best.ops.permuteInputVar(x_model_22_m_0_m__24, ['as-is'], 0);
            x_model_22_m_0_m__25 = best.ops.permuteInputVar(x_model_22_m_0_m__25, ['as-is'], 0);
            x_model_22_m_0_m__28 = best.ops.permuteInputVar(x_model_22_m_0_m__28, [4 3 1 2], 4);

            [x_model_22_m_0_m__15, x_model_22_m_0_m__15NumDims] = Transpose_To_AddGraph1050(this, x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__25, x_model_22_m_0_m__28, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims, x_model_22_m_0_m__28NumDims, false);
            x_model_22_m_0_m__15 = best.ops.permuteOutputVar(x_model_22_m_0_m__15, [3 4 2 1], 4);

            x_model_22_m_0_m__15 = dlarray(single(x_model_22_m_0_m__15), 'SSCB');
        end

        function [x_model_22_m_0_m__15] = forward(this, x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__25, x_model_22_m_0_m__28, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims)
            if isdlarray(x_model_22_m_0_m__23)
                x_model_22_m_0_m__23 = stripdims(x_model_22_m_0_m__23);
            end
            if isdlarray(x_model_22_m_0_m__24)
                x_model_22_m_0_m__24 = stripdims(x_model_22_m_0_m__24);
            end
            if isdlarray(x_model_22_m_0_m__25)
                x_model_22_m_0_m__25 = stripdims(x_model_22_m_0_m__25);
            end
            if isdlarray(x_model_22_m_0_m__28)
                x_model_22_m_0_m__28 = stripdims(x_model_22_m_0_m__28);
            end
            x_model_22_m_0_m__23NumDims = numel(x_model_22_m_0_m__23NumDims);
            x_model_22_m_0_m__24NumDims = numel(x_model_22_m_0_m__24NumDims);
            x_model_22_m_0_m__25NumDims = numel(x_model_22_m_0_m__25NumDims);
            x_model_22_m_0_m__28NumDims = 4;
            x_model_22_m_0_m__23 = best.ops.permuteInputVar(x_model_22_m_0_m__23, ['as-is'], 0);
            x_model_22_m_0_m__24 = best.ops.permuteInputVar(x_model_22_m_0_m__24, ['as-is'], 0);
            x_model_22_m_0_m__25 = best.ops.permuteInputVar(x_model_22_m_0_m__25, ['as-is'], 0);
            x_model_22_m_0_m__28 = best.ops.permuteInputVar(x_model_22_m_0_m__28, [4 3 1 2], 4);

            [x_model_22_m_0_m__15, x_model_22_m_0_m__15NumDims] = Transpose_To_AddGraph1050(this, x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__25, x_model_22_m_0_m__28, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims, x_model_22_m_0_m__28NumDims, true);
            x_model_22_m_0_m__15 = best.ops.permuteOutputVar(x_model_22_m_0_m__15, [3 4 2 1], 4);

            x_model_22_m_0_m__15 = dlarray(single(x_model_22_m_0_m__15), 'SSCB');
        end

        function [x_model_22_m_0_m__15, x_model_22_m_0_m__15NumDims1053] = Transpose_To_AddGraph1050(this, x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__25, x_model_22_m_0_m__28, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims, x_model_22_m_0_m__28NumDims, Training)

            % Execute the operators:
            % Transpose:
            [perm, x_model_22_m_0_m__27NumDims] = best.ops.prepareTransposeArgs(this.Vars.TransposePerm1051, x_model_22_m_0_m__23NumDims);
            if isempty(perm)
                x_model_22_m_0_m__27 = x_model_22_m_0_m__23;
            else
                x_model_22_m_0_m__27 = permute(x_model_22_m_0_m__23, perm);
            end

            % MatMul:
            [x_model_22_m_0_m__17, x_model_22_m_0_m__17NumDims] = best.ops.onnxMatMul(x_model_22_m_0_m__27, x_model_22_m_0_m__24, x_model_22_m_0_m__27NumDims, x_model_22_m_0_m__24NumDims);

            % Mul:
            x_model_22_m_0_m__18 = x_model_22_m_0_m__17 .* this.Vars.x_model_10_m_m_0__1;
            x_model_22_m_0_m__18NumDims = max(x_model_22_m_0_m__17NumDims, this.NumDims.x_model_10_m_m_0__1);

            % Softmax:
            [dim1, dim2, origSize, x_model_22_m_0_m__22NumDims] = best.ops.prepareSoftmaxArgs(x_model_22_m_0_m__18, 3, x_model_22_m_0_m__18NumDims);
            x_model_22_m_0_m__22 = reshape(x_model_22_m_0_m__18, dim1, dim2);
            x_model_22_m_0_m__22 = softmax(x_model_22_m_0_m__22, 'DataFormat', 'CB');
            x_model_22_m_0_m__22 = reshape(x_model_22_m_0_m__22, origSize);

            % Transpose:
            [perm, x_model_22_m_0_m__26NumDims] = best.ops.prepareTransposeArgs(this.Vars.TransposePerm1052, x_model_22_m_0_m__22NumDims);
            if isempty(perm)
                x_model_22_m_0_m__26 = x_model_22_m_0_m__22;
            else
                x_model_22_m_0_m__26 = permute(x_model_22_m_0_m__22, perm);
            end

            % MatMul:
            [x_model_22_m_0_m__16, x_model_22_m_0_m__16NumDims] = best.ops.onnxMatMul(x_model_22_m_0_m__25, x_model_22_m_0_m__26, x_model_22_m_0_m__25NumDims, x_model_22_m_0_m__26NumDims);

            % Reshape:
            [shape, x_model_22_m_0_m__19NumDims] = best.ops.prepareReshapeArgs(x_model_22_m_0_m__16, this.Vars.x_model_10_m_m_0__2, x_model_22_m_0_m__16NumDims, 0);
            x_model_22_m_0_m__19 = reshape(x_model_22_m_0_m__16, shape{:});

            % Add:
            x_model_22_m_0_m__15 = x_model_22_m_0_m__19 + x_model_22_m_0_m__28;
            x_model_22_m_0_m__15NumDims = max(x_model_22_m_0_m__19NumDims, x_model_22_m_0_m__28NumDims);

            % Set graph output arguments
            x_model_22_m_0_m__15NumDims1053 = x_model_22_m_0_m__15NumDims;

        end

    end

end