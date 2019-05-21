.class public final Lcom/google/android/apps/camera/device/CameraId;
.super Ljava/lang/Object;
.source "CameraId.java"


# instance fields
.field private final cameraId:Ljava/lang/String;

.field private final legacyCameraId:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/apps/camera/device/CameraId;->cameraId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/google/android/apps/camera/device/CameraId;->legacyCameraId:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method private static computeLegacyIdFromCamera2Id(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static from(Ljava/lang/String;)Lcom/google/android/apps/camera/device/CameraId;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcom/google/android/apps/camera/device/CameraId;

    invoke-static {p0}, Lcom/google/android/apps/camera/device/CameraId;->computeLegacyIdFromCamera2Id(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/camera/device/CameraId;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static fromLegacyId(I)Lcom/google/android/apps/camera/device/CameraId;
    .locals 3

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/apps/camera/device/CameraId;

    .line 1041
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/camera/device/CameraId;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 81
    if-ne p0, p1, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 84
    :cond_0
    instance-of v0, p1, Lcom/google/android/apps/camera/device/CameraId;

    if-nez v0, :cond_1

    .line 85
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_1
    check-cast p1, Lcom/google/android/apps/camera/device/CameraId;

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/camera/device/CameraId;->cameraId:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/apps/camera/device/CameraId;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getLegacyValue()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/apps/camera/device/CameraId;->legacyCameraId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 63
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Attempted to access a camera id that is not supported on legacy camera API\'s: "

    iget-object v0, p0, Lcom/google/android/apps/camera/device/CameraId;->cameraId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/camera/device/CameraId;->legacyCameraId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/camera/device/CameraId;->cameraId:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/camera/device/CameraId;->cameraId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/camera/device/CameraId;->cameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/camera/device/CameraId;->legacyCameraId:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CameraId{Api2=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\',Api1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
