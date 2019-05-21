.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "GradientFilter.java"


# static fields
.field private static final mDirectionSource:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 gy = 2.0 * texture2D(tex_sampler_1, v_texcoord) - 1.0;\n  vec4 gx = 2.0 * texture2D(tex_sampler_0, v_texcoord) - 1.0;\n  gl_FragColor = vec4((atan(gy.rgb, gx.rgb) + 3.14) / (2.0 * 3.14), 1.0);\n}\n"

.field private static final mGradientXSource:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 pix;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 cr = texture2D(tex_sampler_0, v_texcoord);\n  vec4 right = texture2D(tex_sampler_0, v_texcoord + vec2(pix.x, 0));\n  gl_FragColor = 0.5 + (right - cr) / 2.0;\n}\n"

.field private static final mGradientYSource:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 pix;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 cr = texture2D(tex_sampler_0, v_texcoord);\n  vec4 down = texture2D(tex_sampler_0, v_texcoord + vec2(0, pix.y));\n  gl_FragColor = 0.5 + (down - cr) / 2.0;\n}\n"

.field private static final mMagnitudeSource:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 gx = 2.0 * texture2D(tex_sampler_0, v_texcoord) - 1.0;\n  vec4 gy = 2.0 * texture2D(tex_sampler_1, v_texcoord) - 1.0;\n  gl_FragColor = vec4(sqrt(gx.rgb * gx.rgb + gy.rgb * gy.rgb), 1.0);\n}\n"


# instance fields
.field private mDirectionShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mGradientXShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mGradientYShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

.field private mMagnitudeShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const-string v0, "filterframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private static native gradientOperator(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 6

    .prologue
    const/16 v2, 0x12d

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 74
    invoke-static {v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 75
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "gradientX"

    .line 77
    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "gradientY"

    .line 78
    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "direction"

    .line 79
    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "magnitude"

    .line 80
    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method protected onOpen()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/google/android/libraries/smartburst/filterfw/Filter;->onOpen()V

    .line 100
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->getConnectedOutputPorts()[Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Gradient Filter has no output port!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    return-void
.end method

.method protected onPrepare()V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->isOpenGLSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 pix;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 cr = texture2D(tex_sampler_0, v_texcoord);\n  vec4 right = texture2D(tex_sampler_0, v_texcoord + vec2(pix.x, 0));\n  gl_FragColor = 0.5 + (right - cr) / 2.0;\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mGradientXShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 88
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 pix;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 cr = texture2D(tex_sampler_0, v_texcoord);\n  vec4 down = texture2D(tex_sampler_0, v_texcoord + vec2(0, pix.y));\n  gl_FragColor = 0.5 + (down - cr) / 2.0;\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mGradientYShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 89
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 gx = 2.0 * texture2D(tex_sampler_0, v_texcoord) - 1.0;\n  vec4 gy = 2.0 * texture2D(tex_sampler_1, v_texcoord) - 1.0;\n  gl_FragColor = vec4(sqrt(gx.rgb * gx.rgb + gy.rgb * gy.rgb), 1.0);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mMagnitudeShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 90
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 gy = 2.0 * texture2D(tex_sampler_1, v_texcoord) - 1.0;\n  vec4 gx = 2.0 * texture2D(tex_sampler_0, v_texcoord) - 1.0;\n  gl_FragColor = vec4((atan(gy.rgb, gx.rgb) + 3.14) / (2.0 * 3.14), 1.0);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mDirectionShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 91
    const/16 v0, 0x12d

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 94
    :cond_0
    return-void
.end method

.method protected onProcess()V
    .locals 17

    .prologue
    .line 107
    const-string v1, "gradientX"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v12

    .line 108
    const-string v1, "gradientY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v13

    .line 109
    const-string v1, "magnitude"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v14

    .line 110
    const-string v1, "direction"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v15

    .line 111
    const-string v1, "image"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v16

    .line 112
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v2

    .line 114
    if-eqz v14, :cond_9

    .line 115
    invoke-virtual {v14, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    move-object v11, v1

    .line 116
    :goto_0
    if-eqz v15, :cond_a

    .line 117
    invoke-virtual {v15, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    move-object v10, v1

    .line 118
    :goto_1
    if-eqz v12, :cond_b

    .line 119
    invoke-virtual {v12, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v9

    .line 120
    :goto_2
    if-eqz v13, :cond_c

    .line 121
    invoke-virtual {v13, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    move-object v8, v1

    .line 122
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->isOpenGLSupported()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mGradientXShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v3, "pix"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    aget v7, v2, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aget v7, v2, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;[F)V

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mGradientYShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v3, "pix"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    aget v7, v2, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    aget v7, v2, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;[F)V

    .line 129
    if-nez v12, :cond_16

    .line 130
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    invoke-static {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 132
    :goto_4
    if-nez v13, :cond_0

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    invoke-static {v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v8

    .line 136
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mGradientXShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mGradientYShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v8}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 138
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v8, v2, v3

    .line 139
    if-eqz v14, :cond_1

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mMagnitudeShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, v2, v11}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processMulti([Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 142
    :cond_1
    if-eqz v15, :cond_2

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->mDirectionShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, v2, v10}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processMulti([Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 147
    :cond_2
    if-nez v12, :cond_3

    .line 148
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 150
    :cond_3
    if-nez v13, :cond_4

    .line 151
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 179
    :cond_4
    :goto_5
    if-eqz v11, :cond_5

    .line 180
    invoke-virtual {v14, v11}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 182
    :cond_5
    if-eqz v10, :cond_6

    .line 183
    invoke-virtual {v15, v10}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 185
    :cond_6
    if-eqz v12, :cond_7

    .line 186
    invoke-virtual {v12, v1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 188
    :cond_7
    if-eqz v13, :cond_8

    .line 189
    invoke-virtual {v13, v8}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 191
    :cond_8
    return-void

    .line 115
    :cond_9
    const/4 v1, 0x0

    move-object v11, v1

    goto/16 :goto_0

    .line 117
    :cond_a
    const/4 v1, 0x0

    move-object v10, v1

    goto/16 :goto_1

    .line 119
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 121
    :cond_c
    const/4 v1, 0x0

    move-object v8, v1

    goto/16 :goto_3

    .line 154
    :cond_d
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 155
    if-eqz v11, :cond_12

    .line 156
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 157
    :goto_6
    if-eqz v10, :cond_13

    .line 158
    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 159
    :goto_7
    if-eqz v9, :cond_14

    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 160
    :goto_8
    if-eqz v8, :cond_15

    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 161
    :goto_9
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v2

    invoke-static/range {v1 .. v7}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GradientFilter;->gradientOperator(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 163
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 164
    if-eqz v11, :cond_e

    .line 165
    invoke-virtual {v11}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 167
    :cond_e
    if-eqz v10, :cond_f

    .line 168
    invoke-virtual {v10}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 170
    :cond_f
    if-eqz v9, :cond_10

    .line 171
    invoke-virtual {v9}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 173
    :cond_10
    if-eqz v8, :cond_11

    .line 174
    invoke-virtual {v8}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    :cond_11
    move-object v1, v9

    goto :goto_5

    .line 156
    :cond_12
    const/4 v4, 0x0

    goto :goto_6

    .line 158
    :cond_13
    const/4 v5, 0x0

    goto :goto_7

    .line 159
    :cond_14
    const/4 v6, 0x0

    goto :goto_8

    .line 160
    :cond_15
    const/4 v7, 0x0

    goto :goto_9

    :cond_16
    move-object v1, v9

    goto/16 :goto_4
.end method
