classdef Reshape_To_ReshapeLayer1012 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'best.coder.Reshape_To_ReshapeLayer1012';
        end
    end


    methods
        function this = Reshape_To_ReshapeLayer1012(name)
            this.Name = name;
            this.NumOutputs = 7;
            this.OutputNames = {'x_model_10_m_m_0__11', 'x_model_10_m_m_0__12', 'x_model_10_m_m_0__8', 'x_model_10_m_m_0__13', 'x_model_10_m_m_0__11NumDims', 'x_model_10_m_m_0__12NumDims', 'x_model_10_m_m_0__13NumDims'};
        end

        function [x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__8, x_model_10_m_m_0__13, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims] = predict(this, x_model_10_m_m_0__18)
            if isdlarray(x_model_10_m_m_0__18)
                x_model_10_m_m_0__18 = stripdims(x_model_10_m_m_0__18);
            end
            x_model_10_m_m_0__18NumDims = 4;
            x_model_10_m_m_0__18 = best.ops.permuteInputVar(x_model_10_m_m_0__18, [4 3 1 2], 4);

            [x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__8, x_model_10_m_m_0__13, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__8NumDims, x_model_10_m_m_0__13NumDims] = Reshape_To_ReshapeGraph1054(this, x_model_10_m_m_0__18, x_model_10_m_m_0__18NumDims, false);
            x_model_10_m_m_0__11 = best.ops.permuteOutputVar(x_model_10_m_m_0__11, ['as-is'], 0);
            x_model_10_m_m_0__12 = best.ops.permuteOutputVar(x_model_10_m_m_0__12, ['as-is'], 0);
            x_model_10_m_m_0__8 = best.ops.permuteOutputVar(x_model_10_m_m_0__8, [3 4 2 1], 4);
            x_model_10_m_m_0__13 = best.ops.permuteOutputVar(x_model_10_m_m_0__13, ['as-is'], 0);

            x_model_10_m_m_0__11 = dlarray(single(x_model_10_m_m_0__11), repmat('U', 1, max(2, x_model_10_m_m_0__11NumDims)));
            x_model_10_m_m_0__12 = dlarray(single(x_model_10_m_m_0__12), repmat('U', 1, max(2, x_model_10_m_m_0__12NumDims)));
            x_model_10_m_m_0__8 = dlarray(single(x_model_10_m_m_0__8), 'SSCB');
            x_model_10_m_m_0__13 = dlarray(single(x_model_10_m_m_0__13), repmat('U', 1, max(2, x_model_10_m_m_0__13NumDims)));
            x_model_10_m_m_0__11NumDims = dlarray(ones(1,x_model_10_m_m_0__11NumDims,'like',x_model_10_m_m_0__11), 'UU');
            x_model_10_m_m_0__12NumDims = dlarray(ones(1,x_model_10_m_m_0__12NumDims,'like',x_model_10_m_m_0__11), 'UU');
            x_model_10_m_m_0__13NumDims = dlarray(ones(1,x_model_10_m_m_0__13NumDims,'like',x_model_10_m_m_0__11), 'UU');
        end

        function [x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__8, x_model_10_m_m_0__13, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims] = forward(this, x_model_10_m_m_0__18)
            if isdlarray(x_model_10_m_m_0__18)
                x_model_10_m_m_0__18 = stripdims(x_model_10_m_m_0__18);
            end
            x_model_10_m_m_0__18NumDims = 4;
            x_model_10_m_m_0__18 = best.ops.permuteInputVar(x_model_10_m_m_0__18, [4 3 1 2], 4);

            [x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__8, x_model_10_m_m_0__13, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__8NumDims, x_model_10_m_m_0__13NumDims] = Reshape_To_ReshapeGraph1054(this, x_model_10_m_m_0__18, x_model_10_m_m_0__18NumDims, true);
            x_model_10_m_m_0__11 = best.ops.permuteOutputVar(x_model_10_m_m_0__11, ['as-is'], 0);
            x_model_10_m_m_0__12 = best.ops.permuteOutputVar(x_model_10_m_m_0__12, ['as-is'], 0);
            x_model_10_m_m_0__8 = best.ops.permuteOutputVar(x_model_10_m_m_0__8, [3 4 2 1], 4);
            x_model_10_m_m_0__13 = best.ops.permuteOutputVar(x_model_10_m_m_0__13, ['as-is'], 0);

            x_model_10_m_m_0__11 = dlarray(single(x_model_10_m_m_0__11), repmat('U', 1, max(2, x_model_10_m_m_0__11NumDims)));
            x_model_10_m_m_0__12 = dlarray(single(x_model_10_m_m_0__12), repmat('U', 1, max(2, x_model_10_m_m_0__12NumDims)));
            x_model_10_m_m_0__8 = dlarray(single(x_model_10_m_m_0__8), 'SSCB');
            x_model_10_m_m_0__13 = dlarray(single(x_model_10_m_m_0__13), repmat('U', 1, max(2, x_model_10_m_m_0__13NumDims)));
            x_model_10_m_m_0__11NumDims = dlarray(ones(1,x_model_10_m_m_0__11NumDims,'like',x_model_10_m_m_0__11), 'UU');
            x_model_10_m_m_0__12NumDims = dlarray(ones(1,x_model_10_m_m_0__12NumDims,'like',x_model_10_m_m_0__11), 'UU');
            x_model_10_m_m_0__13NumDims = dlarray(ones(1,x_model_10_m_m_0__13NumDims,'like',x_model_10_m_m_0__11), 'UU');
        end

        function [x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__8, x_model_10_m_m_0__13, x_model_10_m_m_0__11NumDims1056, x_model_10_m_m_0__12NumDims1057, x_model_10_m_m_0__8NumDims1058, x_model_10_m_m_0__13NumDims1059] = Reshape_To_ReshapeGraph1054(this, x_model_10_m_m_0__18, x_model_10_m_m_0__18NumDims, Training)

            % Execute the operators:
            % Reshape:
            [shape, x_model_10_m_m_0__9NumDims] = best.ops.prepareReshapeArgs(x_model_10_m_m_0__18, this.Vars.x_model_10_m_m_0__3, x_model_10_m_m_0__18NumDims, 0);
            x_model_10_m_m_0__9 = reshape(x_model_10_m_m_0__18, shape{:});

            % Split:
            [x_model_10_m_m_0__11, x_model_10_m_m_0__12, x_model_10_m_m_0__13, x_model_10_m_m_0__11NumDims, x_model_10_m_m_0__12NumDims, x_model_10_m_m_0__13NumDims] = best.ops.onnxSplit(x_model_10_m_m_0__9, 2, this.Vars.SplitSplit1055, 0, x_model_10_m_m_0__9NumDims);

            % Reshape:
            [shape, x_model_10_m_m_0__8NumDims] = best.ops.prepareReshapeArgs(x_model_10_m_m_0__13, this.Vars.x_model_10_m_m_0__2, x_model_10_m_m_0__13NumDims, 0);
            x_model_10_m_m_0__8 = reshape(x_model_10_m_m_0__13, shape{:});

            % Set graph output arguments
            x_model_10_m_m_0__11NumDims1056 = x_model_10_m_m_0__11NumDims;
            x_model_10_m_m_0__12NumDims1057 = x_model_10_m_m_0__12NumDims;
            x_model_10_m_m_0__8NumDims1058 = x_model_10_m_m_0__8NumDims;
            x_model_10_m_m_0__13NumDims1059 = x_model_10_m_m_0__13NumDims;

        end

    end

end