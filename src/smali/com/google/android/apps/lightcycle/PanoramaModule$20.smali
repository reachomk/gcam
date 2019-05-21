.class final Lcom/google/android/apps/lightcycle/PanoramaModule$20;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/google/android/apps/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/PanoramaModule;->finishCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/camera/util/Callback;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/PanoramaModule;)V
    .locals 0

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$20;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCallback(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1440
    .line 2445
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$20;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$4600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2449
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$20;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$200(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/storage/LocalSessionStorage;->captureSession$9HHMUR9FC5N68SJFD5I2UOR1DLIN4O9FEDIN6SR9DTN2UGR1E1Q7ASJ5ADIN6SR9DTN3M___:Lcom/android/camera/session/StackableSession;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$20;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    .line 2450
    invoke-static {v1}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$1400$51666RRD5TJMURR7DHIIUOBECHP6UQB45TGN0S3J5TM6IPR8EHHNIORCCKNL0OBEDTP62RB19LNM8TBCCKTIIJ33DTMIUOBECHP6UQB45THM2RB5E9GIUOBGE0NK6OBDCLP62GB3EHKNCQBKF51MURJKE9NMOR35E8TG____(Lcom/google/android/apps/lightcycle/PanoramaModule;)Lcom/android/camera/app/AppController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getLocationProvider()Lcom/android/camera/location/LocationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/location/LocationProvider;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 2449
    invoke-interface {v0, v1}, Lcom/android/camera/session/StackableSession;->setLocation(Landroid/location/Location;)V

    .line 2453
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/PanoramaModule$20;->this$0:Lcom/google/android/apps/lightcycle/PanoramaModule;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/PanoramaModule;->access$2600(Lcom/google/android/apps/lightcycle/PanoramaModule;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1440
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
