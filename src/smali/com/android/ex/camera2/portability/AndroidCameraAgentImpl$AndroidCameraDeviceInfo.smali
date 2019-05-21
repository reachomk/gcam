.class final Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
.super Ljava/lang/Object;
.source "AndroidCameraAgentImpl.java"

# interfaces
.implements Lcom/android/ex/camera2/portability/CameraDeviceInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AndroidCameraDeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;
    }
.end annotation


# instance fields
.field private final mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

.field private final mFirstBackCameraId:I

.field private final mFirstFrontCameraId:I

.field private final mNumberOfCameras:I


# direct methods
.method private constructor <init>([Landroid/hardware/Camera$CameraInfo;III)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    .line 138
    iput p2, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mNumberOfCameras:I

    .line 139
    iput p3, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstBackCameraId:I

    .line 140
    iput p4, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstFrontCameraId:I

    .line 141
    return-void
.end method

.method public static create()Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;
    .locals 7

    .prologue
    const/4 v0, -0x1

    .line 147
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    .line 148
    new-array v4, v3, [Landroid/hardware/Camera$CameraInfo;

    .line 149
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 150
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v2, v4, v1

    .line 151
    aget-object v2, v4, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl;->access$000()Lcom/android/ex/camera2/portability/debug/Log$Tag;

    move-result-object v1

    const-string v2, "Exception while creating CameraDeviceInfo"

    invoke-static {v1, v2, v0}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    const/4 v0, 0x0

    .line 171
    :goto_1
    return-object v0

    .line 161
    :cond_0
    add-int/lit8 v1, v3, -0x1

    move v2, v0

    :goto_2
    if-ltz v1, :cond_3

    .line 162
    aget-object v5, v4, v1

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_2

    move v0, v1

    .line 161
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 165
    :cond_2
    aget-object v5, v4, v1

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move v2, v1

    .line 166
    goto :goto_3

    .line 171
    :cond_3
    new-instance v1, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;

    invoke-direct {v1, v4, v3, v0, v2}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;-><init>([Landroid/hardware/Camera$CameraInfo;III)V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mCameraInfos:[Landroid/hardware/Camera$CameraInfo;

    aget-object v1, v0, p1

    .line 177
    if-eqz v1, :cond_0

    .line 178
    new-instance v0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo$AndroidCharacteristics;-><init>(Landroid/hardware/Camera$CameraInfo;)V

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFirstBackCameraId()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstBackCameraId:I

    return v0
.end method

.method public final getFirstFrontCameraId()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mFirstFrontCameraId:I

    return v0
.end method

.method public final getNumberOfCameras()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/ex/camera2/portability/AndroidCameraAgentImpl$AndroidCameraDeviceInfo;->mNumberOfCameras:I

    return v0
.end method
