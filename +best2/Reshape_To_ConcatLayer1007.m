classdef Reshape_To_ConcatLayer1007 < nnet.layer.Layer & nnet.layer.Formattable
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
            name = 'best2.coder.Reshape_To_ConcatLayer1007';
        end
    end


    methods
        function this = Reshape_To_ConcatLayer1007(name)
            this.Name = name;
            this.NumInputs = 6;
            this.OutputNames = {'output0'};
        end

        function [output0] = predict(this, x_model_23_one2o_6, x_model_23_one2o_33, x_model_23_one2o_13, x_model_23_one2o_46, x_model_23_one2o_20, x_model_23_one2o_59)
            if isdlarray(x_model_23_one2o_6)
                x_model_23_one2o_6 = stripdims(x_model_23_one2o_6);
            end
            if isdlarray(x_model_23_one2o_33)
                x_model_23_one2o_33 = stripdims(x_model_23_one2o_33);
            end
            if isdlarray(x_model_23_one2o_13)
                x_model_23_one2o_13 = stripdims(x_model_23_one2o_13);
            end
            if isdlarray(x_model_23_one2o_46)
                x_model_23_one2o_46 = stripdims(x_model_23_one2o_46);
            end
            if isdlarray(x_model_23_one2o_20)
                x_model_23_one2o_20 = stripdims(x_model_23_one2o_20);
            end
            if isdlarray(x_model_23_one2o_59)
                x_model_23_one2o_59 = stripdims(x_model_23_one2o_59);
            end
            x_model_23_one2o_6NumDims = 4;
            x_model_23_one2o_33NumDims = 4;
            x_model_23_one2o_13NumDims = 4;
            x_model_23_one2o_46NumDims = 4;
            x_model_23_one2o_20NumDims = 4;
            x_model_23_one2o_59NumDims = 4;
            x_model_23_one2o_6 = best2.ops.permuteInputVar(x_model_23_one2o_6, [4 3 1 2], 4);
            x_model_23_one2o_33 = best2.ops.permuteInputVar(x_model_23_one2o_33, [4 3 1 2], 4);
            x_model_23_one2o_13 = best2.ops.permuteInputVar(x_model_23_one2o_13, [4 3 1 2], 4);
            x_model_23_one2o_46 = best2.ops.permuteInputVar(x_model_23_one2o_46, [4 3 1 2], 4);
            x_model_23_one2o_20 = best2.ops.permuteInputVar(x_model_23_one2o_20, [4 3 1 2], 4);
            x_model_23_one2o_59 = best2.ops.permuteInputVar(x_model_23_one2o_59, [4 3 1 2], 4);

            [output0, output0NumDims] = Reshape_To_ConcatGraph1028(this, x_model_23_one2o_6, x_model_23_one2o_33, x_model_23_one2o_13, x_model_23_one2o_46, x_model_23_one2o_20, x_model_23_one2o_59, x_model_23_one2o_6NumDims, x_model_23_one2o_33NumDims, x_model_23_one2o_13NumDims, x_model_23_one2o_46NumDims, x_model_23_one2o_20NumDims, x_model_23_one2o_59NumDims, false);
            output0 = best2.ops.permuteOutputVar(output0, ['as-is'], 3);

            output0 = dlarray(single(output0), repmat('U', 1, max(2, output0NumDims)));
        end

        function [output0] = forward(this, x_model_23_one2o_6, x_model_23_one2o_33, x_model_23_one2o_13, x_model_23_one2o_46, x_model_23_one2o_20, x_model_23_one2o_59)
            if isdlarray(x_model_23_one2o_6)
                x_model_23_one2o_6 = stripdims(x_model_23_one2o_6);
            end
            if isdlarray(x_model_23_one2o_33)
                x_model_23_one2o_33 = stripdims(x_model_23_one2o_33);
            end
            if isdlarray(x_model_23_one2o_13)
                x_model_23_one2o_13 = stripdims(x_model_23_one2o_13);
            end
            if isdlarray(x_model_23_one2o_46)
                x_model_23_one2o_46 = stripdims(x_model_23_one2o_46);
            end
            if isdlarray(x_model_23_one2o_20)
                x_model_23_one2o_20 = stripdims(x_model_23_one2o_20);
            end
            if isdlarray(x_model_23_one2o_59)
                x_model_23_one2o_59 = stripdims(x_model_23_one2o_59);
            end
            x_model_23_one2o_6NumDims = 4;
            x_model_23_one2o_33NumDims = 4;
            x_model_23_one2o_13NumDims = 4;
            x_model_23_one2o_46NumDims = 4;
            x_model_23_one2o_20NumDims = 4;
            x_model_23_one2o_59NumDims = 4;
            x_model_23_one2o_6 = best2.ops.permuteInputVar(x_model_23_one2o_6, [4 3 1 2], 4);
            x_model_23_one2o_33 = best2.ops.permuteInputVar(x_model_23_one2o_33, [4 3 1 2], 4);
            x_model_23_one2o_13 = best2.ops.permuteInputVar(x_model_23_one2o_13, [4 3 1 2], 4);
            x_model_23_one2o_46 = best2.ops.permuteInputVar(x_model_23_one2o_46, [4 3 1 2], 4);
            x_model_23_one2o_20 = best2.ops.permuteInputVar(x_model_23_one2o_20, [4 3 1 2], 4);
            x_model_23_one2o_59 = best2.ops.permuteInputVar(x_model_23_one2o_59, [4 3 1 2], 4);

            [output0, output0NumDims] = Reshape_To_ConcatGraph1028(this, x_model_23_one2o_6, x_model_23_one2o_33, x_model_23_one2o_13, x_model_23_one2o_46, x_model_23_one2o_20, x_model_23_one2o_59, x_model_23_one2o_6NumDims, x_model_23_one2o_33NumDims, x_model_23_one2o_13NumDims, x_model_23_one2o_46NumDims, x_model_23_one2o_20NumDims, x_model_23_one2o_59NumDims, true);
            output0 = best2.ops.permuteOutputVar(output0, ['as-is'], 3);

            output0 = dlarray(single(output0), repmat('U', 1, max(2, output0NumDims)));
        end

        function [output0, output0NumDims1035] = Reshape_To_ConcatGraph1028(this, x_model_23_one2o_6, x_model_23_one2o_33, x_model_23_one2o_13, x_model_23_one2o_46, x_model_23_one2o_20, x_model_23_one2o_59, x_model_23_one2o_6NumDims, x_model_23_one2o_33NumDims, x_model_23_one2o_13NumDims, x_model_23_one2o_46NumDims, x_model_23_one2o_20NumDims, x_model_23_one2o_59NumDims, Training)

            % Execute the operators:
            % Reshape:
            [shape, x_model_23_Reshape_oNumDims] = best2.ops.prepareReshapeArgs(x_model_23_one2o_6, this.Vars.x_model_23_Constan_9, x_model_23_one2o_6NumDims, 0);
            x_model_23_Reshape_o = reshape(x_model_23_one2o_6, shape{:});

            % Reshape:
            [shape, x_model_23_Reshape_3NumDims] = best2.ops.prepareReshapeArgs(x_model_23_one2o_33, this.Vars.x_model_23_Constan_6, x_model_23_one2o_33NumDims, 0);
            x_model_23_Reshape_3 = reshape(x_model_23_one2o_33, shape{:});

            % Reshape:
            [shape, x_model_23_Reshape_1NumDims] = best2.ops.prepareReshapeArgs(x_model_23_one2o_13, this.Vars.x_model_23_Constan_9, x_model_23_one2o_13NumDims, 0);
            x_model_23_Reshape_1 = reshape(x_model_23_one2o_13, shape{:});

            % Reshape:
            [shape, x_model_23_Reshape_4NumDims] = best2.ops.prepareReshapeArgs(x_model_23_one2o_46, this.Vars.x_model_23_Constan_6, x_model_23_one2o_46NumDims, 0);
            x_model_23_Reshape_4 = reshape(x_model_23_one2o_46, shape{:});

            % Reshape:
            [shape, x_model_23_Reshape_2NumDims] = best2.ops.prepareReshapeArgs(x_model_23_one2o_20, this.Vars.x_model_23_Constan_9, x_model_23_one2o_20NumDims, 0);
            x_model_23_Reshape_2 = reshape(x_model_23_one2o_20, shape{:});

            % Concat:
            [x_model_23_Concat_ou, x_model_23_Concat_ouNumDims] = best2.ops.onnxConcat(-1, {x_model_23_Reshape_o, x_model_23_Reshape_1, x_model_23_Reshape_2}, [x_model_23_Reshape_oNumDims, x_model_23_Reshape_1NumDims, x_model_23_Reshape_2NumDims]);

            % Slice:
            [Indices, x_model_23_Slice_outNumDims] = best2.ops.prepareSliceArgs(x_model_23_Concat_ou, this.Vars.x_model_23_Constan_8, this.Vars.x_model_23_Mul_outpu, this.Vars.x_model_23_Constan_7, '', x_model_23_Concat_ouNumDims);
            x_model_23_Slice_out = x_model_23_Concat_ou(Indices{:});

            % Slice:
            [Indices, x_model_23_Slice_1_oNumDims] = best2.ops.prepareSliceArgs(x_model_23_Concat_ou, this.Vars.x_model_23_Mul_outpu, this.Vars.x_model_23_Mul_1_out, this.Vars.x_model_23_Constan_7, '', x_model_23_Concat_ouNumDims);
            x_model_23_Slice_1_o = x_model_23_Concat_ou(Indices{:});

            % Sub:
            x_model_23_Sub_outpu = this.Vars.x_model_23_Constant_ - x_model_23_Slice_out;
            x_model_23_Sub_outpuNumDims = max(this.NumDims.x_model_23_Constant_, x_model_23_Slice_outNumDims);

            % Add:
            x_model_23_Add_1_out = this.Vars.x_model_23_Constan_1 + x_model_23_Slice_1_o;
            x_model_23_Add_1_outNumDims = max(this.NumDims.x_model_23_Constan_1, x_model_23_Slice_1_oNumDims);

            % Concat:
            [x_model_23_Concat_2_, x_model_23_Concat_2_NumDims] = best2.ops.onnxConcat(1, {x_model_23_Sub_outpu, x_model_23_Add_1_out}, [x_model_23_Sub_outpuNumDims, x_model_23_Add_1_outNumDims]);

            % Mul:
            x_model_23_Mul_2_out = x_model_23_Concat_2_ .* this.Vars.x_model_23_Constan_2;
            x_model_23_Mul_2_outNumDims = max(x_model_23_Concat_2_NumDims, this.NumDims.x_model_23_Constan_2);

            % Reshape:
            [shape, x_model_23_Reshape_5NumDims] = best2.ops.prepareReshapeArgs(x_model_23_one2o_59, this.Vars.x_model_23_Constan_6, x_model_23_one2o_59NumDims, 0);
            x_model_23_Reshape_5 = reshape(x_model_23_one2o_59, shape{:});

            % Concat:
            [x_model_23_Concat_1_, x_model_23_Concat_1_NumDims] = best2.ops.onnxConcat(-1, {x_model_23_Reshape_3, x_model_23_Reshape_4, x_model_23_Reshape_5}, [x_model_23_Reshape_3NumDims, x_model_23_Reshape_4NumDims, x_model_23_Reshape_5NumDims]);

            % Sigmoid:
            x_model_23_Sigmoid_o = sigmoid(dlarray(x_model_23_Concat_1_));
            x_model_23_Sigmoid_oNumDims = x_model_23_Concat_1_NumDims;

            % Concat:
            [x_model_23_Concat_3_, x_model_23_Concat_3_NumDims] = best2.ops.onnxConcat(1, {x_model_23_Mul_2_out, x_model_23_Sigmoid_o}, [x_model_23_Mul_2_outNumDims, x_model_23_Sigmoid_oNumDims]);

            % Transpose:
            [perm, x_model_23_TransposeNumDims] = best2.ops.prepareTransposeArgs(this.Vars.TransposePerm1029, x_model_23_Concat_3_NumDims);
            if isempty(perm)
                x_model_23_Transpose = x_model_23_Concat_3_;
            else
                x_model_23_Transpose = permute(x_model_23_Concat_3_, perm);
            end

            % Split:
            [x_model_23_Split_out, x_model_23_Split_o_1, x_model_23_Split_outNumDims, x_model_23_Split_o_1NumDims] = best2.ops.onnxSplit(x_model_23_Transpose, -1, this.Vars.SplitSplit1030, 0, x_model_23_TransposeNumDims);

            % ReduceMax:
            dims = best2.ops.prepareReduceArgs(this.Vars.ReduceMaxAxes1031, x_model_23_Split_o_1NumDims);
            xMax = max(x_model_23_Split_o_1, [], dims);
            [x_model_23_ReduceMax, x_model_23_ReduceMaxNumDims] = best2.ops.onnxSqueeze(xMax, this.Vars.ReduceMaxAxes1031, x_model_23_Split_o_1NumDims);

            % TopK:
            [x_model_23_TopK_outp, x_model_23_TopK_ou_1, x_model_23_TopK_outpNumDims, x_model_23_TopK_ou_1NumDims] = best2.ops.onnxTopK11(x_model_23_ReduceMax, this.Vars.x_model_23_Constan_3, -1, 1, 1, x_model_23_ReduceMaxNumDims);

            % Unsqueeze:
            [shape, x_model_23_Expand_ouNumDims] = best2.ops.prepareUnsqueezeArgs(x_model_23_TopK_ou_1, this.Vars.UnsqueezeAxes1032, x_model_23_TopK_ou_1NumDims);
            x_model_23_Expand_ou = reshape(x_model_23_TopK_ou_1, shape);

            % Flatten:
            [dim1, dim2, x_model_23_Flatten_1NumDims] = best2.ops.prepareFlattenArgs(x_model_23_Expand_ou, 2, x_model_23_Expand_ouNumDims);
            x_model_23_Flatten_1 = reshape(x_model_23_Expand_ou, dim1, dim2);

            % Tile:
            [sz, x_model_23_Tile_outpNumDims] = best2.ops.prepareTileArgs(this.Vars.x_model_23_Constan_4);
            x_model_23_Tile_outp = repmat(x_model_23_Expand_ou, sz);

            % GatherElements:
            [x_model_23_GatherE_1, x_model_23_GatherE_1NumDims] = best2.ops.onnxGatherElements(x_model_23_Split_o_1, x_model_23_Tile_outp, 1, x_model_23_Split_o_1NumDims, x_model_23_Tile_outpNumDims);

            % Flatten:
            [dim1, dim2, x_model_23_Flatten_oNumDims] = best2.ops.prepareFlattenArgs(x_model_23_GatherE_1, 1, x_model_23_GatherE_1NumDims);
            x_model_23_Flatten_o = reshape(x_model_23_GatherE_1, dim1, dim2);

            % TopK:
            [x_model_23_TopK_1_ou, x_model_23_TopK_1__1, x_model_23_TopK_1_ouNumDims, x_model_23_TopK_1__1NumDims] = best2.ops.onnxTopK11(x_model_23_Flatten_o, this.Vars.x_model_23_Constan_3, -1, 1, 1, x_model_23_Flatten_oNumDims);

            % Div:
            x_model_23_Add_2_out = fix(x_model_23_TopK_1__1 ./ this.Vars.x_model_23_Constan_5);
            x_model_23_Add_2_outNumDims = max(x_model_23_TopK_1__1NumDims, this.NumDims.x_model_23_Constan_5);

            % Unsqueeze:
            [shape, x_model_23_UnsqueezeNumDims] = best2.ops.prepareUnsqueezeArgs(x_model_23_TopK_1_ou, this.Vars.UnsqueezeAxes1033, x_model_23_TopK_1_ouNumDims);
            x_model_23_Unsqueeze = reshape(x_model_23_TopK_1_ou, shape);

            % Mod:
            [x_model_23_Mod_outpu, x_model_23_Mod_outpuNumDims] = best2.ops.onnxMod(x_model_23_TopK_1__1, this.Vars.x_model_23_Constan_5, 0, x_model_23_TopK_1__1NumDims);

            % Unsqueeze:
            [shape, x_model_23_Unsquee_1NumDims] = best2.ops.prepareUnsqueezeArgs(x_model_23_Mod_outpu, this.Vars.UnsqueezeAxes1034, x_model_23_Mod_outpuNumDims);
            x_model_23_Unsquee_1 = reshape(x_model_23_Mod_outpu, shape);

            % Gather:
            [x_model_23_Expand_1_, x_model_23_Expand_1_NumDims] = best2.ops.onnxGather(x_model_23_Flatten_1, x_model_23_Add_2_out, 0, x_model_23_Flatten_1NumDims, x_model_23_Add_2_outNumDims);

            % Cast:
            x_model_23_Cast_2_ou = single(x_model_23_Unsquee_1);
            x_model_23_Cast_2_ouNumDims = x_model_23_Unsquee_1NumDims;

            % Tile:
            [sz, x_model_23_Tile_1_ouNumDims] = best2.ops.prepareTileArgs(this.Vars.onnx__Tile_732);
            x_model_23_Tile_1_ou = repmat(x_model_23_Expand_1_, sz);

            % GatherElements:
            [x_model_23_GatherEle, x_model_23_GatherEleNumDims] = best2.ops.onnxGatherElements(x_model_23_Split_out, x_model_23_Tile_1_ou, 1, x_model_23_Split_outNumDims, x_model_23_Tile_1_ouNumDims);

            % Concat:
            [output0, output0NumDims] = best2.ops.onnxConcat(-1, {x_model_23_GatherEle, x_model_23_Unsqueeze, x_model_23_Cast_2_ou}, [x_model_23_GatherEleNumDims, x_model_23_UnsqueezeNumDims, x_model_23_Cast_2_ouNumDims]);

            % Set graph output arguments
            output0NumDims1035 = output0NumDims;

        end

    end

end