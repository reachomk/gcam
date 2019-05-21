.class public final Lcom/android/camera/camcorder/media/CamcorderProfileFactoryImpl;
.super Ljava/lang/Object;
.source "CamcorderProfileFactoryImpl.java"

# interfaces
.implements Lcom/android/camera/camcorder/media/CamcorderProfileFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "CdrProfileFact"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public final getHfrProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;)Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;
    .locals 2

    .prologue
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->getValue()I

    move-result v1

    .line 49
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->from(Landroid/media/CamcorderProfile;)Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public final getProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileQuality;)Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;
    .locals 2

    .prologue
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->getValue()I

    move-result v1

    .line 39
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 42
    invoke-static {v0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->from(Landroid/media/CamcorderProfile;)Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;

    move-result-object v0

    .line 43
    return-object v0
.end method

.method public final hasHfrProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;)Z
    .locals 2

    .prologue
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/camcorder/media/CamcorderProfileHfrQuality;->getValue()I

    move-result v1

    .line 32
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    return v0
.end method

.method public final hasProfile(Lcom/google/android/apps/camera/device/CameraId;Lcom/android/camera/camcorder/media/CamcorderProfileQuality;)Z
    .locals 2

    .prologue
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/android/apps/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/camera/camcorder/media/CamcorderProfileQuality;->getValue()I

    move-result v1

    .line 25
    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    return v0
.end method
