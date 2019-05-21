.class Lcom/android/camera/stats/UsageStatistics$6;
.super Ljava/lang/Object;
.source "UsageStatistics.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/stats/UsageStatistics;->createLogger(Landroid/content/Context;)Lcom/android/camera/stats/clearcut/GcaClearcutLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field disconnectCount:I

.field final synthetic val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;


# direct methods
.method constructor <init>(Lcom/android/camera/stats/UsageStatistics;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 1

    .prologue
    .line 1368
    iput-object p2, p0, Lcom/android/camera/stats/UsageStatistics$6;->val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1369
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/stats/UsageStatistics$6;->disconnectCount:I

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1373
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GooglePlayServices connected."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .prologue
    .line 1378
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GooglePlayServices connection suspended."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    iget v0, p0, Lcom/android/camera/stats/UsageStatistics$6;->disconnectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/stats/UsageStatistics$6;->disconnectCount:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/android/camera/stats/UsageStatistics$6;->val$googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 1384
    :cond_0
    return-void
.end method
