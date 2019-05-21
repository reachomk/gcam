.class final Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;
.super Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.source "AndroidCameraAgentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndroidCharacteristics"
.end annotation


# instance fields
.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;


# direct methods
.method constructor <init>(Landroid/hardware/Camera$CameraInfo;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 204
    return-void
.end method


# virtual methods
.method public final getSensorOrientation()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v0
.end method

.method public final isFacingBack()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFacingFront()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 213
    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
