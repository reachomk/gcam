.class public final Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;
.super Ljava/lang/Object;
.source "PhotoSphereHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/PhotoSphereHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PanoramaViewHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final app:Lcom/android/camera/app/AppController;

.field private googlePlayServicesAvailableResult:I

.field private panoramaClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/AppController;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->googlePlayServicesAvailableResult:I

    .line 71
    iput-object p1, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->app:Lcom/android/camera/app/AppController;

    .line 72
    iput-object p2, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->activity:Landroid/app/Activity;

    .line 73
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .prologue
    .line 131
    invoke-static {}, Lcom/android/camera/util/PhotoSphereHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Connection failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->activity:Landroid/app/Activity;

    const/16 v1, 0x2328

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-static {}, Lcom/android/camera/util/PhotoSphereHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not start resolution"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public final onCreate()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->app:Lcom/android/camera/app/AppController;

    .line 77
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v1, Lcom/google/android/gms/panorama/Panorama;->API:Lcom/google/android/gms/common/api/Api;

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->panoramaClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 80
    return-void
.end method

.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 4

    .prologue
    .line 60
    check-cast p1, Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;

    .line 1157
    invoke-interface {p1}, Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    invoke-interface {p1}, Lcom/google/android/gms/panorama/PanoramaApi$PanoramaResult;->getViewerIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1159
    if-eqz v0, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->app:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->launchActivityByIntent(Landroid/content/Intent;)V

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    invoke-static {}, Lcom/android/camera/util/PhotoSphereHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not load panorama info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onStart()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->app:Lcom/android/camera/app/AppController;

    .line 84
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->googlePlayServicesAvailableResult:I

    .line 85
    iget-object v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->panoramaClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->panoramaClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->panoramaClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 88
    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->panoramaClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->panoramaClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 94
    :cond_0
    return-void
.end method

.method public final showPanorama(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 97
    iget v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->googlePlayServicesAvailableResult:I

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/android/camera/util/PhotoSphereHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->googlePlayServicesAvailableResult:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Play Services not Available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->googlePlayServicesAvailableResult:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 115
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->panoramaClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_1

    .line 103
    invoke-static {}, Lcom/android/camera/util/PhotoSphereHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaClient must not be null after startup"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PanoramaClient must not be null after startup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->panoramaClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-static {}, Lcom/android/camera/util/PhotoSphereHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaClient not available."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x1

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/stats/UsageStatistics;->changeScreen(II)V

    .line 113
    sget-object v0, Lcom/google/android/gms/panorama/Panorama;->PanoramaApi:Lcom/google/android/gms/panorama/PanoramaApi;

    iget-object v1, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->panoramaClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/panorama/PanoramaApi;->loadPanoramaInfoAndGrantAccess(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    goto :goto_0
.end method

.method public final showRgbz(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->app:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/refocus/ViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v1, "image/jpeg"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/android/camera/util/PhotoSphereHelper$PanoramaViewHelper;->app:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->launchActivityByIntent(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
