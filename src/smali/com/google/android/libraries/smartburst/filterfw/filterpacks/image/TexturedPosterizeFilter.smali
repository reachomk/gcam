.class public Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;
.super Lcom/google/android/libraries/smartburst/filterfw/Filter;
.source "TexturedPosterizeFilter.java"


# static fields
.field private static final mPosterizeShaderCode:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D tex_sampler_0;\n__TEX_SAMPLERS_DECL__\nuniform float binSize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float gray = (color.r + color.g + color.b) / 3.0;\n  int level = int(floor((gray / binSize) + 0.5));\n  vec4 texColor;\n__LEVEL_SELECT__ {\n    texColor = vec4(0.0, 0.0, 0.0, 1.0);\n  }\n  gl_FragColor = texColor;\n}\n"


# instance fields
.field private mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

.field private mTexturePorts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/libraries/smartburst/filterfw/InputPort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/smartburst/filterfw/Filter;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mTexturePorts:Ljava/util/Map;

    .line 58
    return-void
.end method

.method private checkInputTextures()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mTexturePorts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    .line 141
    const/4 v0, 0x2

    if-ge v2, v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must specify at least two input texture levels!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 145
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mTexturePorts:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    .line 146
    if-nez v0, :cond_1

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Missing input port \'level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 150
    :cond_2
    return-void
.end method

.method private createShader()V
    .locals 4

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->generateSamplerDecl()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->generateLevelSelect()Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v2, "precision mediump float;\nuniform sampler2D tex_sampler_0;\n__TEX_SAMPLERS_DECL__\nuniform float binSize;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  float gray = (color.r + color.g + color.b) / 3.0;\n  int level = int(floor((gray / binSize) + 0.5));\n  vec4 texColor;\n__LEVEL_SELECT__ {\n    texColor = vec4(0.0, 0.0, 0.0, 1.0);\n  }\n  gl_FragColor = texColor;\n}\n"

    .line 114
    const-string v3, "__TEX_SAMPLERS_DECL__"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 115
    const-string v2, "__LEVEL_SELECT__"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 117
    return-void
.end method

.method private generateLevelSelect()Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mTexturePorts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 130
    new-array v2, v1, [Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 132
    add-int/lit8 v3, v0, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x66

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "  if (level == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") {\n    texColor = texture2D(tex_sampler_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v_texcoord);\n  } else "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    const-string v0, "\n"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateSamplerDecl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mTexturePorts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 121
    new-array v2, v1, [Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 123
    add-int/lit8 v3, v0, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "uniform sampler2D tex_sampler_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const-string v0, "\n"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSignature()Lcom/google/android/libraries/smartburst/filterfw/Signature;
    .locals 5

    .prologue
    const/16 v2, 0x12d

    const/4 v4, 0x2

    .line 62
    invoke-static {v2, v4}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v0

    .line 63
    const/16 v1, 0x10

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/FrameType;->image2D(II)Lcom/google/android/libraries/smartburst/filterfw/FrameType;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/Signature;

    invoke-direct {v2}, Lcom/google/android/libraries/smartburst/filterfw/Signature;-><init>()V

    const-string v3, "image"

    .line 65
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addInputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    const-string v2, "image"

    .line 66
    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->addOutputPort(Ljava/lang/String;ILcom/google/android/libraries/smartburst/filterfw/FrameType;)Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Signature;->disallowOtherOutputs()Lcom/google/android/libraries/smartburst/filterfw/Signature;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method protected onInputPortAttached(Lcom/google/android/libraries/smartburst/filterfw/InputPort;)V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mTexturePorts:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    return-void

    .line 76
    :cond_1
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported input port \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onPrepare()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->checkInputTextures()V

    .line 84
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->createShader()V

    .line 85
    return-void
.end method

.method protected onProcess()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 89
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->getConnectedOutputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/OutputPort;

    move-result-object v3

    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mTexturePorts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    .line 93
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->getConnectedInputPort(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    aput-object v0, v4, v1

    .line 94
    aget-object v0, v4, v1

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;->getDimensions()[I

    move-result-object v5

    .line 97
    const/4 v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mTexturePorts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/InputPort;

    .line 99
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/InputPort;->pullFrame()Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    aput-object v0, v4, v1

    move v1, v2

    .line 100
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v3, v5}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->fetchAvailableFrame([I)Lcom/google/android/libraries/smartburst/filterfw/Frame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/Frame;->asFrameImage2D()Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    const-string v2, "binSize"

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mTexturePorts:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v1, v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->setUniformValue(Ljava/lang/String;F)V

    .line 106
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/filterpacks/image/TexturedPosterizeFilter;->mShader:Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    invoke-virtual {v1, v4, v0}, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;->processMulti([Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;)V

    .line 107
    invoke-virtual {v3, v0}, Lcom/google/android/libraries/smartburst/filterfw/OutputPort;->pushFrame(Lcom/google/android/libraries/smartburst/filterfw/Frame;)V

    .line 108
    return-void
.end method
