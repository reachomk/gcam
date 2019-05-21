.class public final Lcom/android/camera/module/OneModuleConfig;
.super Ljava/lang/Object;
.source "OneModuleConfig.java"


# instance fields
.field private aspectRatio:Lcom/android/camera/util/AspectRatio;

.field public final cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field public final cameraId:Lcom/google/android/apps/camera/device/CameraId;

.field public final captureResolution:Lcom/android/camera/util/Size;

.field public final viewfinderConfig:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/util/AspectRatio;Lcom/android/camera/util/Size;Lcom/android/camera/ui/viewfinder/ViewfinderConfig;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/device/CameraId;

    iput-object v0, p0, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 42
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$Facing;

    iput-object v0, p0, Lcom/android/camera/module/OneModuleConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 43
    invoke-static {p3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/AspectRatio;

    iput-object v0, p0, Lcom/android/camera/module/OneModuleConfig;->aspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 44
    invoke-static {p4}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    iput-object v0, p0, Lcom/android/camera/module/OneModuleConfig;->captureResolution:Lcom/android/camera/util/Size;

    .line 45
    invoke-static {p5}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iput-object v0, p0, Lcom/android/camera/module/OneModuleConfig;->viewfinderConfig:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    .line 46
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/android/camera/module/OneModuleConfig;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    check-cast p1, Lcom/android/camera/module/OneModuleConfig;

    .line 68
    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    iget-object v3, p1, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    iget-object v3, p1, Lcom/android/camera/module/OneModuleConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 69
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->aspectRatio:Lcom/android/camera/util/AspectRatio;

    iget-object v3, p1, Lcom/android/camera/module/OneModuleConfig;->aspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 70
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->captureResolution:Lcom/android/camera/util/Size;

    iget-object v3, p1, Lcom/android/camera/module/OneModuleConfig;->captureResolution:Lcom/android/camera/util/Size;

    .line 71
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->viewfinderConfig:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    iget-object v3, p1, Lcom/android/camera/module/OneModuleConfig;->viewfinderConfig:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    .line 72
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 68
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->aspectRatio:Lcom/android/camera/util/AspectRatio;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->captureResolution:Lcom/android/camera/util/Size;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->viewfinderConfig:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    aput-object v2, v0, v1

    .line 1079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 77
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    const-string v0, "ActiveModuleConfig"

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cameraId"

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->cameraId:Lcom/google/android/apps/camera/device/CameraId;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cameraFacing"

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "aspectRatio"

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->aspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "captureResolution"

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->captureResolution:Lcom/android/camera/util/Size;

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "viewfinderConfig"

    iget-object v2, p0, Lcom/android/camera/module/OneModuleConfig;->viewfinderConfig:Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method
