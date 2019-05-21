.class public final Lcom/android/camera/util/IntentHelper;
.super Ljava/lang/Object;
.source "IntentHelper.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "IntentHelper"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static getGalleryIntent(Landroid/content/Context;)Lcom/google/common/base/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/base/Optional",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    .line 1029
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.apps.photos"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1028
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 49
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 53
    goto :goto_0
.end method

.method public static getTimerDurationSeconds(Landroid/content/Intent;)I
    .locals 4

    .prologue
    const/16 v1, 0x1e

    const/4 v0, 0x3

    .line 102
    const-string v2, "android.intent.extra.TIMER_DURATION_SECONDS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 104
    if-ge v2, v0, :cond_0

    .line 111
    :goto_0
    return v0

    .line 107
    :cond_0
    if-le v2, v1, :cond_1

    move v0, v1

    .line 108
    goto :goto_0

    :cond_1
    move v0, v2

    .line 111
    goto :goto_0
.end method

.method public static getVideoPlayerIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static intentOverridesCameraFacing(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 86
    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAutoTriggerIntent(Lcom/android/camera/util/activity/IntentHandler;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/util/activity/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/android/camera/util/IntentHelper;->isImageCaptureAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1120
    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 1121
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    .line 77
    :goto_0
    if-eqz v2, :cond_3

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/util/activity/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.TIMER_DURATION_SECONDS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_2
    move v2, v1

    .line 1121
    goto :goto_0

    :cond_3
    move v0, v1

    .line 77
    goto :goto_1
.end method

.method public static isCaptureIntent(Lcom/android/camera/util/activity/IntentHandler;)Z
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/camera/util/activity/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-static {v0}, Lcom/android/camera/util/IntentHelper;->isImageCaptureAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 67
    goto :goto_0
.end method

.method private static isImageCaptureAction(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 115
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 116
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 115
    goto :goto_0
.end method

.method public static isIntentForFrontCamera(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 94
    const-string v0, "android.intent.extra.USE_FRONT_CAMERA"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
