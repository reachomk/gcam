.class public final Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;
.super Ljava/lang/Object;
.source "DepthOfFieldOptions.java"


# instance fields
.field public blurInfinity:F

.field public depthOfField:F

.field public focalDepth:F

.field public final rgbz:Lcom/google/android/apps/refocus/image/RGBZ;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/refocus/image/RGBZ;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->focalDepth:F

    .line 29
    iput v0, p0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->depthOfField:F

    .line 30
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->blurInfinity:F

    .line 31
    iput-object p1, p0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/refocus/image/RGBZ;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->focalDepth:F

    .line 44
    iput v0, p0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->depthOfField:F

    .line 45
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->blurInfinity:F

    .line 46
    invoke-static {p1, p2}, Lcom/google/android/apps/refocus/image/RGBZ;->resizeIfLarger(Lcom/google/android/apps/refocus/image/RGBZ;I)Lcom/google/android/apps/refocus/image/RGBZ;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/refocus/processing/DepthOfFieldOptions;->rgbz:Lcom/google/android/apps/refocus/image/RGBZ;

    .line 47
    return-void
.end method
