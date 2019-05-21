.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "VignetteFilter.java"


# static fields
.field private static final mVignetteShaderCode:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float range;\nuniform float inv_max_dist;\nuniform float shade;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float slope = 20.0;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"


# instance fields
.field private mHeight:I

.field private mScale:F

.field private final mShade:F

.field private mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 30
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mScale:F

    .line 31
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mWidth:I

    .line 32
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mHeight:I

    .line 34
    const v0, 0x3f59999a    # 0.85f

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mShade:F

    .line 57
    return-void
.end method

.method private initParameters()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 86
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mWidth:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mHeight:I

    if-le v1, v2, :cond_1

    .line 87
    aput v5, v0, v3

    .line 88
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, v4

    .line 93
    :goto_0
    aget v1, v0, v3

    aget v2, v0, v3

    mul-float/2addr v1, v2

    aget v2, v0, v4

    aget v3, v0, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 94
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v3, "scale"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;[F)V

    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v2, "inv_max_dist"

    div-float v1, v5, v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "shade"

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 98
    :cond_0
    return-void

    .line 90
    :cond_1
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, v3

    .line 91
    aput v5, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 6

    .prologue
    const/16 v2, 0x12d

    const/4 v5, 0x2

    .line 61
    invoke-static {v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 62
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 63
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    .line 64
    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "scale"

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 65
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "image"

    .line 66
    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "mScale"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 76
    :cond_0
    return-void
.end method

.method protected onPrepare()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform float range;\nuniform float inv_max_dist;\nuniform float shade;\nuniform vec2 scale;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float slope = 20.0;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float lumen = shade / (1.0 + exp((dist * inv_max_dist - range) * slope)) + (1.0 - shade);\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  gl_FragColor = vec4(color.rgb * lumen, color.a);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 81
    return-void
.end method

.method protected declared-synchronized onProcess()V
    .locals 8

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    .line 103
    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v2

    .line 105
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v2

    .line 107
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mWidth:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mHeight:I

    if-eq v3, v4, :cond_1

    .line 108
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mWidth:I

    .line 109
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mHeight:I

    .line 110
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->initParameters()V

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v4, "range"

    const v5, 0x3fa66666    # 1.3f

    iget v6, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mScale:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3f333333    # 0.7f

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 117
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/VignetteFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 119
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
