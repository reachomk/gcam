.class public final Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;
.super Ljava/lang/Object;
.source "PhotoSphereHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/PhotoSphereHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaMetadata"
.end annotation


# instance fields
.field public final isPanorama360:Z

.field public final usePanoramaViewer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->usePanoramaViewer:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->isPanorama360:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/lightcycle/util/PanoMetadata;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v6, 0x43b40000    # 360.0f

    const/high16 v5, 0x428c0000    # 70.0f

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v0, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget v3, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoWidth:I

    int-to-float v3, v3

    div-float v3, v0, v3

    .line 43
    const/high16 v0, 0x43340000    # 180.0f

    iget v4, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->croppedAreaHeight:I

    int-to-float v4, v4

    mul-float/2addr v0, v4

    iget v4, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->fullPanoHeight:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 44
    iget-boolean v4, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->usePanoViewer:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->synthetic:Z

    if-nez v4, :cond_1

    cmpl-float v4, v3, v5

    if-gez v4, :cond_0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->usePanoramaViewer:Z

    .line 48
    iget-boolean v0, p1, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->synthetic:Z

    if-nez v0, :cond_2

    cmpl-float v0, v3, v6

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;->isPanorama360:Z

    .line 49
    return-void

    :cond_1
    move v0, v2

    .line 44
    goto :goto_0

    :cond_2
    move v1, v2

    .line 48
    goto :goto_1
.end method
