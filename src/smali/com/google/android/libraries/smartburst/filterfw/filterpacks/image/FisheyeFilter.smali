.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "FisheyeFilter.java"


# static fields
.field private static final mFisheyeShader:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"


# instance fields
.field private mHeight:I

.field private mScale:F

.field private mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 25
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mScale:F

    .line 27
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mWidth:I

    .line 28
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mHeight:I

    .line 52
    return-void
.end method

.method private updateFrameSize(II)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mWidth:I

    .line 80
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mHeight:I

    .line 81
    return-void
.end method

.method private updateProgramParams()V
    .locals 10

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 87
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mWidth:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mHeight:I

    if-le v1, v2, :cond_0

    .line 88
    aput v3, v0, v4

    .line 89
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, v5

    .line 95
    :goto_0
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mScale:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    add-float/2addr v1, v2

    .line 96
    const/high16 v2, 0x3e800000    # 0.25f

    aget v3, v0, v4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    aget v4, v0, v5

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    .line 97
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 98
    const v4, 0x3f933333    # 1.15f

    mul-float/2addr v4, v3

    .line 99
    mul-float/2addr v4, v4

    .line 100
    const v5, 0x3fc90fdb

    div-float v6, v1, v3

    sub-float v2, v4, v2

    float-to-double v8, v2

    .line 101
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float/2addr v2, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    double-to-float v2, v6

    sub-float v2, v5, v2

    .line 102
    div-float v2, v3, v2

    .line 104
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v5, "scale"

    invoke-virtual {v3, v5, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;[F)V

    .line 105
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v3, "radius2"

    invoke-virtual {v0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 106
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v3, "factor"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 107
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v2, "alpha"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 108
    return-void

    .line 91
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    aput v1, v0, v4

    .line 92
    aput v3, v0, v5

    goto :goto_0
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 6

    .prologue
    const/16 v2, 0x12d

    const/4 v5, 0x2

    .line 56
    invoke-static {v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 57
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    .line 59
    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "scale"

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 60
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "image"

    .line 61
    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "mScale"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 71
    :cond_0
    return-void
.end method

.method protected onPrepare()V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec2 scale;\nuniform float alpha;\nuniform float radius2;\nuniform float factor;\nvarying vec2 v_texcoord;\nvoid main() {\n  const float m_pi_2 = 1.570963;\n  vec2 coord = v_texcoord - vec2(0.5, 0.5);\n  float dist = length(coord * scale);\n  float radian = m_pi_2 - atan(alpha * sqrt(radius2 - dist * dist), dist);\n  float scalar = radian * factor / dist;\n  vec2 new_coord = coord * scalar + vec2(0.5, 0.5);\n  gl_FragColor = texture2D(tex_sampler_0, new_coord);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 76
    return-void
.end method

.method protected declared-synchronized onProcess()V
    .locals 5

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    .line 114
    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v2

    .line 116
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v2

    .line 119
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mWidth:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mHeight:I

    if-eq v3, v4, :cond_1

    .line 120
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->updateFrameSize(II)V

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->updateProgramParams()V

    .line 126
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/FisheyeFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 128
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
