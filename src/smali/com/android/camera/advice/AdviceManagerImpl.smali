.class public Lcom/android/camera/advice/AdviceManagerImpl;
.super Ljava/lang/Object;
.source "AdviceManagerImpl.java"

# interfaces
.implements Lcom/android/camera/advice/AdviceManager;


# instance fields
.field private allAdvice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/camera/advice/AdvicePlugin;",
            ">;"
        }
    .end annotation
.end field

.field public final cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field private isPostCaptureActive:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isPreviewActive:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private samplingFrequency:Lcom/google/android/apps/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/util/CameraMode;Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)V
    .locals 1

    .prologue
    .line 2068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2069
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/device/CameraId;

    iput-object v0, p0, Lcom/android/camera/advice/AdviceManagerImpl;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 2071
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    return-void
.end method


# virtual methods
.method public final getCurrentSamplingFrequency()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/advice/AdviceManagerImpl;->samplingFrequency:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final hasActivePreviewAdvice()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/advice/AdviceManagerImpl;->isPreviewActive:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onCameraChanged(Lcom/google/android/apps/camera/device/CameraId;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/advice/AdviceManagerImpl;->allAdvice:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/advice/AdvicePlugin;

    .line 141
    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/advice/AdvicePlugin;->onChangeDevice(Lcom/google/android/apps/camera/device/CameraId;)V

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public final onFrameCapture(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)V
    .locals 7

    .prologue
    .line 115
    .line 1078
    iget-object v0, p0, Lcom/android/camera/advice/AdviceManagerImpl;->isPostCaptureActive:Lcom/google/android/apps/camera/async/Observable;

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 136
    :cond_0
    return-void

    .line 119
    :cond_1
    new-instance v1, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;

    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v2, p0, Lcom/android/camera/advice/AdviceManagerImpl;->allAdvice:Ljava/util/List;

    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;I)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/advice/AdviceManagerImpl;->allAdvice:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/advice/AdvicePlugin;

    .line 123
    invoke-interface {v0}, Lcom/google/android/apps/camera/advice/AdvicePlugin;->getPluginSettings()Lcom/google/android/apps/camera/advice/AdvicePlugin$AdvicePluginSettings;

    move-result-object v3

    .line 124
    invoke-interface {v3}, Lcom/google/android/apps/camera/advice/AdvicePlugin$AdvicePluginSettings;->isActive()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Lcom/google/android/apps/camera/advice/AdvicePlugin$AdvicePluginSettings;->getAdviceType()Lcom/google/android/apps/camera/advice/Advice$Type;

    move-result-object v0

    sget-object v3, Lcom/google/android/apps/camera/advice/Advice$Type;->POST_CAPTURE:Lcom/google/android/apps/camera/advice/Advice$Type;

    if-ne v0, v3, :cond_2

    .line 125
    new-instance v0, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    new-instance v3, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v3, v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    iget-object v4, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v5, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v6, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;->close()V

    goto :goto_0
.end method

.method public final onFramePreview(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)V
    .locals 8

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/camera/advice/AdviceManagerImpl;->hasActivePreviewAdvice()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;->close()V

    .line 111
    :cond_0
    return-void

    .line 93
    :cond_1
    new-instance v2, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;

    iget-object v0, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;

    iget-object v1, p0, Lcom/android/camera/advice/AdviceManagerImpl;->allAdvice:Ljava/util/List;

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;I)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/advice/AdviceManagerImpl;->allAdvice:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/advice/AdvicePlugin;

    .line 97
    invoke-interface {v0}, Lcom/google/android/apps/camera/advice/AdvicePlugin;->getPluginSettings()Lcom/google/android/apps/camera/advice/AdvicePlugin$AdvicePluginSettings;

    move-result-object v4

    .line 98
    invoke-interface {v4}, Lcom/google/android/apps/camera/advice/AdvicePlugin$AdvicePluginSettings;->isActive()Lcom/google/android/apps/camera/async/Observable;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Lcom/google/android/apps/camera/advice/AdvicePlugin$AdvicePluginSettings;->getAdviceType()Lcom/google/android/apps/camera/advice/Advice$Type;

    move-result-object v1

    sget-object v4, Lcom/google/android/apps/camera/advice/Advice$Type;->PREVIEW:Lcom/google/android/apps/camera/advice/Advice$Type;

    if-ne v1, v4, :cond_2

    .line 100
    new-instance v1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;

    new-instance v4, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v4, v2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;)V

    iget-object v5, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/google/android/apps/camera/util/layout/Orientation;

    iget-object v6, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v7, p1, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/google/android/apps/camera/proxy/camera2/ImageProxy;Lcom/google/android/apps/camera/util/layout/Orientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    .line 106
    invoke-interface {v0, v1}, Lcom/google/android/apps/camera/advice/AdvicePlugin;->processPreviewFrame(Lcom/google/android/apps/camera/processing/imagebackend/ImageToProcess;)Z

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/one/v2/imagemanagement/imagedistributor/RefCountedImageProxy;->close()V

    goto :goto_0
.end method

.method public final setUiController(Lcom/google/android/apps/camera/advice/AdviceUiController;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/camera/advice/AdviceManagerImpl;->allAdvice:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/advice/AdvicePlugin;

    .line 148
    invoke-interface {v0, p1}, Lcom/google/android/apps/camera/advice/AdvicePlugin;->setUiController(Lcom/google/android/apps/camera/advice/AdviceUiController;)V

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method
