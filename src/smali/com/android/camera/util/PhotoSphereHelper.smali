.class public final Lcom/android/camera/util/PhotoSphereHelper;
.super Ljava/lang/Object;
.source "PhotoSphereHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;,
        Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;
    }
.end annotation


# static fields
.field public static final NOT_PANORAMA:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    const-string v0, "PhotoSphereHelper"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/PhotoSphereHelper;->TAG:Ljava/lang/String;

    .line 169
    new-instance v0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    invoke-direct {v0}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;-><init>()V

    sput-object v0, Lcom/android/camera/util/PhotoSphereHelper;->NOT_PANORAMA:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/camera/util/PhotoSphereHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getPanoramaMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-static {v0, p1}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getPathFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_0
    if-nez v0, :cond_1

    .line 199
    sget-object v0, Lcom/android/camera/util/PhotoSphereHelper;->NOT_PANORAMA:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    .line 206
    :goto_1
    return-object v0

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {v0}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Ljava/lang/String;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v1

    .line 202
    if-nez v1, :cond_2

    .line 203
    sget-object v0, Lcom/android/camera/util/PhotoSphereHelper;->NOT_PANORAMA:Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    goto :goto_1

    .line 206
    :cond_2
    new-instance v0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;

    invoke-direct {v0, v1}, Lcom/android/camera/util/PhotoSphereHelper$PanoramaMetadata;-><init>(Lcom/google/android/apps/lightcycle/util/PanoMetadata;)V

    goto :goto_1
.end method

.method public static hasLightCycleCapture(Landroid/content/Context;Landroid/hardware/SensorManager;Landroid/app/ActivityManager;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 177
    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "camera:lightcycle_enabled"

    .line 178
    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    .line 180
    if-eqz v2, :cond_1

    .line 1184
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    .line 180
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/android/camera/util/PhotoSphereHelper;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1184
    goto :goto_0

    :cond_1
    move v0, v1

    .line 180
    goto :goto_1
.end method

.method public static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .locals 1

    .prologue
    .line 215
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 218
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
