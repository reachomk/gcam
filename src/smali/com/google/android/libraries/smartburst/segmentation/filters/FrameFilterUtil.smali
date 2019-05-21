.class public Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil;
.super Ljava/lang/Object;
.source "FrameFilterUtil.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/smartburst/segmentation/filters/FrameFilterUtil$ScoreComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imagemanagement/frame/RingBufferPolicy;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public discardFrame(Lcom/google/android/apps/camera/proxy/camera2/TotalCaptureResultProxy;)Z
    .locals 1

    .prologue
    .line 1029
    const/4 v0, 0x0

    return v0
.end method
