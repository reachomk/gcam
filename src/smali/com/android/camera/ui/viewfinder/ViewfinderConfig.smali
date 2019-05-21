.class public final Lcom/android/camera/ui/viewfinder/ViewfinderConfig;
.super Ljava/lang/Object;
.source "ViewfinderConfig.java"


# instance fields
.field private cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field public final viewfinderAspectRatio:Lcom/android/camera/util/AspectRatio;

.field public final viewfinderResolution:Lcom/android/camera/util/Size;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/util/Size;Lcom/android/camera/util/AspectRatio;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 19
    iput-object p2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    .line 20
    iput-object p3, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderAspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 21
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    if-ne p0, p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 38
    goto :goto_0

    .line 40
    :cond_3
    check-cast p1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;

    .line 41
    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    iget-object v3, p1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderAspectRatio:Lcom/android/camera/util/AspectRatio;

    iget-object v3, p1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderAspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 42
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    iget-object v3, p1, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    .line 43
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 41
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderAspectRatio:Lcom/android/camera/util/AspectRatio;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    aput-object v2, v0, v1

    .line 1079
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 48
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    const-string v0, "ViewfinderConfig"

    invoke-static {v0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "cameraFacing"

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->cameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "viewfinderAspectRatio"

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderAspectRatio:Lcom/android/camera/util/AspectRatio;

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "viewfinderResolution"

    iget-object v2, p0, Lcom/android/camera/ui/viewfinder/ViewfinderConfig;->viewfinderResolution:Lcom/android/camera/util/Size;

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    return-object v0
.end method
