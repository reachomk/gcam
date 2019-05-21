.class public final Lcom/android/camera/module/ImageConfigSelector;
.super Ljava/lang/Object;
.source "ImageConfigSelector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final oneCameraManager:Lcom/android/camera/one/OneCameraManager;

.field private final resolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

.field private final trace:Lcom/android/camera/debug/trace/Trace;

.field private final viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "ModuleCfg"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/ImageConfigSelector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/one/OneCameraManager;Lcom/android/camera/settings/ResolutionSetting;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/debug/trace/Trace;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/camera/module/ImageConfigSelector;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 41
    iput-object p2, p0, Lcom/android/camera/module/ImageConfigSelector;->resolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    .line 42
    iput-object p3, p0, Lcom/android/camera/module/ImageConfigSelector;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    .line 43
    iput-object p5, p0, Lcom/android/camera/module/ImageConfigSelector;->trace:Lcom/android/camera/debug/trace/Trace;

    .line 45
    sget-object v0, Lcom/android/camera/module/ImageConfigSelector;->TAG:Ljava/lang/String;

    invoke-interface {p4, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;

    .line 46
    return-void
.end method


# virtual methods
.method public final createConfigFromCameraId(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/module/OneModuleConfig;
    .locals 6

    .prologue
    .line 90
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/android/camera/module/ImageConfigSelector;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "OneConfig#create"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/module/ImageConfigSelector;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v1, "OneConfig#oneCharacteristics"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/trace/Trace;->start(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/module/ImageConfigSelector;->oneCameraManager:Lcom/android/camera/one/OneCameraManager;

    .line 95
    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/google/android/apps/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    .line 99
    iget-object v1, p0, Lcom/android/camera/module/ImageConfigSelector;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "OneConfig#pictureSize"

    invoke-interface {v1, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/ImageConfigSelector;->resolutionSetting:Lcom/android/camera/settings/ResolutionSetting;

    invoke-virtual {v1, p1, v2}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 108
    iget-object v1, p0, Lcom/android/camera/module/ImageConfigSelector;->trace:Lcom/android/camera/debug/trace/Trace;

    const-string v3, "OneConfig#selectViewfinder"

    invoke-interface {v1, v3}, Lcom/android/camera/debug/trace/Trace;->stopAndStart(Ljava/lang/String;)V

    .line 109
    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/camera/module/ImageConfigSelector;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    const/4 v3, 0x0

    .line 111
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->selectViewfinderSize(Ljava/util/List;Lcom/android/camera/util/Size;Lcom/android/camera/one/OneCamera$Facing;Z)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 113
    new-instance v5, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    .line 114
    invoke-static {v0}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v1

    invoke-direct {v5, v2, v0, v1}, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;-><init>(Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/util/Size;Lcom/android/camera/util/AspectRatio;)V

    .line 115
    iget-object v0, p0, Lcom/android/camera/module/ImageConfigSelector;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v0}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 117
    new-instance v0, Lcom/android/camera/module/OneModuleConfig;

    .line 121
    invoke-static {v4}, Lcom/android/camera/util/AspectRatio;->of(Lcom/android/camera/util/Size;)Lcom/android/camera/util/AspectRatio;

    move-result-object v3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/OneModuleConfig;-><init>(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/util/AspectRatio;Lcom/android/camera/util/Size;Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)V

    .line 124
    iget-object v1, p0, Lcom/android/camera/module/ImageConfigSelector;->trace:Lcom/android/camera/debug/trace/Trace;

    invoke-interface {v1}, Lcom/android/camera/debug/trace/Trace;->stop()V

    .line 125
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
