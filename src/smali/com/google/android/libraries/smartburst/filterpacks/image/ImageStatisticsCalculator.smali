.class public Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;
.super Ljava/lang/Object;
.source "ImageStatisticsCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;
    }
.end annotation


# static fields
.field private static final COMPACT_SHADER_CODE:Ljava/lang/String; = "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 pixel;\nvarying vec2 v_texcoord;\n\nvoid main() {\n  float gray0 = texture2D(tex_sampler_0, v_texcoord -       vec2(pixel.x * 1.5, 0.0)).r;\n  float gray1 = texture2D(tex_sampler_0, v_texcoord -       vec2(pixel.x * 0.5, 0.0)).r;\n  float gray2 = texture2D(tex_sampler_0, v_texcoord +       vec2(pixel.x * 0.5, 0.0)).r;\n  float gray3 = texture2D(tex_sampler_0, v_texcoord +       vec2(pixel.x * 1.5, 0.0)).r;\n  gl_FragColor = vec4(gray0, gray1, gray2, gray3);\n}"

.field private static final DARK_IMAGE_TRANSITION_POINT:F = 5.0f

.field private static final DARK_IMAGE_TRANSITION_RATE:F = 0.2f

.field private static final DIFF_SHADER_CODE:Ljava/lang/String; = "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform vec2 pixel;\nvarying vec2 v_texcoord;\n\nvoid main() {\n  float curr = texture2D(tex_sampler_0, v_texcoord).r;\n  float right = texture2D(tex_sampler_0, v_texcoord +       vec2(pixel.x, 0.0)).r;\n  float d_fhor = abs(right - curr);\n  float down = texture2D(tex_sampler_0, v_texcoord +       vec2(0.0, pixel.y)).r;\n  float d_fver = abs(down - curr);\n\n  curr = texture2D(tex_sampler_1, v_texcoord).r;\n  right = texture2D(tex_sampler_1, v_texcoord + vec2(pixel.x, 0.0)).r;\n  float d_bhor = abs(right - curr);\n  curr = texture2D(tex_sampler_2, v_texcoord).r;\n  down = texture2D(tex_sampler_2, v_texcoord + vec2(0.0, pixel.y)).r;\n  float d_bver = abs(down - curr);\n\n  float vver = max(0.0, d_fver - d_bver);\n  float vhor = max(0.0, d_fhor - d_bhor);\n\n  gl_FragColor = vec4(d_fhor, d_fver, vhor, vver);\n}"

.field private static final FLAT_IMAGE_TRANSITION_POINT:F = 1.7361f

.field private static final FLAT_IMAGE_TRANSITION_RATE:F = 11.52f

.field private static final STATS_STRUCT_SIZE:I = 0x10


# instance fields
.field private mCompactShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mDiffShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private final mNumBlocksX:I

.field private final mNumBlocksY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 516
    const-string v0, "filterframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mDiffShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 105
    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mCompactShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 115
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 116
    if-lez p2, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 117
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mNumBlocksX:I

    .line 118
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mNumBlocksY:I

    .line 119
    return-void

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0

    :cond_1
    move v1, v2

    .line 116
    goto :goto_1
.end method

.method private calculateBlockStats(Ljava/nio/Buffer;Ljava/nio/Buffer;II)[Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;
    .locals 23

    .prologue
    .line 259
    const/16 v1, 0x80

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 260
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    .line 261
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 262
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 264
    move/from16 v0, p3

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mNumBlocksX:I

    int-to-float v2, v2

    div-float v20, v1, v2

    .line 265
    move/from16 v0, p4

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mNumBlocksY:I

    int-to-float v2, v2

    div-float v21, v1, v2

    .line 268
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mNumBlocksX:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mNumBlocksY:I

    mul-int/2addr v1, v2

    new-array v0, v1, [Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;

    move-object/from16 v22, v0

    .line 269
    const/4 v2, 0x0

    .line 270
    const/4 v1, 0x0

    move/from16 v17, v1

    move v1, v2

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mNumBlocksY:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    .line 271
    const/4 v2, 0x0

    move/from16 v19, v2

    move/from16 v18, v1

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mNumBlocksX:I

    move/from16 v0, v19

    if-ge v0, v1, :cond_2

    .line 273
    move/from16 v0, v19

    int-to-float v1, v0

    mul-float v1, v1, v20

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 274
    move/from16 v0, v17

    int-to-float v2, v0

    mul-float v2, v2, v21

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 275
    add-int/lit8 v3, v19, 0x1

    int-to-float v3, v3

    mul-float v3, v3, v20

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move/from16 v0, p3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 276
    add-int/lit8 v4, v17, 0x1

    int-to-float v4, v4

    mul-float v4, v4, v21

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move/from16 v0, p4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 277
    sub-int/2addr v3, v1

    .line 278
    sub-int/2addr v4, v2

    .line 281
    invoke-virtual {v8}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 282
    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 283
    const/4 v6, 0x4

    mul-int/lit8 v7, p3, 0x4

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v8}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->calculateSums4(IIIILjava/nio/Buffer;IILjava/nio/Buffer;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not calculate block statistics!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    const/4 v14, 0x1

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object/from16 v13, p2

    move/from16 v15, p3

    invoke-static/range {v9 .. v16}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->calculateStats(IIIILjava/nio/Buffer;IILjava/nio/Buffer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not calculate block statistics!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_1
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, v16

    invoke-static {v3, v4, v8, v0}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->fromBuffers(IILjava/nio/IntBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;

    move-result-object v1

    aput-object v1, v22, v18

    .line 271
    add-int/lit8 v1, v19, 0x1

    move/from16 v19, v1

    move/from16 v18, v2

    goto :goto_1

    .line 270
    :cond_2
    add-int/lit8 v1, v17, 0x1

    move/from16 v17, v1

    move/from16 v1, v18

    goto/16 :goto_0

    .line 297
    :cond_3
    return-object v22
.end method

.method private calculateImageStatistics(Ljava/nio/Buffer;Ljava/nio/Buffer;IIJ)Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;
    .locals 7

    .prologue
    .line 207
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->calculateBlockStats(Ljava/nio/Buffer;Ljava/nio/Buffer;II)[Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;

    move-result-object v1

    move-object v0, p0

    move v2, p3

    move v3, p4

    move-wide v4, p5

    .line 209
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->calculateImageStatistics([Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;IIJ)Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;

    move-result-object v0

    return-object v0
.end method

.method private calculateImageStatistics([Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;IIJ)Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;
    .locals 18

    .prologue
    .line 224
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mNumBlocksX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mNumBlocksY:I

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p1

    invoke-static {v4, v5, v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->combineStats(IIII[Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;)Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;

    move-result-object v10

    .line 228
    const/4 v11, 0x0

    .line 229
    const/4 v12, 0x0

    .line 230
    const/high16 v13, 0x437f0000    # 255.0f

    .line 231
    const/4 v14, 0x0

    .line 232
    const v15, 0x477e0100    # 65025.0f

    .line 233
    move-object/from16 v0, p1

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, p1, v4

    .line 234
    invoke-virtual {v6}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->perceptualSharpness()F

    move-result v7

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 235
    invoke-virtual {v6}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->grayMean()F

    move-result v7

    invoke-static {v7, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 236
    invoke-virtual {v6}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->grayMean()F

    move-result v7

    invoke-static {v7, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 237
    invoke-virtual {v6}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->grayVariance()F

    move-result v7

    invoke-static {v7, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 238
    invoke-virtual {v6}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->grayVariance()F

    move-result v6

    invoke-static {v6, v15}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 233
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    :cond_0
    new-instance v5, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;

    .line 242
    invoke-virtual {v10}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->perceptualSharpness()F

    move-result v6

    .line 243
    invoke-virtual {v10}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->grayMean()F

    move-result v7

    iget-short v8, v10, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->grayMax:S

    iget-short v9, v10, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->grayMin:S

    .line 246
    invoke-virtual {v10}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator$BlockStats;->grayVariance()F

    move-result v10

    move-wide/from16 v16, p4

    invoke-direct/range {v5 .. v17}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;-><init>(FFIIFFFFFFJ)V

    .line 241
    return-object v5
.end method

.method private static native calculateStats(IIIILjava/nio/Buffer;IILjava/nio/Buffer;)Z
.end method

.method private static native calculateSums4(IIIILjava/nio/Buffer;IILjava/nio/Buffer;)Z
.end method

.method private setInterpolationMode(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;I)V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockTextureSource()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    .line 302
    const/16 v1, 0x2800

    invoke-virtual {v0, v1, p2}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->setParameter(II)V

    .line 303
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 304
    return-void
.end method


# virtual methods
.method public extractImageStatistics(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;
    .locals 10

    .prologue
    const/16 v9, 0x2601

    const/16 v2, 0x2600

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 133
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input image must have a width that is a multiple of 4!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    const/16 v0, 0x12d

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 142
    invoke-direct {p0, p1, v2}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->setInterpolationMode(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;I)V

    .line 143
    invoke-direct {p0, p2, v2}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->setInterpolationMode(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;I)V

    .line 144
    invoke-direct {p0, p3, v2}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->setInterpolationMode(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;I)V

    .line 147
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v1

    .line 148
    new-array v2, v7, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, v1, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    aget v4, v1, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v5

    .line 154
    new-array v3, v7, [I

    aget v4, v1, v6

    div-int/lit8 v4, v4, 0x4

    aput v4, v3, v6

    aget v4, v1, v5

    aput v4, v3, v5

    invoke-static {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v8

    .line 156
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mCompactShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    if-nez v3, :cond_1

    .line 157
    new-instance v3, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v4, "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 pixel;\nvarying vec2 v_texcoord;\n\nvoid main() {\n  float gray0 = texture2D(tex_sampler_0, v_texcoord -       vec2(pixel.x * 1.5, 0.0)).r;\n  float gray1 = texture2D(tex_sampler_0, v_texcoord -       vec2(pixel.x * 0.5, 0.0)).r;\n  float gray2 = texture2D(tex_sampler_0, v_texcoord +       vec2(pixel.x * 0.5, 0.0)).r;\n  float gray3 = texture2D(tex_sampler_0, v_texcoord +       vec2(pixel.x * 1.5, 0.0)).r;\n  gl_FragColor = vec4(gray0, gray1, gray2, gray3);\n}"

    invoke-direct {v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mCompactShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 159
    :cond_1
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mCompactShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v4, "pixel"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;[F)V

    .line 160
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mCompactShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, p1, v8}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 163
    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mDiffShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    if-nez v1, :cond_2

    .line 166
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v3, "precision highp float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform vec2 pixel;\nvarying vec2 v_texcoord;\n\nvoid main() {\n  float curr = texture2D(tex_sampler_0, v_texcoord).r;\n  float right = texture2D(tex_sampler_0, v_texcoord +       vec2(pixel.x, 0.0)).r;\n  float d_fhor = abs(right - curr);\n  float down = texture2D(tex_sampler_0, v_texcoord +       vec2(0.0, pixel.y)).r;\n  float d_fver = abs(down - curr);\n\n  curr = texture2D(tex_sampler_1, v_texcoord).r;\n  right = texture2D(tex_sampler_1, v_texcoord + vec2(pixel.x, 0.0)).r;\n  float d_bhor = abs(right - curr);\n  curr = texture2D(tex_sampler_2, v_texcoord).r;\n  down = texture2D(tex_sampler_2, v_texcoord + vec2(0.0, pixel.y)).r;\n  float d_bver = abs(down - curr);\n\n  float vver = max(0.0, d_fver - d_bver);\n  float vhor = max(0.0, d_fhor - d_bhor);\n\n  gl_FragColor = vec4(d_fhor, d_fver, vhor, vver);\n}"

    invoke-direct {v1, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mDiffShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mDiffShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v3, "pixel"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;[F)V

    .line 169
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->mDiffShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    aput-object p1, v2, v6

    aput-object p2, v2, v5

    aput-object p3, v2, v7

    invoke-virtual {v1, v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processMulti([Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 173
    invoke-virtual {v0, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 174
    invoke-virtual {v8, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 176
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v5

    .line 177
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getTimestamp()J

    move-result-wide v6

    move-object v1, p0

    .line 175
    invoke-direct/range {v1 .. v7}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->calculateImageStatistics(Ljava/nio/Buffer;Ljava/nio/Buffer;IIJ)Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatistics;

    move-result-object v1

    .line 180
    invoke-direct {p0, p1, v9}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->setInterpolationMode(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;I)V

    .line 181
    invoke-direct {p0, p2, v9}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->setInterpolationMode(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;I)V

    .line 182
    invoke-direct {p0, p3, v9}, Lcom/google/android/libraries/smartburst/filterpacks/image/ImageStatisticsCalculator;->setInterpolationMode(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;I)V

    .line 185
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 186
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 187
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 188
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 190
    return-object v1
.end method
