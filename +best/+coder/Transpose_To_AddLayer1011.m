classdef Transpose_To_AddLayer1011 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.
    %#codegen

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
        % Specify the properties of the class that will not be modified
        % after the first assignment.
        function p = matlabCodegenNontunableProperties(~)
            p = {
                % Constants, i.e., Vars, NumDims and all learnables and states
                'Vars'
                'NumDims'
                };
        end
    end


    methods(Static, Hidden)
        % Instantiate a codegenable layer instance from a MATLAB layer instance
        function this_cg = matlabCodegenToRedirected(mlInstance)
            this_cg = best.coder.Transpose_To_AddLayer1011(mlInstance);
        end
        function this_ml = matlabCodegenFromRedirected(cgInstance)
            this_ml = best.Transpose_To_AddLayer1011(cgInstance.Name);
            if isstruct(cgInstance.Vars)
                names = fieldnames(cgInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this_ml.Vars.(fieldname) = dlarray(cgInstance.Vars.(fieldname));
                end
            else
                this_ml.Vars = [];
            end
            this_ml.NumDims = cgInstance.NumDims;
        end
    end

    methods
        function this = Transpose_To_AddLayer1011(mlInstance)
            this.Name = mlInstance.Name;
            this.NumInputs = 7;
            this.OutputNames = {'x_model_22_m_0_m__15'};
            if isstruct(mlInstance.Vars)
                names = fieldnames(mlInstance.Vars);
                for i=1:numel(names)
                    fieldname = names{i};
                    this.Vars.(fieldname) = best.coder.ops.extractIfDlarray(mlInstance.Vars.(fieldname));
                end
            else
                this.Vars = [];
            end

            this.NumDims = mlInstance.NumDims;
        end

        function [x_model_22_m_0_m__15] = predict(this, x_model_22_m_0_m__23__, x_model_22_m_0_m__24__, x_model_22_m_0_m__25__, x_model_22_m_0_m__28__, x_model_22_m_0_m__23NumDims__, x_model_22_m_0_m__24NumDims__, x_model_22_m_0_m__25NumDims__)
            if isdlarray(x_model_22_m_0_m__23__)
                x_model_22_m_0_m__23_ = stripdims(x_model_22_m_0_m__23__);
            else
                x_model_22_m_0_m__23_ = x_model_22_m_0_m__23__;
            end
            if isdlarray(x_model_22_m_0_m__24__)
                x_model_22_m_0_m__24_ = stripdims(x_model_22_m_0_m__24__);
            else
                x_model_22_m_0_m__24_ = x_model_22_m_0_m__24__;
            end
            if isdlarray(x_model_22_m_0_m__25__)
                x_model_22_m_0_m__25_ = stripdims(x_model_22_m_0_m__25__);
            else
                x_model_22_m_0_m__25_ = x_model_22_m_0_m__25__;
            end
            if isdlarray(x_model_22_m_0_m__28__)
                x_model_22_m_0_m__28_ = stripdims(x_model_22_m_0_m__28__);
            else
                x_model_22_m_0_m__28_ = x_model_22_m_0_m__28__;
            end
            x_model_22_m_0_m__23NumDims = numel(x_model_22_m_0_m__23NumDims__);
            x_model_22_m_0_m__24NumDims = numel(x_model_22_m_0_m__24NumDims__);
            x_model_22_m_0_m__25NumDims = numel(x_model_22_m_0_m__25NumDims__);
            x_model_22_m_0_m__28NumDims = 4;
            x_model_22_m_0_m__23 = best.coder.ops.permuteInputVar(x_model_22_m_0_m__23_, ['as-is'], 0);
            x_model_22_m_0_m__24 = best.coder.ops.permuteInputVar(x_model_22_m_0_m__24_, ['as-is'], 0);
            x_model_22_m_0_m__25 = best.coder.ops.permuteInputVar(x_model_22_m_0_m__25_, ['as-is'], 0);
            x_model_22_m_0_m__28 = best.coder.ops.permuteInputVar(x_model_22_m_0_m__28_, [4 3 1 2], 4);

            [x_model_22_m_0_m__15__, x_model_22_m_0_m__15NumDims__] = Transpose_To_AddGraph1050(this, x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__25, x_model_22_m_0_m__28, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims, x_model_22_m_0_m__28NumDims, false);
            x_model_22_m_0_m__15_ = best.coder.ops.permuteOutputVar(x_model_22_m_0_m__15__, [3 4 2 1], 4);

            x_model_22_m_0_m__15 = dlarray(single(x_model_22_m_0_m__15_), 'SSCB');
        end

        function [x_model_22_m_0_m__15, x_model_22_m_0_m__15NumDims1053] = Transpose_To_AddGraph1050(this, x_model_22_m_0_m__23, x_model_22_m_0_m__24, x_model_22_m_0_m__25, x_model_22_m_0_m__28, x_model_22_m_0_m__23NumDims, x_model_22_m_0_m__24NumDims, x_model_22_m_0_m__25NumDims, x_model_22_m_0_m__28NumDims, Training)

            % Execute the operators:
            % Transpose:
            [perm1024, x_model_22_m_0_m__27NumDims] = best.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1051, coder.const(x_model_22_m_0_m__23NumDims));
            if isempty(perm1024)
                x_model_22_m_0_m__27 = x_model_22_m_0_m__23;
            else
                x_model_22_m_0_m__27 = permute(best.coder.ops.extractIfDlarray(x_model_22_m_0_m__23), perm1024);
            end

            % MatMul:
            [x_model_22_m_0_m__17, x_model_22_m_0_m__17NumDims] = best.coder.ops.onnxMatMul(x_model_22_m_0_m__27, x_model_22_m_0_m__24, coder.const(x_model_22_m_0_m__27NumDims), coder.const(x_model_22_m_0_m__24NumDims));

            % Mul:
            x_model_22_m_0_m__18 = x_model_22_m_0_m__17 .* this.Vars.x_model_10_m_m_0__1;
            x_model_22_m_0_m__18NumDims = max(coder.const(x_model_22_m_0_m__17NumDims), this.NumDims.x_model_10_m_m_0__1);

            % Softmax:
            [dim11025, dim21026, origSize1027, x_model_22_m_0_m__22NumDims] = best.coder.ops.prepareSoftmaxArgs(x_model_22_m_0_m__18, 3, coder.const(x_model_22_m_0_m__18NumDims));
            Y11028 = reshape(x_model_22_m_0_m__18, dim11025, dim21026);
            Y21029 = softmax(dlarray(single(Y11028)), 'DataFormat', 'CB');
            x_model_22_m_0_m__22 = reshape(best.coder.ops.extractIfDlarray(Y21029), origSize1027);

            % Transpose:
            [perm1030, x_model_22_m_0_m__26NumDims] = best.coder.ops.prepareTransposeArgs(this.Vars.TransposePerm1052, coder.const(x_model_22_m_0_m__22NumDims));
            if isempty(perm1030)
                x_model_22_m_0_m__26 = x_model_22_m_0_m__22;
            else
                x_model_22_m_0_m__26 = permute(best.coder.ops.extractIfDlarray(x_model_22_m_0_m__22), perm1030);
            end

            % MatMul:
            [x_model_22_m_0_m__16, x_model_22_m_0_m__16NumDims] = best.coder.ops.onnxMatMul(x_model_22_m_0_m__25, x_model_22_m_0_m__26, coder.const(x_model_22_m_0_m__25NumDims), coder.const(x_model_22_m_0_m__26NumDims));

            % Reshape:
            [shape1031, x_model_22_m_0_m__19NumDims] = best.coder.ops.prepareReshapeArgs(x_model_22_m_0_m__16, this.Vars.x_model_10_m_m_0__2, coder.const(x_model_22_m_0_m__16NumDims), 0);
            x_model_22_m_0_m__19 = reshape(x_model_22_m_0_m__16, shape1031{:});

            % Add:
            x_model_22_m_0_m__15 = x_model_22_m_0_m__19 + x_model_22_m_0_m__28;
            x_model_22_m_0_m__15NumDims = max(coder.const(x_model_22_m_0_m__19NumDims), coder.const(x_model_22_m_0_m__28NumDims));

            % Set graph output arguments
            x_model_22_m_0_m__15NumDims1053 = x_model_22_m_0_m__15NumDims;

        end

    end

end