.class public final Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;
.super Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;
.source "KernelDataForRenderScriptF32.java"


# instance fields
.field private kernelStack:[F

.field minDiskRadius:F

.field stackAllocation:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>(ILcom/google/android/apps/refocus/renderscript/BlurStack;Landroid/support/v8/renderscript/RenderScript;)V
    .locals 22

    .prologue
    .line 41
    invoke-direct/range {p0 .. p3}, Lcom/google/android/apps/refocus/renderscript/KernelDataForRenderScript;-><init>(ILcom/google/android/apps/refocus/renderscript/BlurStack;Landroid/support/v8/renderscript/RenderScript;)V

    .line 44
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->stackLength:I

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->kernelStack:[F

    .line 45
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getNumDepths(I)I

    move-result v8

    .line 46
    invoke-static {}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getMaxDiskRadius()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->minDiskRadius:F

    .line 47
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v8, :cond_6

    .line 48
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getDepth(II)I

    move-result v2

    .line 49
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/refocus/renderscript/BlurStack;->getDiskRadius(I)F

    move-result v9

    .line 2057
    float-to-int v2, v9

    add-int/lit8 v10, v2, 0x1

    .line 2080
    mul-int/lit8 v2, v10, 0x2

    add-int/lit8 v11, v2, 0x1

    .line 2081
    mul-int v12, v11, v11

    .line 2083
    new-array v13, v12, [F

    .line 2084
    const/4 v2, 0x0

    invoke-static {v13, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 2090
    mul-float v14, v9, v9

    .line 2094
    const/4 v3, 0x0

    .line 2095
    const/4 v2, 0x0

    move v6, v2

    :goto_1
    const/4 v2, 0x5

    if-ge v6, v2, :cond_4

    .line 2096
    const v2, -0x41333333    # -0.4f

    int-to-float v4, v6

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    add-float v15, v2, v4

    .line 2097
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    const/4 v2, 0x5

    if-ge v5, v2, :cond_3

    .line 2098
    const v2, -0x41333333    # -0.4f

    int-to-float v4, v5

    const/high16 v16, 0x40a00000    # 5.0f

    div-float v4, v4, v16

    add-float v16, v2, v4

    .line 2099
    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-ge v4, v11, :cond_2

    .line 2100
    sub-int v2, v4, v10

    int-to-float v2, v2

    add-float v17, v2, v15

    .line 2101
    const/4 v2, 0x0

    move/from16 v21, v2

    move v2, v3

    move/from16 v3, v21

    :goto_4
    if-ge v3, v11, :cond_1

    .line 2102
    sub-int v18, v3, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v16

    .line 2103
    mul-float v19, v17, v17

    mul-float v18, v18, v18

    add-float v18, v18, v19

    cmpg-float v18, v18, v14

    if-gtz v18, :cond_0

    .line 2104
    mul-int v18, v4, v11

    add-int v18, v18, v3

    aget v19, v13, v18

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v19, v19, v20

    aput v19, v13, v18

    .line 2105
    const/high16 v18, 0x3f800000    # 1.0f

    add-float v2, v2, v18

    .line 2101
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2099
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_3

    .line 2097
    :cond_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    .line 2095
    :cond_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    .line 2113
    :cond_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v12, :cond_5

    .line 2114
    aget v4, v13, v2

    div-float/2addr v4, v3

    aput v4, v13, v2

    .line 2113
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 51
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->kernelStack:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->kernelInfo:Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;

    invoke-virtual {v4, v7}, Lcom/google/android/apps/refocus/renderscript/ScriptField_KernelInfo;->get_offset(I)I

    move-result v4

    array-length v5, v13

    invoke-static {v13, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->minDiskRadius:F

    invoke-static {v2, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->minDiskRadius:F

    .line 47
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_0

    .line 56
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->kernelStack:[F

    array-length v3, v3

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->stackAllocation:Landroid/support/v8/renderscript/Allocation;

    .line 57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->stackAllocation:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/refocus/renderscript/f32/KernelDataForRenderScriptF32;->kernelStack:[F

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/Allocation;->copyFrom([F)V

    .line 58
    return-void
.end method
