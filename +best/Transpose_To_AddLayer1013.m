classdef Transpose_To_AddLayer1013 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'best.coder.Transpose_To_AddLayer1013';
        end
    end


    methods
        function this = Transpose_To_AddLayer1013(name)
            this.Name = name;
            this.NumInputs = 7;
            this.OutputNames = {'x_model_10_m_m_0_att'};
        end

        function [x_model_10_m_m_0_att] = predict(this, x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__13, x_model_10_m_m_0__16, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims)
            if isdlarray(x_model_10_m_m_0__11)
                x_model_10_m_m_0__11 = stripdims(x_model_10_m_m_0__11);
            end
            if isdlarray(x_model_10_m_m_0__12)
                x_model_10_m_m_0__12 = stripdims(x_model_10_m_m_0__12);
            end
            if isdlarray(x_model_10_m_m_0__13)
                x_model_10_m_m_0__13 = stripdims(x_model_10_m_m_0__13);
            end
            if isdlarray(x_model_10_m_m_0__16)
                x_model_10_m_m_0__16 = stripdims(x_model_10_m_m_0__16);
            end
            x_model_10_m_m_0__11NumDims = numel(x_model_10_m_m_0__11NumDims);
            x_model_10_m_m_0__12NumDims = numel(x_model_10_m_m_0__12NumDims);
            x_model_10_m_m_0__13NumDims = numel(x_model_10_m_m_0__13NumDims);
            x_model_10_m_m_0__16NumDims = 4;
            x_model_10_m_m_0__11 = best.ops.permuteInputVar(x_model_10_m_m_0__11, ['as-is'], 0);
            x_model_10_m_m_0__12 = best.ops.permuteInputVar(x_model_10_m_m_0__12, ['as-is'], 0);
            x_model_10_m_m_0__13 = best.ops.permuteInputVar(x_model_10_m_m_0__13, ['as-is'], 0);
            x_model_10_m_m_0__16 = best.ops.permuteInputVar(x_model_10_m_m_0__16, [4 3 1 2], 4);

            [x_model_10_m_m_0_att, x_model_10_m_m_0_attNumDims] = Transpose_To_AddGraph1060(this, x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__13, x_model_10_m_m_0__16, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims, x_model_10_m_m_0__16NumDims, false);
            x_model_10_m_m_0_att = best.ops.permuteOutputVar(x_model_10_m_m_0_att, [3 4 2 1], 4);

            x_model_10_m_m_0_att = dlarray(single(x_model_10_m_m_0_att), 'SSCB');
        end

        function [x_model_10_m_m_0_att] = forward(this, x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__13, x_model_10_m_m_0__16, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims)
            if isdlarray(x_model_10_m_m_0__11)
                x_model_10_m_m_0__11 = stripdims(x_model_10_m_m_0__11);
            end
            if isdlarray(x_model_10_m_m_0__12)
                x_model_10_m_m_0__12 = stripdims(x_model_10_m_m_0__12);
            end
            if isdlarray(x_model_10_m_m_0__13)
                x_model_10_m_m_0__13 = stripdims(x_model_10_m_m_0__13);
            end
            if isdlarray(x_model_10_m_m_0__16)
                x_model_10_m_m_0__16 = stripdims(x_model_10_m_m_0__16);
            end
            x_model_10_m_m_0__11NumDims = numel(x_model_10_m_m_0__11NumDims);
            x_model_10_m_m_0__12NumDims = numel(x_model_10_m_m_0__12NumDims);
            x_model_10_m_m_0__13NumDims = numel(x_model_10_m_m_0__13NumDims);
            x_model_10_m_m_0__16NumDims = 4;
            x_model_10_m_m_0__11 = best.ops.permuteInputVar(x_model_10_m_m_0__11, ['as-is'], 0);
            x_model_10_m_m_0__12 = best.ops.permuteInputVar(x_model_10_m_m_0__12, ['as-is'], 0);
            x_model_10_m_m_0__13 = best.ops.permuteInputVar(x_model_10_m_m_0__13, ['as-is'], 0);
            x_model_10_m_m_0__16 = best.ops.permuteInputVar(x_model_10_m_m_0__16, [4 3 1 2], 4);

            [x_model_10_m_m_0_att, x_model_10_m_m_0_attNumDims] = Transpose_To_AddGraph1060(this, x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__13, x_model_10_m_m_0__16, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims, x_model_10_m_m_0__16NumDims, true);
            x_model_10_m_m_0_att = best.ops.permuteOutputVar(x_model_10_m_m_0_att, [3 4 2 1], 4);

            x_model_10_m_m_0_att = dlarray(single(x_model_10_m_m_0_att), 'SSCB');
        end

        function [x_model_10_m_m_0_att, x_model_10_m_m_0_attNumDims1063] = Transpose_To_AddGraph1060(this, x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__13, x_model_10_m_m_0__16, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims, x_model_10_m_m_0__16NumDims, Training)

            % Execute the operators:
            % Transpose:
            [perm, x_model_10_m_m_0__15NumDims] = best.ops.prepareTransposeArgs(this.Vars.TransposePerm1061, x_model_10_m_m_0__11NumDims);
            if isempty(perm)
                x_model_10_m_m_0__15 = x_model_10_m_m_0__11;
            else
                x_model_10_m_m_0__15 = permute(x_model_10_m_m_0__11, perm);
            end

            % MatMul:
            [x_model_10_m_m_0__5, x_model_10_m_m_0__5NumDims] = best.ops.onnxMatMul(x_model_10_m_m_0__15, x_model_10_m_m_0__12, x_model_10_m_m_0__15NumDims, x_model_10_m_m_0__12NumDims);

            % Mul:
            x_model_10_m_m_0__6 = x_model_10_m_m_0__5 .* this.Vars.x_model_10_m_m_0__1;
            x_model_10_m_m_0__6NumDims = max(x_model_10_m_m_0__5NumDims, this.NumDims.x_model_10_m_m_0__1);

            % Softmax:
            [dim1, dim2, origSize, x_model_10_m_m_0__10NumDims] = best.ops.prepareSoftmaxArgs(x_model_10_m_m_0__6, 3, x_model_10_m_m_0__6NumDims);
            x_model_10_m_m_0__10 = reshape(x_model_10_m_m_0__6, dim1, dim2);
            x_model_10_m_m_0__10 = softmax(x_model_10_m_m_0__10, 'DataFormat', 'CB');
            x_model_10_m_m_0__10 = reshape(x_model_10_m_m_0__10, origSize);

            % Transpose:
            [perm, x_model_10_m_m_0__14NumDims] = best.ops.prepareTransposeArgs(this.Vars.TransposePerm1062, x_model_10_m_m_0__10NumDims);
            if isempty(perm)
                x_model_10_m_m_0__14 = x_model_10_m_m_0__10;
            else
                x_model_10_m_m_0__14 = permute(x_model_10_m_m_0__10, perm);
            end

            % MatMul:
            [x_model_10_m_m_0__4, x_model_10_m_m_0__4NumDims] = best.ops.onnxMatMul(x_model_10_m_m_0__13, x_model_10_m_m_0__14, x_model_10_m_m_0__13NumDims, x_model_10_m_m_0__14NumDims);

            % Reshape:
            [shape, x_model_10_m_m_0__7NumDims] = best.ops.prepareReshapeArgs(x_model_10_m_m_0__4, this.Vars.x_model_10_m_m_0__2, x_model_10_m_m_0__4NumDims, 0);
            x_model_10_m_m_0__7 = reshape(x_model_10_m_m_0__4, shape{:});

            % Add:
            x_model_10_m_m_0_att = x_model_10_m_m_0__7 + x_model_10_m_m_0__16;
            x_model_10_m_m_0_attNumDims = max(x_model_10_m_m_0__7NumDims, x_model_10_m_m_0__16NumDims);

            % Set graph output arguments
            x_model_10_m_m_0_attNumDims1063 = x_model_10_m_m_0_attNumDims;

        end

    end

end