.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "GaussianFilter7x7.java"


# static fields
.field private static final mGaussian1x7Source:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float pix;\nuniform float pix2;\nuniform float pix3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 a1 = 0.0044 * texture2D(tex_sampler_0, v_texcoord + vec2(-pix3, 0.0));\n  vec4 a2 = 0.0540 * texture2D(tex_sampler_0, v_texcoord + vec2(-pix2, 0.0));\n  vec4 a3 = 0.2420 * texture2D(tex_sampler_0, v_texcoord + vec2(-pix, 0.0));\n  vec4 a4 = 0.3992 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, 0.0));\n  vec4 a5 = 0.2420 * texture2D(tex_sampler_0, v_texcoord + vec2(pix, 0.0));\n  vec4 a6 = 0.0540 * texture2D(tex_sampler_0, v_texcoord + vec2(pix2, 0.0));\n  vec4 a7 = 0.0044 * texture2D(tex_sampler_0, v_texcoord + vec2(pix3, 0.0));\n  gl_FragColor = a1 + a2 + a3 + a4 + a5 + a6 + a7;\n}\n"

.field private static final mGaussian7x1Source:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float pix;\nuniform float pix2;\nuniform float pix3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 a1 = 0.0044 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, -pix3));\n  vec4 a2 = 0.0540 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, -pix2));\n  vec4 a3 = 0.2420 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, -pix));\n  vec4 a4 = 0.3992 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, 0.0));\n  vec4 a5 = 0.2420 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, pix));\n  vec4 a6 = 0.0540 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, pix2));\n  vec4 a7 = 0.0044 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, pix3));\n  gl_FragColor = a1 + a2 + a3 + a4 + a5 + a6 + a7;\n}\n"


# instance fields
.field private mGaussian1x7Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mGaussian7x1Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    const-string v0, "filterframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private static native blur(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 5

    .prologue
    const/16 v2, 0x12d

    const/4 v4, 0x2

    .line 65
    invoke-static {v2, v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 66
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 67
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "image"

    const/4 v3, 0x1

    .line 68
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method protected onPrepare()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->isOpenGLSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float pix;\nuniform float pix2;\nuniform float pix3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 a1 = 0.0044 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, -pix3));\n  vec4 a2 = 0.0540 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, -pix2));\n  vec4 a3 = 0.2420 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, -pix));\n  vec4 a4 = 0.3992 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, 0.0));\n  vec4 a5 = 0.2420 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, pix));\n  vec4 a6 = 0.0540 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, pix2));\n  vec4 a7 = 0.0044 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, pix3));\n  gl_FragColor = a1 + a2 + a3 + a4 + a5 + a6 + a7;\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mGaussian7x1Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 76
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float pix;\nuniform float pix2;\nuniform float pix3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 a1 = 0.0044 * texture2D(tex_sampler_0, v_texcoord + vec2(-pix3, 0.0));\n  vec4 a2 = 0.0540 * texture2D(tex_sampler_0, v_texcoord + vec2(-pix2, 0.0));\n  vec4 a3 = 0.2420 * texture2D(tex_sampler_0, v_texcoord + vec2(-pix, 0.0));\n  vec4 a4 = 0.3992 * texture2D(tex_sampler_0, v_texcoord + vec2(0.0, 0.0));\n  vec4 a5 = 0.2420 * texture2D(tex_sampler_0, v_texcoord + vec2(pix, 0.0));\n  vec4 a6 = 0.0540 * texture2D(tex_sampler_0, v_texcoord + vec2(pix2, 0.0));\n  vec4 a7 = 0.0044 * texture2D(tex_sampler_0, v_texcoord + vec2(pix3, 0.0));\n  gl_FragColor = a1 + a2 + a3 + a4 + a5 + a6 + a7;\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mGaussian1x7Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 77
    const/16 v0, 0x12d

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 80
    :cond_0
    return-void
.end method

.method protected onProcess()V
    .locals 12

    .prologue
    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 84
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v2

    .line 85
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v1

    .line 88
    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->isOpenGLSupported()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 92
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mGaussian7x1Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v5, "pix"

    aget v6, v1, v7

    int-to-float v6, v6

    div-float v6, v9, v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 93
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mGaussian7x1Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v5, "pix2"

    aget v6, v1, v7

    int-to-float v6, v6

    div-float v6, v10, v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 94
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mGaussian7x1Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v5, "pix3"

    aget v6, v1, v7

    int-to-float v6, v6

    div-float v6, v11, v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 96
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mGaussian1x7Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v5, "pix"

    aget v6, v1, v8

    int-to-float v6, v6

    div-float v6, v9, v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 97
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mGaussian1x7Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v5, "pix2"

    aget v6, v1, v8

    int-to-float v6, v6

    div-float v6, v10, v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 98
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mGaussian1x7Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v5, "pix3"

    aget v6, v1, v8

    int-to-float v6, v6

    div-float v6, v11, v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 100
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mImageType:Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    .line 101
    invoke-static {v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->create(Lcom/google/android/libraries/smartburst/filterfw/FrameType;[I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 103
    if-eqz v2, :cond_0

    .line 104
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mGaussian7x1Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v4, v3, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 105
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->mGaussian1x7Shader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 107
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->release()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    .line 121
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 124
    :cond_2
    return-void

    .line 89
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {v3, v7}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 110
    if-eqz v0, :cond_5

    .line 111
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->lockBytes(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v6

    invoke-static {v5, v6, v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/GaussianFilter7x7;->blur(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 115
    invoke-virtual {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    .line 117
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->unlock()V

    goto :goto_1

    .line 111
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method
