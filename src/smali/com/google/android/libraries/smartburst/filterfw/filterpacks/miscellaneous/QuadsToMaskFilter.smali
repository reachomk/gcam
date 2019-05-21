.class public final Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "QuadsToMaskFilter.java"


# instance fields
.field private mBackgroundShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private final mBgFragmentShader:Ljava/lang/String;

.field private mImageSize:[I

.field private final mQuadFragmentShader:Ljava/lang/String;

.field private mQuadShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 39
    const-string v0, "precision mediump float;\nvoid main() {\n  gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n}\n"

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->mBgFragmentShader:Ljava/lang/String;

    .line 47
    const-string v0, "precision mediump float;\nvoid main() {\n  gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);\n}\n"

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->mQuadFragmentShader:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public final getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 59
    const/16 v0, 0x12d

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v2, "quads"

    const-class v3, Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    .line 61
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v1

    const-string v2, "imageSize"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 62
    invoke-static {v3}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->array(Ljava/lang/Class;)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v1

    const-string v2, "mask"

    .line 63
    invoke-virtual {v1, v2, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherPorts()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 60
    return-object v0
.end method

.method public final onInputPortOpen(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imageSize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "mImageSize"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "mQuads"

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->bindToFieldNamed(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, v2}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->setAutoPullEnabled(Z)V

    goto :goto_0
.end method

.method protected final onPrepare()V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nvoid main() {\n  gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->mBackgroundShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 81
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v1, "precision mediump float;\nvoid main() {\n  gl_FragColor = vec4(1.0, 1.0, 1.0, 1.0);\n}\n"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->mQuadShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 82
    return-void
.end method

.method protected final onProcess()V
    .locals 5

    .prologue
    .line 86
    const-string v0, "mask"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v1

    .line 87
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->mImageSize:[I

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v2

    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->mBackgroundShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processNoInput(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 93
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->mQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 94
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->mQuadShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->mQuads:[Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setTargetQuad(Lcom/google/android/libraries/smartburst/filterfw/geometry/Quad;)V

    .line 95
    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/miscellaneous/QuadsToMaskFilter;->mQuadShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processNoInput(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 100
    return-void
.end method
