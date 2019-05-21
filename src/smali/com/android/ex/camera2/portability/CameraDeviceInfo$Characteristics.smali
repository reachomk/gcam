.class public abstract Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.super Ljava/lang/Object;
.source "CameraDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Characteristics"
.end annotation


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "CamDvcInfChar"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPreviewOrientation(I)I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getRelativeImageOrientation(IZ)I

    move-result v0

    return v0
.end method

.method protected final getRelativeImageOrientation(IZ)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 125
    .line 1199
    rem-int/lit8 v1, p1, 0x5a

    if-eqz v1, :cond_1

    .line 1200
    sget-object v1, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "Provided display orientation is not divisible by 90"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    move v1, v0

    .line 125
    :goto_0
    if-nez v1, :cond_4

    .line 140
    :cond_0
    :goto_1
    return v0

    .line 1203
    :cond_1
    if-ltz p1, :cond_2

    const/16 v1, 0x10e

    if-le p1, v1, :cond_3

    .line 1204
    :cond_2
    sget-object v1, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "Provided display orientation is outside expected range"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    move v1, v0

    .line 1205
    goto :goto_0

    .line 1207
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 131
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    .line 132
    if-eqz p2, :cond_0

    .line 133
    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingBack()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 136
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 138
    :cond_6
    sget-object v1, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v2, "Camera is facing unhandled direction"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->e(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public abstract getSensorOrientation()I
.end method

.method public abstract isFacingBack()Z
.end method

.method public abstract isFacingFront()Z
.end method
