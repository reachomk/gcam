.class public Lcom/android/camera/one/v2/common/CommonRequestTransformerModule;
.super Ljava/lang/Object;
.source "CommonRequestTransformerModule.java"

# interfaces
.implements Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/camcorder/camera/AeTargetFpsChooser;"
    }
.end annotation


# instance fields
.field private final camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;


# direct methods
.method public constructor <init>(Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;)V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object p1, p0, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    .line 1027
    return-void
.end method


# virtual methods
.method public getPreviewFpsRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->getVideoCaptureFrameRate()I

    move-result v0

    .line 1032
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public getRecordFpsRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/camera/one/v2/common/CommonRequestTransformerModule;->camcorderVideoEncoderProfile:Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;

    invoke-virtual {v0}, Lcom/android/camera/camcorder/CamcorderVideoEncoderProfile;->getVideoCaptureFrameRate()I

    move-result v0

    .line 1038
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method
