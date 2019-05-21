.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "TintFilter.java"


# static fields
.field private static final mTintShaderCode:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 tint;\nuniform vec3 color_ratio;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"


# instance fields
.field private mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mTint:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 25
    const v0, -0xffff01

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;->mTint:I

    .line 43
    return-void
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 6

    .prologue
    const/16 v2, 0x12d

    const/4 v5, 0x2

    .line 47
    invoke-static {v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 48
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    .line 50
    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "tint"

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 51
    invoke-static {v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "image"

    .line 52
    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method public onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "mTint"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onPrepare()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform vec3 tint;\nuniform vec3 color_ratio;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float avg_color = dot(color_ratio, color.rgb);\n  vec3 new_color = min(0.8 * avg_color + 0.2 * tint, 1.0);\n  gl_FragColor = vec4(new_color.rgb, color.a);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 68
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v2, "color_ratio"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;[F)V

    .line 69
    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3d8f5c29    # 0.07f
    .end array-data
.end method

.method protected declared-synchronized onProcess()V
    .locals 7

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 73
    monitor-enter p0

    :try_start_0
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    .line 74
    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v2

    .line 78
    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;->mTint:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;->mTint:I

    .line 79
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    aput v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;->mTint:I

    .line 80
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    aput v5, v3, v4

    .line 82
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v5, "tint"

    invoke-virtual {v4, v5, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;[F)V

    .line 83
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TintFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 84
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
