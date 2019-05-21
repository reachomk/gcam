.class public final Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "ValueMonitor.java"


# static fields
.field private static final NUM_SAMPLES:I = 0x64


# instance fields
.field private final mFragmentShader:Ljava/lang/String;

.field private mGraphShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mIdShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mMaxVal:F

.field private mMinVal:F

.field private mValue:F

.field private mValues:[F

.field private final mVertexShader:Ljava/lang/String;

.field private mYBottom:F

.field private mYTop:F


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 39
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mMaxVal:F

    .line 40
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mMinVal:F

    .line 41
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mYTop:F

    .line 42
    iput v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mYBottom:F

    .line 43
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mValue:F

    .line 47
    const-string v0, "attribute vec4 a_position2;\nvoid main() {\n  gl_Position = a_position2;\n}\n"

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mVertexShader:Ljava/lang/String;

    .line 53
    const-string v0, "precision mediump float;\nvoid main() {\n  gl_FragColor = vec4(1.0, 1.0, 0.0, 0.1);\n}\n"

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mFragmentShader:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public final getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 6

    .prologue
    const/16 v2, 0x12d

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 65
    invoke-static {v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 66
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 67
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "source"

    .line 68
    invoke-virtual {v2, v3, v5, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "value"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 69
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v5, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "maxValue"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 70
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "minValue"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 71
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "YTop"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 72
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "YBottom"

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 73
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->single(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "composite"

    .line 74
    invoke-virtual {v0, v2, v5, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method protected final mapValue(F)F
    .locals 3

    .prologue
    .line 138
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mMaxVal:F

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mMinVal:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mMinVal:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mMaxVal:F

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mMinVal:F

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 139
    :goto_0
    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mYTop:F

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mYBottom:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mYBottom:F

    add-float/2addr v0, v1

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    const-string v0, "mValue"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "maxValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    const-string v0, "mMaxVal"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "minValue"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    const-string v0, "mMinVal"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YTop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    const-string v0, "mYTop"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YBottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "mYBottom"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0
.end method

.method protected final onPrepare()V
    .locals 5

    .prologue
    .line 100
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->createIdentity()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mIdShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 101
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "attribute vec4 a_position2;\nvoid main() {\n  gl_Position = a_position2;\n}\n"

    const-string v2, "precision mediump float;\nvoid main() {\n  gl_FragColor = vec4(1.0, 1.0, 0.0, 0.1);\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mGraphShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 104
    const/16 v0, 0xc8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mValues:[F

    .line 105
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mValues:[F

    mul-int/lit8 v2, v0, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    aput v3, v1, v2

    .line 107
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mValues:[F

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mYBottom:F

    aput v3, v1, v2

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method protected final onProcess()V
    .locals 5

    .prologue
    .line 114
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x63

    if-ge v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mValues:[F

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mValues:[F

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    aput v3, v1, v2

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mValues:[F

    const/16 v1, 0xc7

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mValue:F

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mapValue(F)F

    move-result v2

    aput v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mGraphShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "a_position2"

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mValues:[F

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setAttributeValues(Ljava/lang/String;[FI)V

    .line 121
    const-string v0, "composite"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v0

    .line 122
    const-string v1, "source"

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v2

    .line 125
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mIdShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->process(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 128
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 129
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mGraphShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setDrawMode(I)V

    .line 130
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mGraphShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setVertexCount(I)V

    .line 131
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/ValueMonitor;->mGraphShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processNoInput(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 134
    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 135
    return-void
.end method
