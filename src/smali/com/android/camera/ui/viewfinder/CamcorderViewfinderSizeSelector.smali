.class public final Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;
.super Ljava/lang/Object;
.source "CamcorderViewfinderSizeSelector.java"


# instance fields
.field private final oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p2}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 28
    iput-object p2, p0, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    .line 29
    return-void
.end method


# virtual methods
.method public final selectViewfinderSize(Lcom/android/camera/util/AspectRatio;Lcom/android/camera/camcorder/CamcorderCaptureRate;Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;)Lcom/android/camera/util/Size;
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p2}, Lcom/android/camera/camcorder/CamcorderCaptureRate;->isSlowMotion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-virtual {p3}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/util/Size;-><init>(Landroid/util/Size;)V

    .line 58
    :goto_0
    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;->oneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/Size;

    .line 53
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->area()J

    move-result-wide v6

    invoke-virtual {p3}, Lcom/google/android/apps/camera/camcorder/CamcorderVideoResolution;->getArea()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_1

    .line 54
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/CamcorderViewfinderSizeSelector;->viewfinderSizeSelector:Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;

    invoke-virtual {v0, v3, p1, v2, v1}, Lcom/android/camera/ui/viewfinder/ViewfinderSizeSelector;->selectViewfinderSize(Ljava/util/List;Lcom/android/camera/util/AspectRatio;Lcom/android/camera/one/OneCamera$Facing;Z)Lcom/android/camera/util/Size;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
