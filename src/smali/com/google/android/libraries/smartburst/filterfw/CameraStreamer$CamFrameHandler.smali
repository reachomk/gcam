.class abstract Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;
.super Ljava/lang/Object;
.source "CameraStreamer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "CamFrameHandler"
.end annotation


# instance fields
.field protected mCameraHeight:I

.field protected mCameraWidth:I

.field protected final mClients:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;",
            ">;"
        }
    .end annotation
.end field

.field protected mContextClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mOutHeight:I

.field protected mOutWidth:I

.field protected mRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

.field protected mTargetShaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            "Lcom/google/android/libraries/smartburst/filterfw/ImageShader;",
            ">;"
        }
    .end annotation
.end field

.field protected mTargetTextures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            "Lcom/google/android/libraries/smartburst/filterfw/TextureSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mTargetShaders:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mTargetTextures:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mContextClients:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mClients:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$1;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;-><init>(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer;)V

    return-void
.end method


# virtual methods
.method protected clientsForContext(Ljavax/microedition/khronos/egl/EGLContext;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGLContext;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mContextClients:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 151
    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 153
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mContextClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_0
    return-object v0
.end method

.method protected createClientShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createClientTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract grabFrame(Lcom/google/android/libraries/smartburst/filterfw/FrameImage2D;Lcom/google/android/libraries/smartburst/filterfw/geometry/Scaler;)V
.end method

.method public initWithRunner(Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mRunner:Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CameraRunnable;

    .line 107
    return-void
.end method

.method public isFrontMirrored()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method protected onCleanupContext(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mTargetTextures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    .line 163
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mTargetShaders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;->release()V

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mTargetTextures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_0
    if-eqz v1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mTargetShaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_1
    return-void
.end method

.method protected onRegisterClient(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public onUpdateCameraOrientation(I)V
    .locals 1

    .prologue
    .line 138
    rem-int/lit16 v0, p1, 0xb4

    if-eqz v0, :cond_0

    .line 140
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mCameraHeight:I

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mOutWidth:I

    .line 142
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mCameraWidth:I

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mOutHeight:I

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mCameraWidth:I

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mOutWidth:I

    .line 145
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mCameraHeight:I

    iput v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mOutHeight:I

    goto :goto_0
.end method

.method public registerClient(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->currentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->clientsForContext(Ljavax/microedition/khronos/egl/EGLContext;)Ljava/util/Set;

    move-result-object v1

    .line 117
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mClients:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->onRegisterClient(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 120
    return-void
.end method

.method public abstract release()V
.end method

.method public setCameraSize(II)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mCameraWidth:I

    .line 111
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mCameraHeight:I

    .line 112
    return-void
.end method

.method public abstract setupServerFrame()V
.end method

.method protected shaderForContext(Ljavax/microedition/khronos/egl/EGLContext;)Lcom/google/android/libraries/smartburst/filterfw/ImageShader;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mTargetShaders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    .line 184
    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->createClientShader()Lcom/google/android/libraries/smartburst/filterfw/ImageShader;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mTargetShaders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    return-object v0
.end method

.method protected textureForContext(Ljavax/microedition/khronos/egl/EGLContext;)Lcom/google/android/libraries/smartburst/filterfw/TextureSource;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mTargetTextures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    .line 175
    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->createClientTexture()Lcom/google/android/libraries/smartburst/filterfw/TextureSource;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mTargetTextures:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    return-object v0
.end method

.method public unregisterClient(Lcom/google/android/libraries/smartburst/filterfw/VideoFrameConsumer;)V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/google/android/libraries/smartburst/filterfw/RenderTarget;->currentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->clientsForContext(Ljavax/microedition/khronos/egl/EGLContext;)Ljava/util/Set;

    move-result-object v1

    .line 125
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->onCleanupContext(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/CameraStreamer$CamFrameHandler;->mClients:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public abstract updateServerFrame()V
.end method
